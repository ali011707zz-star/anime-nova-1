package j2;

import android.content.Context;
import android.os.Build;
import d2.l;
import d2.m;
import m2.p;

/* compiled from: NetworkNotRoamingController.java */
/* loaded from: classes.dex */
public class f extends c<i2.b> {

    /* renamed from: e, reason: collision with root package name */
    public static final String f8074e = l.f("NetworkNotRoamingCtrlr");

    public f(Context context, p2.a aVar) {
        super(k2.g.c(context, aVar).d());
    }

    @Override // j2.c
    public boolean b(p pVar) {
        return pVar.f10836j.b() == m.NOT_ROAMING;
    }

    @Override // j2.c
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean c(i2.b bVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            return (bVar.a() && bVar.c()) ? false : true;
        }
        l.c().a(f8074e, "Not-roaming network constraint is not supported before API 24, only checking for connected state.", new Throwable[0]);
        return !bVar.a();
    }
}
