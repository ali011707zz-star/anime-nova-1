package j2;

import android.content.Context;
import d2.m;
import m2.p;

/* compiled from: NetworkUnmeteredController.java */
/* loaded from: classes.dex */
public class g extends c<i2.b> {
    public g(Context context, p2.a aVar) {
        super(k2.g.c(context, aVar).d());
    }

    @Override // j2.c
    public boolean b(p pVar) {
        return pVar.f10836j.b() == m.UNMETERED;
    }

    @Override // j2.c
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean c(i2.b bVar) {
        return !bVar.a() || bVar.b();
    }
}
