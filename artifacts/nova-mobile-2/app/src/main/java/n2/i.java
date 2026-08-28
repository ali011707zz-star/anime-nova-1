package n2;

import androidx.work.WorkerParameters;

/* compiled from: StartWorkRunnable.java */
/* loaded from: classes.dex */
public class i implements Runnable {

    /* renamed from: f, reason: collision with root package name */
    public e2.i f11213f;

    /* renamed from: g, reason: collision with root package name */
    public String f11214g;

    /* renamed from: h, reason: collision with root package name */
    public WorkerParameters.a f11215h;

    public i(e2.i iVar, String str, WorkerParameters.a aVar) {
        this.f11213f = iVar;
        this.f11214g = str;
        this.f11215h = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f11213f.t().j(this.f11214g, this.f11215h);
    }
}
