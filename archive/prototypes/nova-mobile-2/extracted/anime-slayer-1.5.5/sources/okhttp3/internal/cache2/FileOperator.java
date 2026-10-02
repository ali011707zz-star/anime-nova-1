package okhttp3.internal.cache2;

import cd.f;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes2.dex */
final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        this.fileChannel = fileChannel;
    }

    public void read(long j10, f fVar, long j11) throws IOException {
        if (j11 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j11 > 0) {
            long transferTo = this.fileChannel.transferTo(j10, j11, fVar);
            j10 += transferTo;
            j11 -= transferTo;
        }
    }

    public void write(long j10, f fVar, long j11) throws IOException {
        if (j11 < 0 || j11 > fVar.N0()) {
            throw new IndexOutOfBoundsException();
        }
        long j12 = j10;
        long j13 = j11;
        while (j13 > 0) {
            long transferFrom = this.fileChannel.transferFrom(fVar, j12, j13);
            j12 += transferFrom;
            j13 -= transferFrom;
        }
    }
}
