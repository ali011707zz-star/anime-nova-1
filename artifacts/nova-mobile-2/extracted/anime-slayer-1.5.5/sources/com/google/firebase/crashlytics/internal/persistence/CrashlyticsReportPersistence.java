package com.google.firebase.crashlytics.internal.persistence;

import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.ImmutableList;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import com.google.firebase.crashlytics.internal.settings.SettingsDataProvider;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.protocol.HTTP;

/* loaded from: classes.dex */
public class CrashlyticsReportPersistence {
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final File nativeReportsDirectory;
    private final File openSessionsDirectory;
    private final File priorityReportsDirectory;
    private final File reportsDirectory;
    private final SettingsDataProvider settingsDataProvider;
    private static final Charset UTF_8 = Charset.forName(HTTP.UTF_8);
    private static final int EVENT_NAME_LENGTH = 15;
    private static final CrashlyticsReportJsonTransform TRANSFORM = new CrashlyticsReportJsonTransform();
    private static final Comparator<? super File> LATEST_SESSION_ID_FIRST_COMPARATOR = new Comparator() { // from class: ca.e
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int lambda$static$0;
            lambda$static$0 = CrashlyticsReportPersistence.lambda$static$0((File) obj, (File) obj2);
            return lambda$static$0;
        }
    };
    private static final FilenameFilter EVENT_FILE_FILTER = new FilenameFilter() { // from class: ca.d
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean lambda$static$1;
            lambda$static$1 = CrashlyticsReportPersistence.lambda$static$1(file, str);
            return lambda$static$1;
        }
    };

    public CrashlyticsReportPersistence(File file, SettingsDataProvider settingsDataProvider) {
        File file2 = new File(file, "report-persistence");
        this.openSessionsDirectory = new File(file2, "sessions");
        this.priorityReportsDirectory = new File(file2, "priority-reports");
        this.reportsDirectory = new File(file2, "reports");
        this.nativeReportsDirectory = new File(file2, "native-reports");
        this.settingsDataProvider = settingsDataProvider;
    }

    private List<File> capAndGetOpenSessions(final String str) {
        List<File> filesInDirectory = getFilesInDirectory(this.openSessionsDirectory, new FileFilter() { // from class: ca.a
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                boolean lambda$capAndGetOpenSessions$3;
                lambda$capAndGetOpenSessions$3 = CrashlyticsReportPersistence.lambda$capAndGetOpenSessions$3(str, file);
                return lambda$capAndGetOpenSessions$3;
            }
        });
        Collections.sort(filesInDirectory, LATEST_SESSION_ID_FIRST_COMPARATOR);
        if (filesInDirectory.size() <= 8) {
            return filesInDirectory;
        }
        Iterator<File> it2 = filesInDirectory.subList(8, filesInDirectory.size()).iterator();
        while (it2.hasNext()) {
            recursiveDelete(it2.next());
        }
        return filesInDirectory.subList(0, 8);
    }

    private static int capFilesCount(List<File> list, int i10) {
        int size = list.size();
        for (File file : list) {
            if (size <= i10) {
                return size;
            }
            recursiveDelete(file);
            size--;
        }
        return size;
    }

    private void capFinalizedReports() {
        int i10 = this.settingsDataProvider.getSettings().getSessionData().maxCompleteSessionsCount;
        List<File> allFinalizedReportFiles = getAllFinalizedReportFiles();
        int size = allFinalizedReportFiles.size();
        if (size <= i10) {
            return;
        }
        Iterator<File> it2 = allFinalizedReportFiles.subList(i10, size).iterator();
        while (it2.hasNext()) {
            it2.next().delete();
        }
    }

    private static List<File> combineReportFiles(List<File>... listArr) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (List<File> list : listArr) {
            i10 += list.size();
        }
        arrayList.ensureCapacity(i10);
        for (List<File> list2 : listArr) {
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    private static long convertTimestampFromSecondsToMs(long j10) {
        return j10 * 1000;
    }

    private static String generateEventFilename(int i10, boolean z10) {
        return "event" + String.format(Locale.US, "%010d", Integer.valueOf(i10)) + (z10 ? EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR : "");
    }

    private static List<File> getAllFilesInDirectory(File file) {
        return getFilesInDirectory(file, (FileFilter) null);
    }

    private List<File> getAllFinalizedReportFiles() {
        return sortAndCombineReportFiles(combineReportFiles(getAllFilesInDirectory(this.priorityReportsDirectory), getAllFilesInDirectory(this.nativeReportsDirectory)), getAllFilesInDirectory(this.reportsDirectory));
    }

    private static String getEventNameWithoutPriority(String str) {
        return str.substring(0, EVENT_NAME_LENGTH);
    }

    private static List<File> getFilesInDirectory(File file, FilenameFilter filenameFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = filenameFilter == null ? file.listFiles() : file.listFiles(filenameFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    private File getSessionDirectoryById(String str) {
        return new File(this.openSessionsDirectory, str);
    }

    private static boolean isHighPriorityEventFile(String str) {
        return str.startsWith("event") && str.endsWith(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNormalPriorityEventFile(File file, String str) {
        return str.startsWith("event") && !str.endsWith(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$capAndGetOpenSessions$3(String str, File file) {
        return file.isDirectory() && !file.getName().equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$deleteFinalizedReport$2(String str, File file, String str2) {
        return str2.startsWith(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$0(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$1(File file, String str) {
        return str.startsWith("event");
    }

    private static boolean makeDirectory(File file) {
        return file.exists() || file.mkdirs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int oldestEventFileFirst(File file, File file2) {
        return getEventNameWithoutPriority(file.getName()).compareTo(getEventNameWithoutPriority(file2.getName()));
    }

    private static File prepareDirectory(File file) throws IOException {
        if (makeDirectory(file)) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    private static String readTextFile(File file) throws IOException {
        byte[] bArr = new byte[RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), UTF_8);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        }
    }

    private static void recursiveDelete(File file) {
        if (file == null) {
            return;
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }

    private static List<File> sortAndCombineReportFiles(List<File>... listArr) {
        for (List<File> list : listArr) {
            Collections.sort(list, LATEST_SESSION_ID_FIRST_COMPARATOR);
        }
        return combineReportFiles(listArr);
    }

    private static void synthesizeNativeReportFile(File file, File file2, CrashlyticsReport.FilesPayload filesPayload, String str) {
        try {
            CrashlyticsReportJsonTransform crashlyticsReportJsonTransform = TRANSFORM;
            writeTextFile(new File(prepareDirectory(file2), str), crashlyticsReportJsonTransform.reportToJson(crashlyticsReportJsonTransform.reportFromJson(readTextFile(file)).withNdkPayload(filesPayload)));
        } catch (IOException e10) {
            Logger.getLogger().w("Could not synthesize final native report file for " + file, e10);
        }
    }

    private void synthesizeReport(File file, long j10) {
        boolean z10;
        List<File> filesInDirectory = getFilesInDirectory(file, EVENT_FILE_FILTER);
        if (filesInDirectory.isEmpty()) {
            Logger.getLogger().v("Session " + file.getName() + " has no events.");
            return;
        }
        Collections.sort(filesInDirectory);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z10 = false;
            for (File file2 : filesInDirectory) {
                try {
                    arrayList.add(TRANSFORM.eventFromJson(readTextFile(file2)));
                } catch (IOException e10) {
                    Logger.getLogger().w("Could not add event to report for " + file2, e10);
                }
                if (z10 || isHighPriorityEventFile(file2.getName())) {
                    z10 = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            Logger.getLogger().w("Could not parse event files for session " + file.getName());
            return;
        }
        String str = null;
        File file3 = new File(file, "user");
        if (file3.isFile()) {
            try {
                str = readTextFile(file3);
            } catch (IOException e11) {
                Logger.getLogger().w("Could not read user ID file in " + file.getName(), e11);
            }
        }
        synthesizeReportFile(new File(file, "report"), z10 ? this.priorityReportsDirectory : this.reportsDirectory, arrayList, j10, z10, str);
    }

    private static void synthesizeReportFile(File file, File file2, List<CrashlyticsReport.Session.Event> list, long j10, boolean z10, String str) {
        try {
            CrashlyticsReportJsonTransform crashlyticsReportJsonTransform = TRANSFORM;
            CrashlyticsReport withEvents = crashlyticsReportJsonTransform.reportFromJson(readTextFile(file)).withSessionEndFields(j10, z10, str).withEvents(ImmutableList.from(list));
            CrashlyticsReport.Session session = withEvents.getSession();
            if (session == null) {
                return;
            }
            writeTextFile(new File(prepareDirectory(file2), session.getIdentifier()), crashlyticsReportJsonTransform.reportToJson(withEvents));
        } catch (IOException e10) {
            Logger.getLogger().w("Could not synthesize final report file for " + file, e10);
        }
    }

    private static int trimEvents(File file, int i10) {
        List<File> filesInDirectory = getFilesInDirectory(file, new FilenameFilter() { // from class: ca.c
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str) {
                boolean isNormalPriorityEventFile;
                isNormalPriorityEventFile = CrashlyticsReportPersistence.isNormalPriorityEventFile(file2, str);
                return isNormalPriorityEventFile;
            }
        });
        Collections.sort(filesInDirectory, new Comparator() { // from class: ca.f
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int oldestEventFileFirst;
                oldestEventFileFirst = CrashlyticsReportPersistence.oldestEventFileFirst((File) obj, (File) obj2);
                return oldestEventFileFirst;
            }
        });
        return capFilesCount(filesInDirectory, i10);
    }

    private static void writeTextFile(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), UTF_8);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    public void deleteAllReports() {
        Iterator<File> it2 = getAllFinalizedReportFiles().iterator();
        while (it2.hasNext()) {
            it2.next().delete();
        }
    }

    public void deleteFinalizedReport(final String str) {
        FilenameFilter filenameFilter = new FilenameFilter() { // from class: ca.b
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                boolean lambda$deleteFinalizedReport$2;
                lambda$deleteFinalizedReport$2 = CrashlyticsReportPersistence.lambda$deleteFinalizedReport$2(str, file, str2);
                return lambda$deleteFinalizedReport$2;
            }
        };
        Iterator<File> it2 = combineReportFiles(getFilesInDirectory(this.priorityReportsDirectory, filenameFilter), getFilesInDirectory(this.nativeReportsDirectory, filenameFilter), getFilesInDirectory(this.reportsDirectory, filenameFilter)).iterator();
        while (it2.hasNext()) {
            it2.next().delete();
        }
    }

    public void finalizeReports(String str, long j10) {
        for (File file : capAndGetOpenSessions(str)) {
            Logger.getLogger().v("Finalizing report for session " + file.getName());
            synthesizeReport(file, j10);
            recursiveDelete(file);
        }
        capFinalizedReports();
    }

    public void finalizeSessionWithNativeEvent(String str, CrashlyticsReport.FilesPayload filesPayload) {
        synthesizeNativeReportFile(new File(getSessionDirectoryById(str), "report"), this.nativeReportsDirectory, filesPayload, str);
    }

    public long getStartTimestampMillis(String str) {
        return new File(getSessionDirectoryById(str), "start-time").lastModified();
    }

    public boolean hasFinalizedReports() {
        return !getAllFinalizedReportFiles().isEmpty();
    }

    public List<String> listSortedOpenSessionIds() {
        List<File> allFilesInDirectory = getAllFilesInDirectory(this.openSessionsDirectory);
        Collections.sort(allFilesInDirectory, LATEST_SESSION_ID_FIRST_COMPARATOR);
        ArrayList arrayList = new ArrayList();
        Iterator<File> it2 = allFilesInDirectory.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getName());
        }
        return arrayList;
    }

    public List<CrashlyticsReportWithSessionId> loadFinalizedReports() {
        List<File> allFinalizedReportFiles = getAllFinalizedReportFiles();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(allFinalizedReportFiles.size());
        for (File file : getAllFinalizedReportFiles()) {
            try {
                arrayList.add(CrashlyticsReportWithSessionId.create(TRANSFORM.reportFromJson(readTextFile(file)), file.getName()));
            } catch (IOException e10) {
                Logger.getLogger().w("Could not load report file " + file + "; deleting", e10);
                file.delete();
            }
        }
        return arrayList;
    }

    public void persistEvent(CrashlyticsReport.Session.Event event, String str, boolean z10) {
        int i10 = this.settingsDataProvider.getSettings().getSessionData().maxCustomExceptionEvents;
        File sessionDirectoryById = getSessionDirectoryById(str);
        try {
            writeTextFile(new File(sessionDirectoryById, generateEventFilename(this.eventCounter.getAndIncrement(), z10)), TRANSFORM.eventToJson(event));
        } catch (IOException e10) {
            Logger.getLogger().w("Could not persist event for session " + str, e10);
        }
        trimEvents(sessionDirectoryById, i10);
    }

    public void persistReport(CrashlyticsReport crashlyticsReport) {
        CrashlyticsReport.Session session = crashlyticsReport.getSession();
        if (session == null) {
            Logger.getLogger().d("Could not get session for report");
            return;
        }
        String identifier = session.getIdentifier();
        try {
            File prepareDirectory = prepareDirectory(getSessionDirectoryById(identifier));
            writeTextFile(new File(prepareDirectory, "report"), TRANSFORM.reportToJson(crashlyticsReport));
            writeTextFile(new File(prepareDirectory, "start-time"), "", session.getStartedAt());
        } catch (IOException e10) {
            Logger.getLogger().d("Could not persist report for session " + identifier, e10);
        }
    }

    private static List<File> getFilesInDirectory(File file, FileFilter fileFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    private static void writeTextFile(File file, String str, long j10) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), UTF_8);
        try {
            outputStreamWriter.write(str);
            file.setLastModified(convertTimestampFromSecondsToMs(j10));
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }
}
