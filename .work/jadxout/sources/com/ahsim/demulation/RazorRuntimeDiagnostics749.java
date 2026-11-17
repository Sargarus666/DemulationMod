package com.ahsim.demulation;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public final class RazorRuntimeDiagnostics749 {
    private static final int MAX_ERRORS = 12;
    private static final int MAX_EVENTS = 256;
    private static final int MAX_TRACE = 12000;
    private long serial;
    private final ArrayDeque<String> events = new ArrayDeque<>();
    private final ArrayDeque<String> errors = new ArrayDeque<>();

    public synchronized void event(String category, String detail) {
        Locale locale = Locale.ROOT;
        long j = this.serial + 1;
        this.serial = j;
        String entry = String.format(locale, "%06d %s [%s] %s", Long.valueOf(j), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.ROOT).format(new Date()), clean(category, 36), clean(detail, 700));
        this.events.addLast(entry);
        while (this.events.size() > MAX_EVENTS) {
            this.events.removeFirst();
        }
    }

    public synchronized void error(String category, Throwable error) {
        StringWriter sw = new StringWriter();
        if (error != null) {
            error.printStackTrace(new PrintWriter(sw));
        }
        String description = clean(sw.toString(), MAX_TRACE);
        if (description.isEmpty()) {
            description = "Exception object unavailable";
        }
        this.errors.addLast(clean(category, 100) + "\n" + description);
        while (this.errors.size() > 12) {
            this.errors.removeFirst();
        }
        event("ERROR", category + " " + (error == null ? "" : error.getClass().getSimpleName()));
    }

    private static String clean(String value, int limit) {
        return value == null ? "" : value.length() <= limit ? value : value.substring(0, limit) + "...[TRUNCATED]";
    }

    public synchronized String eventText() {
        StringBuilder out;
        out = new StringBuilder();
        Iterator<String> it = this.events.iterator();
        while (it.hasNext()) {
            String line = it.next();
            out.append(line).append('\n');
        }
        return out.toString();
    }

    public synchronized String errorText() {
        StringBuilder out;
        out = new StringBuilder();
        Iterator<String> it = this.errors.iterator();
        while (it.hasNext()) {
            String line = it.next();
            out.append(line).append("\n---\n");
        }
        return out.toString();
    }

    private static void put(ZipOutputStream zip, String name, String value) throws IOException {
        zip.putNextEntry(new ZipEntry(name));
        zip.write(value.getBytes(StandardCharsets.UTF_8));
        zip.closeEntry();
    }

    public File createZip(File folder, String state, String frame) throws IOException {
        if (folder == null) {
            throw new IOException("No diagnostic storage directory");
        }
        if (!folder.isDirectory() && !folder.mkdirs()) {
            throw new IOException("Cannot create diagnostic directory");
        }
        String stamp = new SimpleDateFormat("yyyyMMdd-HHmmss-SSS", Locale.ROOT).format(new Date());
        File zipFile = new File(folder, "demulation_razor_runtime_749_" + stamp + ".zip");
        String capturedEvents = eventText();
        String capturedErrors = errorText();
        try {
            ZipOutputStream zip = new ZipOutputStream(new FileOutputStream(zipFile));
            try {
                put(zip, "README.txt", "Demulation Razor runtime diagnostics 0.4.749\nCreated on user request. No ROM bytes, RAM dump or screenshot is included.\nError messages may mention device paths or file identifiers; review before sharing.\nstate.txt: live activity snapshot; frame.txt: canvas render diagnostics.\nevents.txt: recent selection/render/scheduler actions; errors.txt: exceptions.\n");
                put(zip, "state.txt", clean(state, 30000));
                put(zip, "frame.txt", clean(frame, MAX_TRACE));
                put(zip, "events.txt", capturedEvents);
                put(zip, "errors.txt", capturedErrors);
                zip.close();
                File[] old = folder.listFiles(new FilenameFilter() { // from class: com.ahsim.demulation.RazorRuntimeDiagnostics749$$ExternalSyntheticLambda0
                    @Override // java.io.FilenameFilter
                    public final boolean accept(File file, String str) {
                        return RazorRuntimeDiagnostics749.lambda$createZip$0(file, str);
                    }
                });
                if (old != null && old.length > 6) {
                    Arrays.sort(old, new Comparator() { // from class: com.ahsim.demulation.RazorRuntimeDiagnostics749$$ExternalSyntheticLambda1
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            int compare;
                            compare = Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
                            return compare;
                        }
                    });
                    for (int i = 6; i < old.length; i++) {
                        old[i].delete();
                    }
                }
                return zipFile;
            } finally {
            }
        } catch (IOException ex) {
            zipFile.delete();
            throw ex;
        }
    }

    static /* synthetic */ boolean lambda$createZip$0(File dir, String name) {
        return name.startsWith("demulation_razor_runtime_749_") && name.endsWith(".zip");
    }
}
