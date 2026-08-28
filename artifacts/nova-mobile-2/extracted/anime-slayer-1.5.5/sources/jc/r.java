package jc;

import oc.f;

/* compiled from: PropertyReference1.java */
/* loaded from: classes2.dex */
public abstract class r extends t implements oc.f {
    public r(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }

    @Override // jc.c
    public oc.a c() {
        return y.f(this);
    }

    @Override // ic.l
    public Object invoke(Object obj) {
        return get(obj);
    }

    @Override // oc.f
    public f.a j() {
        return ((oc.f) k()).j();
    }
}
