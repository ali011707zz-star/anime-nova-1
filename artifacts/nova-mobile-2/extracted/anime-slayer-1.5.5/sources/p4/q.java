package p4;

/* compiled from: Staff.kt */
/* loaded from: classes.dex */
public final class q {
    private final int staff_id;
    private final String staff_image_url;
    private final String staff_language;
    private final String staff_name;
    private final String staff_position;

    public final int a() {
        return this.staff_id;
    }

    public final String b() {
        return this.staff_image_url;
    }

    public final String c() {
        return this.staff_language;
    }

    public final String d() {
        return this.staff_name;
    }

    public final String e() {
        return this.staff_position;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.staff_id == qVar.staff_id && jc.l.a(this.staff_name, qVar.staff_name) && jc.l.a(this.staff_position, qVar.staff_position) && jc.l.a(this.staff_image_url, qVar.staff_image_url) && jc.l.a(this.staff_language, qVar.staff_language);
    }

    public int hashCode() {
        int hashCode = ((this.staff_id * 31) + this.staff_name.hashCode()) * 31;
        String str = this.staff_position;
        int hashCode2 = (((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.staff_image_url.hashCode()) * 31;
        String str2 = this.staff_language;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "Staff(staff_id=" + this.staff_id + ", staff_name=" + this.staff_name + ", staff_position=" + ((Object) this.staff_position) + ", staff_image_url=" + this.staff_image_url + ", staff_language=" + ((Object) this.staff_language) + ')';
    }
}
