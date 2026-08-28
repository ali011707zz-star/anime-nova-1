package bb;

import android.content.SharedPreferences;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import jc.l;

/* compiled from: StringPreference.kt */
/* loaded from: classes.dex */
public final class i extends a<String> {

    /* renamed from: e, reason: collision with root package name */
    public final String f3588e;

    /* renamed from: f, reason: collision with root package name */
    public final String f3589f;

    /* renamed from: g, reason: collision with root package name */
    public final SharedPreferences f3590g;

    /* renamed from: h, reason: collision with root package name */
    public final ac.g f3591h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(String str, String str2, uc.f<String> fVar, SharedPreferences sharedPreferences, ac.g gVar) {
        super(str, fVar, sharedPreferences, gVar);
        l.f(str, "key");
        l.f(str2, "defaultValue");
        l.f(fVar, "keyFlow");
        l.f(sharedPreferences, "sharedPreferences");
        l.f(gVar, "coroutineContext");
        this.f3588e = str;
        this.f3589f = str2;
        this.f3590g = sharedPreferences;
        this.f3591h = gVar;
    }

    @Override // bb.f
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public String get() {
        String string = this.f3590g.getString(c(), b());
        l.c(string);
        l.e(string, "sharedPreferences.getString(key, defaultValue)!!");
        return string;
    }

    public String b() {
        return this.f3589f;
    }

    public String c() {
        return this.f3588e;
    }

    @Override // bb.f
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public void set(String str) {
        l.f(str, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        this.f3590g.edit().putString(c(), str).apply();
    }
}
