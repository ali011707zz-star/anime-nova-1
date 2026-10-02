package g2;

import android.content.Context;
import d2.l;
import e2.e;
import m2.p;

/* compiled from: SystemAlarmScheduler.java */
/* loaded from: classes.dex */
public class b implements e {

    /* renamed from: g, reason: collision with root package name */
    public static final String f6762g = l.f("SystemAlarmScheduler");

    /* renamed from: f, reason: collision with root package name */
    public final Context f6763f;

    public b(Context context) {
        this.f6763f = context.getApplicationContext();
    }

    public final void a(p pVar) {
        l.c().a(f6762g, String.format("Scheduling work with workSpecId %s", pVar.f10827a), new Throwable[0]);
        this.f6763f.startService(androidx.work.impl.background.systemalarm.a.f(this.f6763f, pVar.f10827a));
    }

    @Override // e2.e
    public void b(String str) {
        this.f6763f.startService(androidx.work.impl.background.systemalarm.a.g(this.f6763f, str));
    }

    @Override // e2.e
    public boolean e() {
        return true;
    }

    @Override // e2.e
    public void f(p... pVarArr) {
        for (p pVar : pVarArr) {
            a(pVar);
        }
    }
}
