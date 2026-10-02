package jc;

import oc.f;

/* compiled from: MutablePropertyReference1.java */
/* loaded from: classes2.dex */
public abstract class n extends p implements oc.e {
    public n(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, i10);
    }

    @Override // jc.c
    public oc.a c() {
        return y.e(this);
    }

    @Override // ic.l
    public Object invoke(Object obj) {
        return get(obj);
    }

    @Override // oc.f
    public f.a j() {
        return ((oc.e) k()).j();
    }
}
