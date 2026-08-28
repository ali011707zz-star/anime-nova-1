package h9;

/* compiled from: Encoding.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f7468a;

    public b(String str) {
        if (str != null) {
            this.f7468a = str;
            return;
        }
        throw new NullPointerException("name is null");
    }

    public static b b(String str) {
        return new b(str);
    }

    public String a() {
        return this.f7468a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f7468a.equals(((b) obj).f7468a);
        }
        return false;
    }

    public int hashCode() {
        return this.f7468a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.f7468a + "\"}";
    }
}
