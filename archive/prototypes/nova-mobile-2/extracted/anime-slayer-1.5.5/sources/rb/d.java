package rb;

/* compiled from: ChangeLogRowHeader.java */
/* loaded from: classes.dex */
public class d extends c {
    public d() {
        j(true);
        f(false);
        i(null);
    }

    @Override // rb.c
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("header=" + this.f13220a);
        sb2.append(",");
        sb2.append("versionName=" + this.f13221b);
        sb2.append(",");
        sb2.append("changeDate=" + this.f13223d);
        return sb2.toString();
    }
}
