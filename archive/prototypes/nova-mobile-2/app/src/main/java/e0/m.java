package e0;

import android.app.Person;
import androidx.core.graphics.drawable.IconCompat;

/* compiled from: Person.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f5919a;

    /* renamed from: b, reason: collision with root package name */
    public IconCompat f5920b;

    /* renamed from: c, reason: collision with root package name */
    public String f5921c;

    /* renamed from: d, reason: collision with root package name */
    public String f5922d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5923e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f5924f;

    public IconCompat a() {
        return this.f5920b;
    }

    public String b() {
        return this.f5922d;
    }

    public CharSequence c() {
        return this.f5919a;
    }

    public String d() {
        return this.f5921c;
    }

    public boolean e() {
        return this.f5923e;
    }

    public boolean f() {
        return this.f5924f;
    }

    public String g() {
        String str = this.f5921c;
        if (str != null) {
            return str;
        }
        if (this.f5919a == null) {
            return "";
        }
        return "name:" + ((Object) this.f5919a);
    }

    public Person h() {
        return new Person.Builder().setName(c()).setIcon(a() != null ? a().p() : null).setUri(d()).setKey(b()).setBot(e()).setImportant(f()).build();
    }
}
