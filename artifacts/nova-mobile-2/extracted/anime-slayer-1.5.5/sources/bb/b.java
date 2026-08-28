package bb;

import android.content.SharedPreferences;
import jc.l;

/* compiled from: BooleanPreference.kt */
/* loaded from: classes.dex */
public final class b extends a<Boolean> {

    /* renamed from: e, reason: collision with root package name */
    public final String f3566e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f3567f;

    /* renamed from: g, reason: collision with root package name */
    public final SharedPreferences f3568g;

    /* renamed from: h, reason: collision with root package name */
    public final ac.g f3569h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(String str, boolean z10, uc.f<String> fVar, SharedPreferences sharedPreferences, ac.g gVar) {
        super(str, fVar, sharedPreferences, gVar);
        l.f(str, "key");
        l.f(fVar, "keyFlow");
        l.f(sharedPreferences, "sharedPreferences");
        l.f(gVar, "coroutineContext");
        this.f3566e = str;
        this.f3567f = z10;
        this.f3568g = sharedPreferences;
        this.f3569h = gVar;
    }

    @Override // bb.f
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean get() {
        return Boolean.valueOf(this.f3568g.getBoolean(c(), b().booleanValue()));
    }

    public Boolean b() {
        return Boolean.valueOf(this.f3567f);
    }

    public String c() {
        return this.f3566e;
    }

    public void d(boolean z10) {
        this.f3568g.edit().putBoolean(c(), z10).apply();
    }

    @Override // bb.f
    public /* bridge */ /* synthetic */ void set(Object obj) {
        d(((Boolean) obj).booleanValue());
    }
}
