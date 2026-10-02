package r;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

/* compiled from: CardViewApi21Impl.java */
/* loaded from: classes.dex */
public class b implements e {
    @Override // r.e
    public void a(d dVar, Context context, ColorStateList colorStateList, float f10, float f11, float f12) {
        dVar.c(new f(colorStateList, f10));
        View a10 = dVar.a();
        a10.setClipToOutline(true);
        a10.setElevation(f11);
        m(dVar, f12);
    }

    @Override // r.e
    public float b(d dVar) {
        return h(dVar) * 2.0f;
    }

    @Override // r.e
    public float c(d dVar) {
        return h(dVar) * 2.0f;
    }

    @Override // r.e
    public void d(d dVar) {
        m(dVar, n(dVar));
    }

    @Override // r.e
    public ColorStateList e(d dVar) {
        return p(dVar).b();
    }

    @Override // r.e
    public void f(d dVar, float f10) {
        p(dVar).h(f10);
    }

    @Override // r.e
    public float g(d dVar) {
        return dVar.a().getElevation();
    }

    @Override // r.e
    public float h(d dVar) {
        return p(dVar).d();
    }

    @Override // r.e
    public void i() {
    }

    @Override // r.e
    public void j(d dVar) {
        if (!dVar.e()) {
            dVar.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float n10 = n(dVar);
        float h10 = h(dVar);
        int ceil = (int) Math.ceil(g.c(n10, h10, dVar.d()));
        int ceil2 = (int) Math.ceil(g.d(n10, h10, dVar.d()));
        dVar.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }

    @Override // r.e
    public void k(d dVar, float f10) {
        dVar.a().setElevation(f10);
    }

    @Override // r.e
    public void l(d dVar) {
        m(dVar, n(dVar));
    }

    @Override // r.e
    public void m(d dVar, float f10) {
        p(dVar).g(f10, dVar.e(), dVar.d());
        j(dVar);
    }

    @Override // r.e
    public float n(d dVar) {
        return p(dVar).c();
    }

    @Override // r.e
    public void o(d dVar, ColorStateList colorStateList) {
        p(dVar).f(colorStateList);
    }

    public final f p(d dVar) {
        return (f) dVar.f();
    }
}
