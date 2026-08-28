package j3;

/* compiled from: Marker.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: d, reason: collision with root package name */
    public static String f8109d = "\r";

    /* renamed from: a, reason: collision with root package name */
    public final String f8110a;

    /* renamed from: b, reason: collision with root package name */
    public final float f8111b;

    /* renamed from: c, reason: collision with root package name */
    public final float f8112c;

    public h(String str, float f10, float f11) {
        this.f8110a = str;
        this.f8112c = f11;
        this.f8111b = f10;
    }

    public boolean a(String str) {
        if (this.f8110a.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.f8110a.endsWith(f8109d)) {
            String str2 = this.f8110a;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
