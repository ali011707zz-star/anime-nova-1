package com.twitter.sdk.android.core.internal.scribe;

import java.io.File;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public interface EventsStorage {
    void add(byte[] bArr) throws IOException;

    boolean canWorkingFileStore(int i10, int i11);

    void deleteFilesInRollOverDirectory(List<File> list);

    void deleteWorkingFile();

    List<File> getAllFilesInRollOverDirectory();

    List<File> getBatchOfFilesToSend(int i10);

    File getRollOverDirectory();

    File getWorkingDirectory();

    int getWorkingFileUsedSizeInBytes();

    boolean isWorkingFileEmpty();

    void rollOver(String str) throws IOException;
}
