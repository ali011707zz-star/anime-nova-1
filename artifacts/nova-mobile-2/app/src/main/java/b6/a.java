package b6;

import jc.l;

/* compiled from: DownloadAdapter.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f3516a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3517b;

    public a(String str, String str2) {
        l.f(str, "fileName");
        l.f(str2, "filePath");
        this.f3516a = str;
        this.f3517b = str2;
    }

    public final String a() {
        return this.f3516a;
    }

    public final String b() {
        return this.f3517b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return l.a(this.f3516a, aVar.f3516a) && l.a(this.f3517b, aVar.f3517b);
    }

    public int hashCode() {
        return (this.f3516a.hashCode() * 31) + this.f3517b.hashCode();
    }

    public String toString() {
        return "Download(fileName=" + this.f3516a + ", filePath=" + this.f3517b + ')';
    }
}
