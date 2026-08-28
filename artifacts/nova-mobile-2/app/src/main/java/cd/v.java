package cd;

import androidx.recyclerview.widget.RecyclerView;
import java.nio.ByteBuffer;

/* compiled from: RealBufferedSink.kt */
/* loaded from: classes2.dex */
public final class v implements g {

    /* renamed from: f, reason: collision with root package name */
    public final f f3946f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3947g;

    /* renamed from: h, reason: collision with root package name */
    public final a0 f3948h;

    public v(a0 a0Var) {
        jc.l.f(a0Var, "sink");
        this.f3948h = a0Var;
        this.f3946f = new f();
    }

    @Override // cd.g
    public g B(i iVar) {
        jc.l.f(iVar, "byteString");
        if (!this.f3947g) {
            this.f3946f.B(iVar);
            return X();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.g
    public g D(int i10) {
        if (!this.f3947g) {
            this.f3946f.D(i10);
            return X();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.g
    public g O(int i10) {
        if (!this.f3947g) {
            this.f3946f.O(i10);
            return X();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.g
    public g X() {
        if (!this.f3947g) {
            long h10 = this.f3946f.h();
            if (h10 > 0) {
                this.f3948h.write(this.f3946f, h10);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.g
    public long Z(c0 c0Var) {
        jc.l.f(c0Var, "source");
        long j10 = 0;
        while (true) {
            long read = c0Var.read(this.f3946f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
            if (read == -1) {
                return j10;
            }
            j10 += read;
            X();
        }
    }

    @Override // cd.g
    public f c() {
        return this.f3946f;
    }

    @Override // cd.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3947g) {
            return;
        }
        Throwable th = null;
        try {
            if (this.f3946f.N0() > 0) {
                a0 a0Var = this.f3948h;
                f fVar = this.f3946f;
                a0Var.write(fVar, fVar.N0());
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f3948h.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f3947g = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // cd.g, cd.a0, java.io.Flushable
    public void flush() {
        if (!this.f3947g) {
            if (this.f3946f.N0() > 0) {
                a0 a0Var = this.f3948h;
                f fVar = this.f3946f;
                a0Var.write(fVar, fVar.N0());
            }
            this.f3948h.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f3947g;
    }

    @Override // cd.g
    public g m(String str, int i10, int i11) {
        jc.l.f(str, "string");
        if (!this.f3947g) {
            this.f3946f.m(str, i10, i11);
            return X();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.g
    public g p(long j10) {
        if (!this.f3947g) {
            this.f3946f.p(j10);
            return X();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.g
    public g t0(String str) {
        jc.l.f(str, "string");
        if (!this.f3947g) {
            this.f3946f.t0(str);
            return X();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.a0
    public d0 timeout() {
        return this.f3948h.timeout();
    }

    public String toString() {
        return "buffer(" + this.f3948h + ')';
    }

    @Override // cd.g
    public g u0(long j10) {
        if (!this.f3947g) {
            this.f3946f.u0(j10);
            return X();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.g
    public g v() {
        if (!this.f3947g) {
            long N0 = this.f3946f.N0();
            if (N0 > 0) {
                this.f3948h.write(this.f3946f, N0);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.g
    public g w(int i10) {
        if (!this.f3947g) {
            this.f3946f.w(i10);
            return X();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        jc.l.f(byteBuffer, "source");
        if (!this.f3947g) {
            int write = this.f3946f.write(byteBuffer);
            X();
            return write;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.a0
    public void write(f fVar, long j10) {
        jc.l.f(fVar, "source");
        if (!this.f3947g) {
            this.f3946f.write(fVar, j10);
            X();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.g
    public g write(byte[] bArr) {
        jc.l.f(bArr, "source");
        if (!this.f3947g) {
            this.f3946f.write(bArr);
            return X();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // cd.g
    public g write(byte[] bArr, int i10, int i11) {
        jc.l.f(bArr, "source");
        if (!this.f3947g) {
            this.f3946f.write(bArr, i10, i11);
            return X();
        }
        throw new IllegalStateException("closed".toString());
    }
}
