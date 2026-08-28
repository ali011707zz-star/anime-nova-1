package androidx.fragment.app;

import java.io.Writer;

/* compiled from: LogWriter.java */
/* loaded from: classes.dex */
public final class d0 extends Writer {

    /* renamed from: f, reason: collision with root package name */
    public final String f2192f;

    /* renamed from: g, reason: collision with root package name */
    public StringBuilder f2193g = new StringBuilder(128);

    public d0(String str) {
        this.f2192f = str;
    }

    public final void b() {
        if (this.f2193g.length() > 0) {
            this.f2193g.toString();
            StringBuilder sb2 = this.f2193g;
            sb2.delete(0, sb2.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        b();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        b();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            char c10 = cArr[i10 + i12];
            if (c10 == '\n') {
                b();
            } else {
                this.f2193g.append(c10);
            }
        }
    }
}
