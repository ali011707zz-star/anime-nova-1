package jc;

/* compiled from: PropertyReference.java */
/* loaded from: classes2.dex */
public abstract class t extends c implements oc.g {
    public t() {
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            return f().equals(tVar.f()) && e().equals(tVar.e()) && h().equals(tVar.h()) && l.a(d(), tVar.d());
        }
        if (obj instanceof oc.g) {
            return obj.equals(b());
        }
        return false;
    }

    public int hashCode() {
        return (((f().hashCode() * 31) + e().hashCode()) * 31) + h().hashCode();
    }

    public oc.g k() {
        return (oc.g) super.g();
    }

    public String toString() {
        oc.a b10 = b();
        if (b10 != this) {
            return b10.toString();
        }
        return "property " + e() + " (Kotlin reflection is not available)";
    }

    public t(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, (i10 & 1) == 1);
    }
}
