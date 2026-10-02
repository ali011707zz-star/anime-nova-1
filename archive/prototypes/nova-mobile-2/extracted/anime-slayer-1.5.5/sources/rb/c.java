package rb;

import android.content.Context;

/* compiled from: ChangeLogRow.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public boolean f13220a;

    /* renamed from: b, reason: collision with root package name */
    public String f13221b;

    /* renamed from: c, reason: collision with root package name */
    public int f13222c;

    /* renamed from: d, reason: collision with root package name */
    public String f13223d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f13224e;

    /* renamed from: f, reason: collision with root package name */
    public String f13225f;

    /* renamed from: g, reason: collision with root package name */
    public String f13226g;

    /* renamed from: h, reason: collision with root package name */
    public int f13227h;

    public String a() {
        return this.f13226g;
    }

    public String b(Context context) {
        String replaceAll;
        if (context == null) {
            return a();
        }
        int i10 = this.f13227h;
        if (i10 != 1) {
            replaceAll = i10 != 2 ? "" : context.getResources().getString(pb.d.f12211e).replaceAll("\\[", "<").replaceAll("\\]", ">");
        } else {
            replaceAll = context.getResources().getString(pb.d.f12210d).replaceAll("\\[", "<").replaceAll("\\]", ">");
        }
        return replaceAll + " " + this.f13226g;
    }

    public boolean c() {
        return this.f13224e;
    }

    public boolean d() {
        return this.f13220a;
    }

    public void e(String str) {
        if (str != null) {
            str = str.replaceAll("\\[", "<").replaceAll("\\]", ">");
        }
        h(str);
    }

    public void f(boolean z10) {
        this.f13224e = z10;
    }

    public void g(String str) {
        this.f13223d = str;
    }

    public void h(String str) {
        this.f13226g = str;
    }

    public void i(String str) {
        this.f13225f = str;
    }

    public void j(boolean z10) {
        this.f13220a = z10;
    }

    public void k(int i10) {
        this.f13227h = i10;
    }

    public void l(int i10) {
        this.f13222c = i10;
    }

    public void m(String str) {
        this.f13221b = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("header=" + this.f13220a);
        sb2.append(",");
        sb2.append("versionName=" + this.f13221b);
        sb2.append(",");
        sb2.append("versionCode=" + this.f13222c);
        sb2.append(",");
        sb2.append("bulletedList=" + this.f13224e);
        sb2.append(",");
        sb2.append("changeText=" + this.f13226g);
        return sb2.toString();
    }
}
