package l8;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* compiled from: ExceptionCatchingInputStream.java */
/* loaded from: classes.dex */
public class d extends InputStream {

    /* renamed from: h, reason: collision with root package name */
    public static final Queue<d> f10517h = k.f(0);

    /* renamed from: f, reason: collision with root package name */
    public InputStream f10518f;

    /* renamed from: g, reason: collision with root package name */
    public IOException f10519g;

    public static d d(InputStream inputStream) {
        d poll;
        Queue<d> queue = f10517h;
        synchronized (queue) {
            poll = queue.poll();
        }
        if (poll == null) {
            poll = new d();
        }
        poll.h(inputStream);
        return poll;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f10518f.available();
    }

    public IOException b() {
        return this.f10519g;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10518f.close();
    }

    public void h(InputStream inputStream) {
        this.f10518f = inputStream;
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.f10518f.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f10518f.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f10518f.read(bArr);
        } catch (IOException e10) {
            this.f10519g = e10;
            return -1;
        }
    }

    public void release() {
        this.f10519g = null;
        this.f10518f = null;
        Queue<d> queue = f10517h;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.f10518f.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        try {
            return this.f10518f.skip(j10);
        } catch (IOException e10) {
            this.f10519g = e10;
            return 0L;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        try {
            return this.f10518f.read(bArr, i10, i11);
        } catch (IOException e10) {
            this.f10519g = e10;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f10518f.read();
        } catch (IOException e10) {
            this.f10519g = e10;
            return -1;
        }
    }
}
