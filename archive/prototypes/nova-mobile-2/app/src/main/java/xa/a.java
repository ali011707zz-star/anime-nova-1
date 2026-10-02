package xa;

import android.view.View;
import jc.l;

/* compiled from: MenuItem.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f16241a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f16242b;

    /* renamed from: c, reason: collision with root package name */
    public final View.OnClickListener f16243c;

    public final Integer a() {
        return this.f16242b;
    }

    public final View.OnClickListener b() {
        return this.f16243c;
    }

    public final String c() {
        return this.f16241a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return l.a(this.f16241a, aVar.f16241a) && l.a(this.f16242b, aVar.f16242b) && l.a(this.f16243c, aVar.f16243c);
    }

    public int hashCode() {
        int hashCode = this.f16241a.hashCode() * 31;
        Integer num = this.f16242b;
        return ((hashCode + (num == null ? 0 : num.hashCode())) * 31) + this.f16243c.hashCode();
    }

    public String toString() {
        return "MenuItem(text=" + this.f16241a + ", icon=" + this.f16242b + ", onClickListener=" + this.f16243c + ')';
    }
}
