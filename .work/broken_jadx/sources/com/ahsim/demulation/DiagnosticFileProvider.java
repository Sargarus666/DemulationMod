package com.ahsim.demulation;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public final class DiagnosticFileProvider extends ContentProvider {
    private static final String EXTERNAL = "external";
    private static final String INTERNAL = "internal";

    public static Uri uriForFile(Context context, File file) throws IOException {
        if (context == null || file == null) {
            throw new FileNotFoundException("Missing diagnostic file");
        }
        File canonical = file.getCanonicalFile();
        File external = context.getExternalFilesDir("diagnostics");
        if (external != null && isInside(canonical, external.getCanonicalFile())) {
            return new Uri.Builder().scheme("content").authority(context.getPackageName() + ".diagnostics").appendPath(EXTERNAL).appendPath(canonical.getName()).build();
        }
        File internal = new File(context.getFilesDir(), "diagnostic_exports").getCanonicalFile();
        if (isInside(canonical, internal)) {
            return new Uri.Builder().scheme("content").authority(context.getPackageName() + ".diagnostics").appendPath(INTERNAL).appendPath(canonical.getName()).build();
        }
        throw new FileNotFoundException("Diagnostic file is outside share roots");
    }

    private static boolean isInside(File file, File root) throws IOException {
        String fp = file.getCanonicalPath();
        String rp = root.getCanonicalPath();
        return fp.equals(rp) || fp.startsWith(new StringBuilder().append(rp).append(File.separator).toString());
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    private File resolve(Uri uri) throws FileNotFoundException {
        File root;
        Context context = getContext();
        if (context == null || uri == null) {
            throw new FileNotFoundException("No provider context");
        }
        List<String> parts = uri.getPathSegments();
        if (parts.size() != 2) {
            throw new FileNotFoundException("Invalid diagnostic URI");
        }
        String rootKind = parts.get(0);
        String name = parts.get(1);
        if (name.isEmpty() || name.contains("/") || name.contains("\\") || name.contains("..")) {
            throw new FileNotFoundException("Invalid file name");
        }
        if (EXTERNAL.equals(rootKind)) {
            root = context.getExternalFilesDir("diagnostics");
            if (root == null) {
                throw new FileNotFoundException("External diagnostics unavailable");
            }
        } else if (INTERNAL.equals(rootKind)) {
            root = new File(context.getFilesDir(), "diagnostic_exports");
        } else {
            throw new FileNotFoundException("Unknown diagnostic root");
        }
        try {
            File canonicalRoot = root.getCanonicalFile();
            File file = new File(canonicalRoot, name).getCanonicalFile();
            if (!isInside(file, canonicalRoot) || !file.isFile()) {
                throw new FileNotFoundException(name);
            }
            return file;
        } catch (IOException e) {
            FileNotFoundException f = new FileNotFoundException(e.getMessage());
            f.initCause(e);
            throw f;
        }
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "application/zip";
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        if (mode == null || !"r".equals(mode)) {
            throw new FileNotFoundException("Read-only provider");
        }
        return ParcelFileDescriptor.open(resolve(uri), 268435456);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        try {
            File file = resolve(uri);
            String[] columns = projection != null ? projection : new String[]{"_display_name", "_size"};
            MatrixCursor cursor = new MatrixCursor(columns, 1);
            Object[] row = new Object[columns.length];
            for (int i = 0; i < columns.length; i++) {
                if ("_display_name".equals(columns[i])) {
                    row[i] = file.getName();
                } else if ("_size".equals(columns[i])) {
                    row[i] = Long.valueOf(file.length());
                } else {
                    row[i] = null;
                }
            }
            cursor.addRow(row);
            return cursor;
        } catch (FileNotFoundException e) {
            return new MatrixCursor(projection != null ? projection : new String[0], 0);
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }
}
