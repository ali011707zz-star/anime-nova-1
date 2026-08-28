package okhttp3.internal.cache2;

import cd.c0;
import cd.d0;
import cd.f;
import cd.i;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import okhttp3.internal.Util;

/* loaded from: classes2.dex */
final class Relay {
    private static final long FILE_HEADER_SIZE = 32;
    public static final i PREFIX_CLEAN = i.g("OkHttp cache v1\n");
    public static final i PREFIX_DIRTY = i.g("OkHttp DIRTY :(\n");
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    public final long bufferMaxSize;
    public boolean complete;
    public RandomAccessFile file;
    private final i metadata;
    public int sourceCount;
    public c0 upstream;
    public long upstreamPos;
    public Thread upstreamReader;
    public final f upstreamBuffer = new f();
    public final f buffer = new f();

    /* loaded from: classes2.dex */
    public class RelaySource implements c0 {
        private FileOperator fileOperator;
        private long sourcePos;
        private final d0 timeout = new d0();

        public RelaySource() {
            this.fileOperator = new FileOperator(Relay.this.file.getChannel());
        }

        @Override // cd.c0, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.fileOperator == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.fileOperator = null;
            synchronized (Relay.this) {
                Relay relay = Relay.this;
                int i10 = relay.sourceCount - 1;
                relay.sourceCount = i10;
                if (i10 == 0) {
                    RandomAccessFile randomAccessFile2 = relay.file;
                    relay.file = null;
                    randomAccessFile = randomAccessFile2;
                }
            }
            if (randomAccessFile != null) {
                Util.closeQuietly(randomAccessFile);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
        
            if (r0 != 2) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
        
            r2 = java.lang.Math.min(r23, r7 - r21.sourcePos);
            r21.fileOperator.read(r21.sourcePos + okhttp3.internal.cache2.Relay.FILE_HEADER_SIZE, r22, r2);
            r21.sourcePos += r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
        
            return r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x005f, code lost:
        
            r0 = r21.this$0;
            r12 = r0.upstream.read(r0.upstreamBuffer, r0.bufferMaxSize);
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x006d, code lost:
        
            if (r12 != (-1)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x006f, code lost:
        
            r21.this$0.commit(r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0074, code lost:
        
            r2 = r21.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0076, code lost:
        
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
        
            r0 = r21.this$0;
            r0.upstreamReader = null;
            r0.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x007e, code lost:
        
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x007f, code lost:
        
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0083, code lost:
        
            r2 = java.lang.Math.min(r12, r23);
            r21.this$0.upstreamBuffer.x(r22, 0, r2);
            r21.sourcePos += r2;
            r21.fileOperator.write(r7 + okhttp3.internal.cache2.Relay.FILE_HEADER_SIZE, r21.this$0.upstreamBuffer.clone(), r12);
            r4 = r21.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00ac, code lost:
        
            monitor-enter(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00ad, code lost:
        
            r0 = r21.this$0;
            r0.buffer.write(r0.upstreamBuffer, r12);
            r7 = r21.this$0.buffer.N0();
            r0 = r21.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00c4, code lost:
        
            if (r7 <= r0.bufferMaxSize) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00c6, code lost:
        
            r0 = r0.buffer;
            r0.a(r0.N0() - r21.this$0.bufferMaxSize);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00d4, code lost:
        
            r5 = r21.this$0;
            r5.upstreamPos += r12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00db, code lost:
        
            monitor-exit(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00dc, code lost:
        
            monitor-enter(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00dd, code lost:
        
            r0 = r21.this$0;
            r0.upstreamReader = null;
            r0.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00e4, code lost:
        
            monitor-exit(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00e5, code lost:
        
            return r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00ec, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00ef, code lost:
        
            monitor-enter(r21.this$0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00f0, code lost:
        
            r3 = r21.this$0;
            r3.upstreamReader = null;
            r3.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00f8, code lost:
        
            throw r0;
         */
        @Override // cd.c0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public long read(f fVar, long j10) throws IOException {
            char c10;
            if (this.fileOperator != null) {
                synchronized (Relay.this) {
                    while (true) {
                        long j11 = this.sourcePos;
                        Relay relay = Relay.this;
                        long j12 = relay.upstreamPos;
                        if (j11 == j12) {
                            if (!relay.complete) {
                                if (relay.upstreamReader != null) {
                                    this.timeout.waitUntilNotified(relay);
                                } else {
                                    relay.upstreamReader = Thread.currentThread();
                                    c10 = 1;
                                    break;
                                }
                            } else {
                                return -1L;
                            }
                        } else {
                            long N0 = j12 - relay.buffer.N0();
                            long j13 = this.sourcePos;
                            if (j13 >= N0) {
                                long min = Math.min(j10, j12 - j13);
                                Relay.this.buffer.x(fVar, this.sourcePos - N0, min);
                                this.sourcePos += min;
                                return min;
                            }
                            c10 = 2;
                        }
                    }
                }
            } else {
                throw new IllegalStateException("closed");
            }
        }

        @Override // cd.c0
        public d0 timeout() {
            return this.timeout;
        }
    }

    private Relay(RandomAccessFile randomAccessFile, c0 c0Var, long j10, i iVar, long j11) {
        this.file = randomAccessFile;
        this.upstream = c0Var;
        this.complete = c0Var == null;
        this.upstreamPos = j10;
        this.metadata = iVar;
        this.bufferMaxSize = j11;
    }

    public static Relay edit(File file, c0 c0Var, i iVar, long j10) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        Relay relay = new Relay(randomAccessFile, c0Var, 0L, iVar, j10);
        randomAccessFile.setLength(0L);
        relay.writeHeader(PREFIX_DIRTY, -1L, -1L);
        return relay;
    }

    public static Relay read(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        FileOperator fileOperator = new FileOperator(randomAccessFile.getChannel());
        f fVar = new f();
        fileOperator.read(0L, fVar, FILE_HEADER_SIZE);
        if (fVar.r(r2.y()).equals(PREFIX_CLEAN)) {
            long readLong = fVar.readLong();
            long readLong2 = fVar.readLong();
            f fVar2 = new f();
            fileOperator.read(readLong + FILE_HEADER_SIZE, fVar2, readLong2);
            return new Relay(randomAccessFile, null, readLong, fVar2.w0(), 0L);
        }
        throw new IOException("unreadable cache file");
    }

    private void writeHeader(i iVar, long j10, long j11) throws IOException {
        f fVar = new f();
        fVar.B(iVar);
        fVar.Y0(j10);
        fVar.Y0(j11);
        if (fVar.N0() == FILE_HEADER_SIZE) {
            new FileOperator(this.file.getChannel()).write(0L, fVar, FILE_HEADER_SIZE);
            return;
        }
        throw new IllegalArgumentException();
    }

    private void writeMetadata(long j10) throws IOException {
        f fVar = new f();
        fVar.B(this.metadata);
        new FileOperator(this.file.getChannel()).write(FILE_HEADER_SIZE + j10, fVar, this.metadata.y());
    }

    public void commit(long j10) throws IOException {
        writeMetadata(j10);
        this.file.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j10, this.metadata.y());
        this.file.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
        }
        Util.closeQuietly(this.upstream);
        this.upstream = null;
    }

    public boolean isClosed() {
        return this.file == null;
    }

    public i metadata() {
        return this.metadata;
    }

    public c0 newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource();
        }
    }
}
