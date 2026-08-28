package j2;

import android.content.Context;
import android.os.Build;
import d2.m;
import m2.p;

/* compiled from: NetworkConnectedController.java */
/* loaded from: classes.dex */
public class d extends c<i2.b> {
    public d(Context context, p2.a aVar) {
        super(k2.g.c(context, aVar).d());
    }

    @Override // j2.c
    public boolean b(p pVar) {
        return pVar.f10836j.b() == m.CONNECTED;
    }

    @Override // j2.c
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean c(i2.b bVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            return (bVar.a() && bVar.d()) ? false : true;
        }
        return !bVar.a();
    }
}
