package com.google.firebase.crashlytics.internal.log;

import androidx.recyclerview.widget.RecyclerView;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class QueueFile implements Closeable {
    private static final Logger LOGGER = Logger.getLogger(QueueFile.class.getName());
    private final byte[] buffer = new byte[16];
    private int elementCount;
    public int fileLength;
    private Element first;
    private Element last;
    private final RandomAccessFile raf;

    /* loaded from: classes.dex */
    public static class Element {
        public static final Element NULL = new Element(0, 0);
        public final int length;
        public final int position;

        public Element(int i10, int i11) {
            this.position = i10;
            this.length = i11;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.position + ", length = " + this.length + "]";
        }
    }

    /* loaded from: classes.dex */
    public final class ElementInputStream extends InputStream {
        private int position;
        private int remaining;

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            QueueFile.nonNull(bArr, "buffer");
            if ((i10 | i11) >= 0 && i11 <= bArr.length - i10) {
                int i12 = this.remaining;
                if (i12 <= 0) {
                    return -1;
                }
                if (i11 > i12) {
                    i11 = i12;
                }
                QueueFile.this.ringRead(this.position, bArr, i10, i11);
                this.position = QueueFile.this.wrapPosition(this.position + i11);
                this.remaining -= i11;
                return i11;
            }
            throw new ArrayIndexOutOfBoundsException();
        }

        private ElementInputStream(Element element) {
            this.position = QueueFile.this.wrapPosition(element.position + 4);
            this.remaining = element.length;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.remaining == 0) {
                return -1;
            }
            QueueFile.this.raf.seek(this.position);
            int read = QueueFile.this.raf.read();
            this.position = QueueFile.this.wrapPosition(this.position + 1);
            this.remaining--;
            return read;
        }
    }

    /* loaded from: classes.dex */
    public interface ElementReader {
        void read(InputStream inputStream, int i10) throws IOException;
    }

    public QueueFile(File file) throws IOException {
        if (!file.exists()) {
            initialize(file);
        }
        this.raf = open(file);
        readHeader();
    }

    private void expandIfNecessary(int i10) throws IOException {
        int i11 = i10 + 4;
        int remainingBytes = remainingBytes();
        if (remainingBytes >= i11) {
            return;
        }
        int i12 = this.fileLength;
        do {
            remainingBytes += i12;
            i12 <<= 1;
        } while (remainingBytes < i11);
        setLength(i12);
        Element element = this.last;
        int wrapPosition = wrapPosition(element.position + 4 + element.length);
        if (wrapPosition < this.first.position) {
            FileChannel channel = this.raf.getChannel();
            channel.position(this.fileLength);
            long j10 = wrapPosition - 4;
            if (channel.transferTo(16L, j10, channel) != j10) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i13 = this.last.position;
        int i14 = this.first.position;
        if (i13 < i14) {
            int i15 = (this.fileLength + i13) - 16;
            writeHeader(i12, this.elementCount, i14, i15);
            this.last = new Element(i15, this.last.length);
        } else {
            writeHeader(i12, this.elementCount, i14, i13);
        }
        this.fileLength = i12;
    }

    private static void initialize(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile open = open(file2);
        try {
            open.setLength(4096L);
            open.seek(0L);
            byte[] bArr = new byte[16];
            writeInts(bArr, RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT, 0, 0, 0);
            open.write(bArr);
            open.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            open.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T nonNull(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str);
    }

    private static RandomAccessFile open(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    private Element readElement(int i10) throws IOException {
        if (i10 == 0) {
            return Element.NULL;
        }
        this.raf.seek(i10);
        return new Element(i10, this.raf.readInt());
    }

    private void readHeader() throws IOException {
        this.raf.seek(0L);
        this.raf.readFully(this.buffer);
        int readInt = readInt(this.buffer, 0);
        this.fileLength = readInt;
        if (readInt <= this.raf.length()) {
            this.elementCount = readInt(this.buffer, 4);
            int readInt2 = readInt(this.buffer, 8);
            int readInt3 = readInt(this.buffer, 12);
            this.first = readElement(readInt2);
            this.last = readElement(readInt3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.fileLength + ", Actual length: " + this.raf.length());
    }

    private static int readInt(byte[] bArr, int i10) {
        return ((bArr[i10] & 255) << 24) + ((bArr[i10 + 1] & 255) << 16) + ((bArr[i10 + 2] & 255) << 8) + (bArr[i10 + 3] & 255);
    }

    private int remainingBytes() {
        return this.fileLength - usedBytes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ringRead(int i10, byte[] bArr, int i11, int i12) throws IOException {
        int wrapPosition = wrapPosition(i10);
        int i13 = wrapPosition + i12;
        int i14 = this.fileLength;
        if (i13 <= i14) {
            this.raf.seek(wrapPosition);
            this.raf.readFully(bArr, i11, i12);
            return;
        }
        int i15 = i14 - wrapPosition;
        this.raf.seek(wrapPosition);
        this.raf.readFully(bArr, i11, i15);
        this.raf.seek(16L);
        this.raf.readFully(bArr, i11 + i15, i12 - i15);
    }

    private void ringWrite(int i10, byte[] bArr, int i11, int i12) throws IOException {
        int wrapPosition = wrapPosition(i10);
        int i13 = wrapPosition + i12;
        int i14 = this.fileLength;
        if (i13 <= i14) {
            this.raf.seek(wrapPosition);
            this.raf.write(bArr, i11, i12);
            return;
        }
        int i15 = i14 - wrapPosition;
        this.raf.seek(wrapPosition);
        this.raf.write(bArr, i11, i15);
        this.raf.seek(16L);
        this.raf.write(bArr, i11 + i15, i12 - i15);
    }

    private void setLength(int i10) throws IOException {
        this.raf.setLength(i10);
        this.raf.getChannel().force(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int wrapPosition(int i10) {
        int i11 = this.fileLength;
        return i10 < i11 ? i10 : (i10 + 16) - i11;
    }

    private void writeHeader(int i10, int i11, int i12, int i13) throws IOException {
        writeInts(this.buffer, i10, i11, i12, i13);
        this.raf.seek(0L);
        this.raf.write(this.buffer);
    }

    private static void writeInt(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) (i11 >> 24);
        bArr[i10 + 1] = (byte) (i11 >> 16);
        bArr[i10 + 2] = (byte) (i11 >> 8);
        bArr[i10 + 3] = (byte) i11;
    }

    private static void writeInts(byte[] bArr, int... iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            writeInt(bArr, i10, i11);
            i10 += 4;
        }
    }

    public void add(byte[] bArr) throws IOException {
        add(bArr, 0, bArr.length);
    }

    public synchronized void clear() throws IOException {
        writeHeader(RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT, 0, 0, 0);
        this.elementCount = 0;
        Element element = Element.NULL;
        this.first = element;
        this.last = element;
        if (this.fileLength > 4096) {
            setLength(RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT);
        }
        this.fileLength = RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.raf.close();
    }

    public synchronized void forEach(ElementReader elementReader) throws IOException {
        int i10 = this.first.position;
        for (int i11 = 0; i11 < this.elementCount; i11++) {
            Element readElement = readElement(i10);
            elementReader.read(new ElementInputStream(readElement), readElement.length);
            i10 = wrapPosition(readElement.position + 4 + readElement.length);
        }
    }

    public synchronized boolean isEmpty() {
        return this.elementCount == 0;
    }

    public synchronized void remove() throws IOException {
        if (!isEmpty()) {
            if (this.elementCount == 1) {
                clear();
            } else {
                Element element = this.first;
                int wrapPosition = wrapPosition(element.position + 4 + element.length);
                ringRead(wrapPosition, this.buffer, 0, 4);
                int readInt = readInt(this.buffer, 0);
                writeHeader(this.fileLength, this.elementCount - 1, wrapPosition, this.last.position);
                this.elementCount--;
                this.first = new Element(wrapPosition, readInt);
            }
        } else {
            throw new NoSuchElementException();
        }
    }

    public String toString() {
        final StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append('[');
        sb2.append("fileLength=");
        sb2.append(this.fileLength);
        sb2.append(", size=");
        sb2.append(this.elementCount);
        sb2.append(", first=");
        sb2.append(this.first);
        sb2.append(", last=");
        sb2.append(this.last);
        sb2.append(", element lengths=[");
        try {
            forEach(new ElementReader() { // from class: com.google.firebase.crashlytics.internal.log.QueueFile.1
                public boolean first = true;

                @Override // com.google.firebase.crashlytics.internal.log.QueueFile.ElementReader
                public void read(InputStream inputStream, int i10) throws IOException {
                    if (this.first) {
                        this.first = false;
                    } else {
                        sb2.append(", ");
                    }
                    sb2.append(i10);
                }
            });
        } catch (IOException e10) {
            LOGGER.log(Level.WARNING, "read error", (Throwable) e10);
        }
        sb2.append("]]");
        return sb2.toString();
    }

    public int usedBytes() {
        if (this.elementCount == 0) {
            return 16;
        }
        Element element = this.last;
        int i10 = element.position;
        int i11 = this.first.position;
        if (i10 >= i11) {
            return (i10 - i11) + 4 + element.length + 16;
        }
        return (((i10 + 4) + element.length) + this.fileLength) - i11;
    }

    public synchronized void add(byte[] bArr, int i10, int i11) throws IOException {
        int wrapPosition;
        nonNull(bArr, "buffer");
        if ((i10 | i11) >= 0 && i11 <= bArr.length - i10) {
            expandIfNecessary(i11);
            boolean isEmpty = isEmpty();
            if (isEmpty) {
                wrapPosition = 16;
            } else {
                Element element = this.last;
                wrapPosition = wrapPosition(element.position + 4 + element.length);
            }
            Element element2 = new Element(wrapPosition, i11);
            writeInt(this.buffer, 0, i11);
            ringWrite(element2.position, this.buffer, 0, 4);
            ringWrite(element2.position + 4, bArr, i10, i11);
            writeHeader(this.fileLength, this.elementCount + 1, isEmpty ? element2.position : this.first.position, element2.position);
            this.last = element2;
            this.elementCount++;
            if (isEmpty) {
                this.first = element2;
            }
        } else {
            throw new IndexOutOfBoundsException();
        }
    }
}
