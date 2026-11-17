package com.ahsim.demulation;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class RazorGameRomStore {
    private static final String KEY_NAME = "source_name";
    private static final String KEY_SHA = "verified_sha256";
    private static final String KEY_URI = "source_uri";
    private static final String PREFS = "razor_native_game_rom_v554";

    private RazorGameRomStore() {
    }

    public static final class Entry {
        public final String name;
        public final String sha256;
        public final Uri uri;

        Entry(Uri uri, String name, String sha256) {
            this.uri = uri;
            this.name = name;
            this.sha256 = sha256;
        }
    }

    private static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, 0);
    }

    public static Entry load(Context c) {
        String raw = prefs(c).getString(KEY_URI, null);
        if (raw == null) {
            return null;
        }
        try {
            Uri uri = Uri.parse(raw);
            InputStream in = c.getContentResolver().openInputStream(uri);
            if (in != null) {
                try {
                    if (in.read() >= 0) {
                        if (in != null) {
                            in.close();
                        }
                        return new Entry(uri, prefs(c).getString(KEY_NAME, "ROM"), prefs(c).getString(KEY_SHA, ""));
                    }
                } finally {
                }
            }
            throw new IOException("ROM is no longer readable");
        } catch (IOException | RuntimeException e) {
            clear(c);
            return null;
        }
    }

    public static Entry persist(Context c, Uri uri, int flags) throws IOException {
        Uri uri2;
        if (uri == null) {
            throw new IOException("ROM URI missing");
        }
        ContentResolver resolver = c.getContentResolver();
        if ((flags & 1) == 0) {
            throw new IOException("ROM read permission missing");
        }
        try {
            resolver.takePersistableUriPermission(uri, 1);
            String name = "ROM";
            try {
                uri2 = uri;
                try {
                    Cursor cursor = resolver.query(uri2, new String[]{"_display_name"}, null, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst() && !cursor.isNull(0)) {
                                name = cursor.getString(0);
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
                uri2 = uri;
            }
            try {
                InputStream in = resolver.openInputStream(uri2);
                if (in != null) {
                    try {
                        if (in.read() >= 0) {
                            if (in != null) {
                                in.close();
                            }
                            Uri previous = storedUri(c);
                            if (!prefs(c).edit().putString(KEY_URI, uri2.toString()).putString(KEY_NAME, name).remove(KEY_SHA).commit()) {
                                throw new IOException("Could not persist Razor ROM selection");
                            }
                            if (previous != null && !previous.equals(uri2)) {
                                safeReleaseIfUnreferenced(c, previous);
                            }
                            return new Entry(uri2, name, "");
                        }
                    } finally {
                    }
                }
                throw new IOException("ROM file is empty or inaccessible");
            } catch (SecurityException e3) {
                throw new IOException("ROM access denied", e3);
            }
        } catch (SecurityException e4) {
            throw new IOException("Select a ROM provider granting persistent read access", e4);
        }
    }

    public static void recordFingerprint(Context c, Entry expected, String sha) throws IOException {
        if (expected == null || sha == null || !sha.matches("[a-f0-9]{64}")) {
            throw new IOException("Invalid Razor source fingerprint");
        }
        if (!expected.uri.toString().equals(prefs(c).getString(KEY_URI, null))) {
            throw new IOException("ROM selection changed during audit");
        }
        if (!prefs(c).edit().putString(KEY_SHA, sha).commit()) {
            throw new IOException("Failed to store Razor fingerprint");
        }
    }

    static boolean referencesUri(Context c, Uri uri) {
        return uri != null && uri.equals(storedUri(c));
    }

    private static Uri storedUri(Context c) {
        String raw = prefs(c).getString(KEY_URI, null);
        if (raw == null) {
            return null;
        }
        try {
            return Uri.parse(raw);
        } catch (RuntimeException e) {
            return null;
        }
    }

    private static void safeReleaseIfUnreferenced(Context c, Uri uri) {
        if (uri == null || referencesUri(c, uri) || RomSelectionStore.isUriReferenced(c, uri)) {
            return;
        }
        try {
            c.getContentResolver().releasePersistableUriPermission(uri, 1);
        } catch (SecurityException e) {
        }
    }

    public static void clear(Context c) {
        Uri previous = storedUri(c);
        prefs(c).edit().clear().commit();
        safeReleaseIfUnreferenced(c, previous);
    }
}
