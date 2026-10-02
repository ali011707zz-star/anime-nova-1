package e2;

import android.os.Handler;
import android.os.Looper;
import d2.s;

/* compiled from: DefaultRunnableScheduler.java */
/* loaded from: classes.dex */
public class a implements s {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f5927a = m0.f.a(Looper.getMainLooper());

    @Override // d2.s
    public void a(long j10, Runnable runnable) {
        this.f5927a.postDelayed(runnable, j10);
    }

    @Override // d2.s
    public void b(Runnable runnable) {
        this.f5927a.removeCallbacks(runnable);
    }
}
