package j2;

import android.content.Context;
import android.os.Build;
import d2.l;
import d2.m;
import m2.p;

/* compiled from: NetworkMeteredController.java */
/* loaded from: classes.dex */
public class e extends c<i2.b> {

    /* renamed from: e, reason: collision with root package name */
    public static final String f8073e = l.f("NetworkMeteredCtrlr");

    public e(Context context, p2.a aVar) {
        super(k2.g.c(context, aVar).d());
    }

    @Override // j2.c
    public boolean b(p pVar) {
        return pVar.f10836j.b() == m.METERED;
    }

    @Override // j2.c
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean c(i2.b bVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            return (bVar.a() && bVar.b()) ? false : true;
        }
        l.c().a(f8073e, "Metered network constraint is not supported before API 26, only checking for connected state.", new Throwable[0]);
        return !bVar.a();
    }
}
