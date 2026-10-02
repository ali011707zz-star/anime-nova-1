package bb;

import android.content.SharedPreferences;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import jc.l;

/* compiled from: ObjectPreference.kt */
/* loaded from: classes.dex */
public final class e<T> extends a<T> {

    /* renamed from: e, reason: collision with root package name */
    public final String f3577e;

    /* renamed from: f, reason: collision with root package name */
    public final g<T> f3578f;

    /* renamed from: g, reason: collision with root package name */
    public final T f3579g;

    /* renamed from: h, reason: collision with root package name */
    public final SharedPreferences f3580h;

    /* renamed from: i, reason: collision with root package name */
    public final ac.g f3581i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(String str, g<T> gVar, T t10, uc.f<String> fVar, SharedPreferences sharedPreferences, ac.g gVar2) {
        super(str, fVar, sharedPreferences, gVar2);
        l.f(str, "key");
        l.f(gVar, "serializer");
        l.f(t10, "defaultValue");
        l.f(fVar, "keyFlow");
        l.f(sharedPreferences, "sharedPreferences");
        l.f(gVar2, "coroutineContext");
        this.f3577e = str;
        this.f3578f = gVar;
        this.f3579g = t10;
        this.f3580h = sharedPreferences;
        this.f3581i = gVar2;
    }

    public T a() {
        return this.f3579g;
    }

    public String b() {
        return this.f3577e;
    }

    @Override // bb.f
    public T get() {
        String string = this.f3580h.getString(b(), null);
        if (string != null) {
            g<T> gVar = this.f3578f;
            l.e(string, "it");
            T deserialize = gVar.deserialize(string);
            if (deserialize != null) {
                return deserialize;
            }
        }
        return a();
    }

    @Override // bb.f
    public void set(T t10) {
        l.f(t10, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        this.f3580h.edit().putString(b(), this.f3578f.serialize(t10)).apply();
    }
}
