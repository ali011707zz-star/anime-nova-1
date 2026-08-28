package m2;

/* compiled from: SystemIdInfo.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public final String f10804a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10805b;

    public g(String str, int i10) {
        this.f10804a = str;
        this.f10805b = i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f10805b != gVar.f10805b) {
            return false;
        }
        return this.f10804a.equals(gVar.f10804a);
    }

    public int hashCode() {
        return (this.f10804a.hashCode() * 31) + this.f10805b;
    }
}
