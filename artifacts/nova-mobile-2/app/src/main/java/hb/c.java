package hb;

/* compiled from: ExifInfo.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public int f7489a;

    /* renamed from: b, reason: collision with root package name */
    public int f7490b;

    /* renamed from: c, reason: collision with root package name */
    public int f7491c;

    public c(int i10, int i11, int i12) {
        this.f7489a = i10;
        this.f7490b = i11;
        this.f7491c = i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f7489a == cVar.f7489a && this.f7490b == cVar.f7490b && this.f7491c == cVar.f7491c;
    }

    public int hashCode() {
        return (((this.f7489a * 31) + this.f7490b) * 31) + this.f7491c;
    }
}
