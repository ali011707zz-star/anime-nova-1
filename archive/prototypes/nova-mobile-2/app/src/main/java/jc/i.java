package jc;

/* compiled from: FunctionReference.java */
/* loaded from: classes2.dex */
public class i extends c implements h, oc.d {

    /* renamed from: m, reason: collision with root package name */
    public final int f9187m;

    /* renamed from: n, reason: collision with root package name */
    public final int f9188n;

    public i(int i10, Object obj) {
        this(i10, obj, null, null, null, 0);
    }

    @Override // jc.c
    public oc.a c() {
        return y.a(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return e().equals(iVar.e()) && h().equals(iVar.h()) && this.f9188n == iVar.f9188n && this.f9187m == iVar.f9187m && l.a(d(), iVar.d()) && l.a(f(), iVar.f());
        }
        if (obj instanceof oc.d) {
            return obj.equals(b());
        }
        return false;
    }

    @Override // jc.h
    public int getArity() {
        return this.f9187m;
    }

    public int hashCode() {
        return (((f() == null ? 0 : f().hashCode() * 31) + e().hashCode()) * 31) + h().hashCode();
    }

    public String toString() {
        oc.a b10 = b();
        if (b10 != this) {
            return b10.toString();
        }
        if ("<init>".equals(e())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + e() + " (Kotlin reflection is not available)";
    }

    public i(int i10, Object obj, Class cls, String str, String str2, int i11) {
        super(obj, cls, str, str2, (i11 & 1) == 1);
        this.f9187m = i10;
        this.f9188n = i11 >> 1;
    }
}
