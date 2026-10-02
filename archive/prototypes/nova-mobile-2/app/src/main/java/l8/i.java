package l8;

/* compiled from: MultiClassKey.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    public Class<?> f10529a;

    /* renamed from: b, reason: collision with root package name */
    public Class<?> f10530b;

    /* renamed from: c, reason: collision with root package name */
    public Class<?> f10531c;

    public i() {
    }

    public void a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f10529a = cls;
        this.f10530b = cls2;
        this.f10531c = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f10529a.equals(iVar.f10529a) && this.f10530b.equals(iVar.f10530b) && k.d(this.f10531c, iVar.f10531c);
    }

    public int hashCode() {
        int hashCode = ((this.f10529a.hashCode() * 31) + this.f10530b.hashCode()) * 31;
        Class<?> cls = this.f10531c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f10529a + ", second=" + this.f10530b + '}';
    }

    public i(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        a(cls, cls2, cls3);
    }
}
