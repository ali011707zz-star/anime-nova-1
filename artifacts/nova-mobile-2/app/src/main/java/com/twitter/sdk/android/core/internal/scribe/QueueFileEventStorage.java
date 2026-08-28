package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.twitter.sdk.android.core.internal.CommonUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class QueueFileEventStorage implements EventsStorage {
    private final Context context;
    private QueueFile queueFile;
    private File targetDirectory;
    private final String targetDirectoryName;
    private final File workingDirectory;
    private final File workingFile;

    public QueueFileEventStorage(Context context, File file, String str, String str2) throws IOException {
        this.context = context;
        this.workingDirectory = file;
        this.targetDirectoryName = str2;
        File file2 = new File(file, str);
        this.workingFile = file2;
        this.queueFile = new QueueFile(file2);
        createTargetDirectory();
    }

    private void createTargetDirectory() {
        File file = new File(this.workingDirectory, this.targetDirectoryName);
        this.targetDirectory = file;
        if (file.exists()) {
            return;
        }
        this.targetDirectory.mkdirs();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.Closeable, java.io.FileInputStream, java.io.InputStream] */
    private void move(File file, File file2) throws IOException {
        OutputStream outputStream;
        ?? fileInputStream;
        OutputStream outputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th) {
            th = th;
            outputStream = null;
        }
        try {
            outputStream2 = getMoveOutputStream(file2);
            CommonUtils.copyStream(fileInputStream, outputStream2, new byte[RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE]);
            CommonUtils.closeOrLog(fileInputStream, "Failed to close file input stream");
            CommonUtils.closeOrLog(outputStream2, "Failed to close output stream");
            file.delete();
        } catch (Throwable th2) {
            th = th2;
            outputStream = outputStream2;
            outputStream2 = fileInputStream;
            CommonUtils.closeOrLog(outputStream2, "Failed to close file input stream");
            CommonUtils.closeOrLog(outputStream, "Failed to close output stream");
            file.delete();
            throw th;
        }
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public void add(byte[] bArr) throws IOException {
        this.queueFile.add(bArr);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public boolean canWorkingFileStore(int i10, int i11) {
        return this.queueFile.hasSpaceFor(i10, i11);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public void deleteFilesInRollOverDirectory(List<File> list) {
        for (File file : list) {
            CommonUtils.logControlled(this.context, String.format("deleting sent analytics file %s", file.getName()));
            file.delete();
        }
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public void deleteWorkingFile() {
        try {
            this.queueFile.close();
        } catch (IOException unused) {
        }
        this.workingFile.delete();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public List<File> getAllFilesInRollOverDirectory() {
        return Arrays.asList(this.targetDirectory.listFiles());
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public List<File> getBatchOfFilesToSend(int i10) {
        ArrayList arrayList = new ArrayList();
        for (File file : this.targetDirectory.listFiles()) {
            arrayList.add(file);
            if (arrayList.size() >= i10) {
                break;
            }
        }
        return arrayList;
    }

    public OutputStream getMoveOutputStream(File file) throws IOException {
        return new FileOutputStream(file);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public File getRollOverDirectory() {
        return this.targetDirectory;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public File getWorkingDirectory() {
        return this.workingDirectory;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public int getWorkingFileUsedSizeInBytes() {
        return this.queueFile.usedBytes();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public boolean isWorkingFileEmpty() {
        return this.queueFile.isEmpty();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.EventsStorage
    public void rollOver(String str) throws IOException {
        this.queueFile.close();
        move(this.workingFile, new File(this.targetDirectory, str));
        this.queueFile = new QueueFile(this.workingFile);
    }
}
