package bb;

import android.content.SharedPreferences;
import jc.l;

/* compiled from: LongPreference.kt */
/* loaded from: classes.dex */
public final class d extends a<Long> {

    /* renamed from: e, reason: collision with root package name */
    public final String f3573e;

    /* renamed from: f, reason: collision with root package name */
    public final long f3574f;

    /* renamed from: g, reason: collision with root package name */
    public final SharedPreferences f3575g;

    /* renamed from: h, reason: collision with root package name */
    public final ac.g f3576h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(String str, long j10, uc.f<String> fVar, SharedPreferences sharedPreferences, ac.g gVar) {
        super(str, fVar, sharedPreferences, gVar);
        l.f(str, "key");
        l.f(fVar, "keyFlow");
        l.f(sharedPreferences, "sharedPreferences");
        l.f(gVar, "coroutineContext");
        this.f3573e = str;
        this.f3574f = j10;
        this.f3575g = sharedPreferences;
        this.f3576h = gVar;
    }

    @Override // bb.f
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Long get() {
        return Long.valueOf(this.f3575g.getLong(c(), b().longValue()));
    }

    public Long b() {
        return Long.valueOf(this.f3574f);
    }

    public String c() {
        return this.f3573e;
    }

    public void d(long j10) {
        this.f3575g.edit().putLong(c(), j10).apply();
    }

    @Override // bb.f
    public /* bridge */ /* synthetic */ void set(Object obj) {
        d(((Number) obj).longValue());
    }
}
