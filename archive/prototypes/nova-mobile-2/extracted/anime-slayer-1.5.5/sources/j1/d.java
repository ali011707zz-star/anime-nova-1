package j1;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
import okhttp3.internal.http2.Http2;

/* compiled from: ZipUtil.java */
/* loaded from: classes.dex */
public final class d {

    /* compiled from: ZipUtil.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public long f8067a;

        /* renamed from: b, reason: collision with root package name */
        public long f8068b;
    }

    public static long a(RandomAccessFile randomAccessFile, a aVar) throws IOException {
        CRC32 crc32 = new CRC32();
        long j10 = aVar.f8068b;
        randomAccessFile.seek(aVar.f8067a);
        int min = (int) Math.min(16384L, j10);
        byte[] bArr = new byte[Http2.INITIAL_MAX_FRAME_SIZE];
        int read = randomAccessFile.read(bArr, 0, min);
        while (read != -1) {
            crc32.update(bArr, 0, read);
            j10 -= read;
            if (j10 == 0) {
                break;
            }
            read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j10));
        }
        return crc32.getValue();
    }

    public static a b(RandomAccessFile randomAccessFile) throws IOException, ZipException {
        long length = randomAccessFile.length() - 22;
        if (length >= 0) {
            long j10 = length - 65536;
            long j11 = j10 >= 0 ? j10 : 0L;
            int reverseBytes = Integer.reverseBytes(101010256);
            do {
                randomAccessFile.seek(length);
                if (randomAccessFile.readInt() == reverseBytes) {
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    a aVar = new a();
                    aVar.f8068b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    aVar.f8067a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    return aVar;
                }
                length--;
            } while (length >= j11);
            throw new ZipException("End Of Central Directory signature not found");
        }
        throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
    }

    public static long c(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            return a(randomAccessFile, b(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }
}
