package com.ahsim.demulation;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.UriPermission;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomSelectionStore {
    private static final String KEY_NAME = "display_name";
    private static final String KEY_PROFILE = "profile_id";
    private static final String KEY_SHA256 = "sha256";
    private static final String KEY_SIZE = "size";
    private static final String KEY_URI = "uri";
    private static final String PREFS = "rom_selection";

    public enum SourceRole {
        BASE("base"),
        MEDIA_MOD("media_mod"),
        TRANSLATION("translation"),
        AUDIO_MOD("audio_mod");

        final String token;

        SourceRole(String token) {
            this.token = token;
        }

        public boolean isOverlay() {
            return this != BASE;
        }
    }

    public static final class Selection {
        public final String displayName;
        public final String profileId;
        public final String sha256;
        public final long size;
        public final Uri uri;

        private Selection(Uri uri, String displayName, long size, String sha256, String profileId) {
            this.uri = uri;
            this.displayName = displayName;
            this.size = size;
            this.sha256 = RomSelectionStore.clean(sha256);
            this.profileId = RomSelectionStore.clean(profileId);
        }
    }

    public static final class OverlaySelection {
        public final String displayName;
        public final String profileId;
        public final SourceRole role;
        public final String sha256;
        public final long size;
        public final Uri uri;

        private OverlaySelection(SourceRole role, Uri uri, String displayName, long size, String sha256, String profileId) {
            if (role == null || !role.isOverlay()) {
                throw new IllegalArgumentException("Overlay role required");
            }
            this.role = role;
            this.uri = uri;
            this.displayName = displayName;
            this.size = size;
            this.sha256 = RomSelectionStore.clean(sha256);
            this.profileId = RomSelectionStore.clean(profileId);
        }
    }

    public static final class SourceSetSnapshot {
        public final OverlaySelection audioMod;
        public final Selection base;
        public final OverlaySelection mediaMod;
        public final OverlaySelection translation;

        private SourceSetSnapshot(Selection base, OverlaySelection mediaMod, OverlaySelection translation, OverlaySelection audioMod) {
            this.base = base;
            this.mediaMod = mediaMod;
            this.translation = translation;
            this.audioMod = audioMod;
        }
    }

    private RomSelectionStore() {
    }

    public static Selection persist(Context context, Uri uri, int resultFlags) throws IOException {
        Uri uri2;
        RuntimeException e;
        IOException e2;
        DocumentMetadata metadata;
        if (uri == null) {
            throw new IOException("No document URI returned");
        }
        ContentResolver resolver = context.getContentResolver();
        retainReadableGrant(resolver, uri, resultFlags);
        try {
            metadata = readMetadataAndVerify(resolver, uri);
            uri2 = uri;
        } catch (IOException e3) {
            uri2 = uri;
            e2 = e3;
        } catch (RuntimeException e4) {
            uri2 = uri;
            e = e4;
        }
        try {
            Selection selection = new Selection(uri2, metadata.displayName, metadata.size, "", "");
            SharedPreferences prefs = prefs(context);
            Uri previous = parseUri(prefs.getString(KEY_URI, null));
            boolean saved = prefs.edit().putString(KEY_URI, uri2.toString()).putString(KEY_NAME, selection.displayName).putLong(KEY_SIZE, selection.size).remove(KEY_SHA256).remove(KEY_PROFILE).commit();
            if (!saved) {
                if (previous == null || !previous.equals(uri2)) {
                    releaseIfUnreferenced(context, uri2);
                }
                throw new IOException("Could not save the selected document reference");
            }
            if (previous != null && !previous.equals(uri2)) {
                releaseIfUnreferenced(context, previous);
            }
            return selection;
        } catch (IOException e5) {
            e2 = e5;
            releaseIfUnreferenced(context, uri2);
            throw e2;
        } catch (RuntimeException e6) {
            e = e6;
            releaseIfUnreferenced(context, uri2);
            throw new IOException("Selected document cannot be read", e);
        }
    }

    public static Selection load(Context context) {
        SharedPreferences prefs = prefs(context);
        Uri uri = parseUri(prefs.getString(KEY_URI, null));
        if (uri == null) {
            return null;
        }
        ContentResolver resolver = context.getContentResolver();
        if (!hasPersistedReadPermission(resolver, uri)) {
            clearStoredMetadata(prefs);
            return null;
        }
        try {
            DocumentMetadata refreshed = readMetadataAndVerify(resolver, uri);
            prefs.edit().putString(KEY_NAME, refreshed.displayName).putLong(KEY_SIZE, refreshed.size).apply();
            return new Selection(uri, refreshed.displayName, refreshed.size, prefs.getString(KEY_SHA256, ""), prefs.getString(KEY_PROFILE, ""));
        } catch (Exception e) {
            clear(context);
            return null;
        }
    }

    public static void clear(Context context) {
        SharedPreferences prefs = prefs(context);
        Uri uri = parseUri(prefs.getString(KEY_URI, null));
        clearStoredMetadata(prefs);
        if (uri != null) {
            releaseIfUnreferenced(context, uri);
        }
    }

    public static OverlaySelection persistOverlay(Context context, SourceRole role, Uri uri, int resultFlags) throws IOException {
        requireOverlayRole(role);
        if (uri == null) {
            throw new IOException("No document URI returned");
        }
        ContentResolver resolver = context.getContentResolver();
        retainReadableGrant(resolver, uri, resultFlags);
        try {
            DocumentMetadata metadata = readMetadataAndVerify(resolver, uri);
            SharedPreferences prefs = prefs(context);
            String prefix = role.token + ".";
            Uri previous = parseUri(prefs.getString(prefix + KEY_URI, null));
            boolean saved = prefs.edit().putString(prefix + KEY_URI, uri.toString()).putString(prefix + KEY_NAME, metadata.displayName).putLong(prefix + KEY_SIZE, metadata.size).remove(prefix + KEY_SHA256).remove(prefix + KEY_PROFILE).commit();
            if (!saved) {
                releaseIfUnreferenced(context, uri);
                throw new IOException("Could not save the overlay document reference");
            }
            if (previous != null && !previous.equals(uri)) {
                releaseIfUnreferenced(context, previous);
            }
            return new OverlaySelection(role, uri, metadata.displayName, metadata.size, "", "");
        } catch (IOException e) {
            releaseIfUnreferenced(context, uri);
            throw e;
        } catch (RuntimeException e2) {
            releaseIfUnreferenced(context, uri);
            throw new IOException("Selected overlay document cannot be read", e2);
        }
    }

    public static OverlaySelection loadOverlay(Context context, SourceRole role) {
        requireOverlayRole(role);
        SharedPreferences prefs = prefs(context);
        String prefix = role.token + ".";
        Uri uri = parseUri(prefs.getString(prefix + KEY_URI, null));
        if (uri == null) {
            return null;
        }
        ContentResolver resolver = context.getContentResolver();
        if (!hasPersistedReadPermission(resolver, uri)) {
            clearOverlayMetadata(prefs, role);
            return null;
        }
        try {
            DocumentMetadata refreshed = readMetadataAndVerify(resolver, uri);
            prefs.edit().putString(prefix + KEY_NAME, refreshed.displayName).putLong(prefix + KEY_SIZE, refreshed.size).apply();
            return new OverlaySelection(role, uri, refreshed.displayName, refreshed.size, prefs.getString(prefix + KEY_SHA256, ""), prefs.getString(prefix + KEY_PROFILE, ""));
        } catch (Exception e) {
            clearOverlay(context, role);
            return null;
        }
    }

    public static void clearOverlay(Context context, SourceRole role) {
        requireOverlayRole(role);
        SharedPreferences prefs = prefs(context);
        Uri uri = parseUri(prefs.getString(role.token + "." + KEY_URI, null));
        clearOverlayMetadata(prefs, role);
        if (uri != null) {
            releaseIfUnreferenced(context, uri);
        }
    }

    public static void recordBaseFingerprint(Context context, Selection expected, String sha256, String profileId) throws IOException {
        if (expected == null || expected.uri == null) {
            throw new IOException("BASE selection is unavailable");
        }
        validateSha256(sha256);
        SharedPreferences prefs = prefs(context);
        Uri current = parseUri(prefs.getString(KEY_URI, null));
        if (!expected.uri.equals(current)) {
            throw new IOException("BASE selection changed during analysis");
        }
        if (!prefs.edit().putString(KEY_SHA256, sha256.toLowerCase()).putString(KEY_PROFILE, clean(profileId)).commit()) {
            throw new IOException("Could not save BASE source fingerprint");
        }
    }

    public static void recordOverlayFingerprint(Context context, OverlaySelection expected, String sha256, String profileId) throws IOException {
        if (expected == null || expected.uri == null) {
            throw new IOException("Overlay selection is unavailable");
        }
        requireOverlayRole(expected.role);
        validateSha256(sha256);
        SharedPreferences prefs = prefs(context);
        String prefix = expected.role.token + ".";
        Uri current = parseUri(prefs.getString(prefix + KEY_URI, null));
        if (!expected.uri.equals(current)) {
            throw new IOException("Overlay selection changed during analysis");
        }
        if (!prefs.edit().putString(prefix + KEY_SHA256, sha256.toLowerCase()).putString(prefix + KEY_PROFILE, clean(profileId)).commit()) {
            throw new IOException("Could not save overlay source fingerprint");
        }
    }

    public static SourceSetSnapshot snapshot(Context context) {
        return new SourceSetSnapshot(load(context), loadOverlay(context, SourceRole.MEDIA_MOD), loadOverlay(context, SourceRole.TRANSLATION), loadOverlay(context, SourceRole.AUDIO_MOD));
    }

    private static void retainReadableGrant(ContentResolver resolver, Uri uri, int resultFlags) throws IOException {
        int offered = resultFlags & 1;
        if (offered == 0) {
            throw new IOException("Document provider did not grant read access");
        }
        try {
            resolver.takePersistableUriPermission(uri, 1);
            if (!hasPersistedReadPermission(resolver, uri)) {
                throw new IOException("Persistent read permission was not retained");
            }
        } catch (SecurityException e) {
            throw new IOException("Document provider did not allow persistent access", e);
        }
    }

    private static final class DocumentMetadata {
        final String displayName;
        final long size;

        DocumentMetadata(String displayName, long size) {
            this.displayName = displayName;
            this.size = size;
        }
    }

    private static DocumentMetadata readMetadataAndVerify(ContentResolver resolver, Uri uri) throws IOException {
        ContentResolver resolver2;
        Uri uri2;
        String name = null;
        long size = -1;
        try {
            resolver2 = resolver;
            uri2 = uri;
            try {
                Cursor cursor = resolver2.query(uri2, new String[]{"_display_name", "_size"}, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            int nameIndex = cursor.getColumnIndex("_display_name");
                            int sizeIndex = cursor.getColumnIndex("_size");
                            if (nameIndex >= 0 && !cursor.isNull(nameIndex)) {
                                name = cursor.getString(nameIndex);
                            }
                            if (sizeIndex >= 0 && !cursor.isNull(sizeIndex)) {
                                size = cursor.getLong(sizeIndex);
                            }
                        }
                    } finally {
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (RuntimeException e) {
            }
        } catch (RuntimeException e2) {
            resolver2 = resolver;
            uri2 = uri;
        }
        ParcelFileDescriptor pfd = resolver2.openFileDescriptor(uri2, "r");
        try {
            if (pfd == null) {
                throw new IOException("Document provider returned no readable file descriptor");
            }
            long statSize = pfd.getStatSize();
            if (size < 0 && statSize >= 0) {
                size = statSize;
            }
            if (pfd != null) {
                pfd.close();
            }
            if (name == null || name.trim().isEmpty()) {
                String tail = uri2.getLastPathSegment();
                name = (tail == null || tail.trim().isEmpty()) ? "Selected ROM" : tail;
            }
            if (size == 0) {
                throw new IOException("Selected file is empty");
            }
            return new DocumentMetadata(name, size);
        } finally {
        }
    }

    private static boolean hasPersistedReadPermission(ContentResolver resolver, Uri uri) {
        List<UriPermission> permissions = resolver.getPersistedUriPermissions();
        for (UriPermission permission : permissions) {
            if (uri.equals(permission.getUri()) && permission.isReadPermission()) {
                return true;
            }
        }
        return false;
    }

    private static void releaseIfUnreferenced(Context context, Uri uri) {
        if (uri == null) {
            return;
        }
        SharedPreferences prefs = prefs(context);
        if (isReferenced(prefs, uri) || RazorGameRomStore.referencesUri(context, uri)) {
            return;
        }
        safeRelease(context.getContentResolver(), uri);
    }

    static boolean isUriReferenced(Context context, Uri uri) {
        return uri != null && isReferenced(prefs(context), uri);
    }

    private static boolean isReferenced(SharedPreferences prefs, Uri uri) {
        if (uri.equals(parseUri(prefs.getString(KEY_URI, null)))) {
            return true;
        }
        for (SourceRole role : SourceRole.values()) {
            if (role.isOverlay() && uri.equals(parseUri(prefs.getString(role.token + "." + KEY_URI, null)))) {
                return true;
            }
        }
        return false;
    }

    private static void safeRelease(ContentResolver resolver, Uri uri) {
        try {
            resolver.releasePersistableUriPermission(uri, 1);
        } catch (SecurityException e) {
        }
    }

    private static Uri parseUri(String value) {
        if (value == null || value.trim().isEmpty()) {
            return null;
        }
        try {
            return Uri.parse(value);
        } catch (RuntimeException e) {
            return null;
        }
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(PREFS, 0);
    }

    private static void clearStoredMetadata(SharedPreferences prefs) {
        prefs.edit().remove(KEY_URI).remove(KEY_NAME).remove(KEY_SIZE).remove(KEY_SHA256).remove(KEY_PROFILE).apply();
    }

    private static void clearOverlayMetadata(SharedPreferences prefs, SourceRole role) {
        String prefix = role.token + ".";
        prefs.edit().remove(prefix + KEY_URI).remove(prefix + KEY_NAME).remove(prefix + KEY_SIZE).remove(prefix + KEY_SHA256).remove(prefix + KEY_PROFILE).apply();
    }

    private static void requireOverlayRole(SourceRole role) {
        if (role == null || !role.isOverlay()) {
            throw new IllegalArgumentException("MEDIA_MOD or TRANSLATION role required");
        }
    }

    private static void validateSha256(String sha256) throws IOException {
        String s = clean(sha256);
        if (!s.matches("[0-9A-Fa-f]{64}")) {
            throw new IOException("Invalid SHA-256 fingerprint");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String clean(String value) {
        return value == null ? "" : value.trim();
    }
}
