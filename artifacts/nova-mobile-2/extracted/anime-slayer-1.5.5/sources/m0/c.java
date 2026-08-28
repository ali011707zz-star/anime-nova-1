package m0;

import android.os.Build;
import android.os.CancellationSignal;

/* compiled from: CancellationSignal.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10645a;

    /* renamed from: b, reason: collision with root package name */
    public a f10646b;

    /* renamed from: c, reason: collision with root package name */
    public Object f10647c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10648d;

    /* compiled from: CancellationSignal.java */
    /* loaded from: classes.dex */
    public interface a {
        void onCancel();
    }

    public void a() {
        synchronized (this) {
            if (this.f10645a) {
                return;
            }
            this.f10645a = true;
            this.f10648d = true;
            a aVar = this.f10646b;
            Object obj = this.f10647c;
            if (aVar != null) {
                try {
                    aVar.onCancel();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f10648d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f10648d = false;
                notifyAll();
            }
        }
    }

    public boolean b() {
        boolean z10;
        synchronized (this) {
            z10 = this.f10645a;
        }
        return z10;
    }

    public void c(a aVar) {
        synchronized (this) {
            d();
            if (this.f10646b == aVar) {
                return;
            }
            this.f10646b = aVar;
            if (this.f10645a && aVar != null) {
                aVar.onCancel();
            }
        }
    }

    public final void d() {
        while (this.f10648d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }
}
