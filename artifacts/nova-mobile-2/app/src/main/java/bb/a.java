package bb;

import android.content.SharedPreferences;
import jc.l;

/* compiled from: BasePreference.kt */
/* loaded from: classes.dex */
public abstract class a<T> implements f<T> {

    /* renamed from: a, reason: collision with root package name */
    public final String f3562a;

    /* renamed from: b, reason: collision with root package name */
    public final uc.f<String> f3563b;

    /* renamed from: c, reason: collision with root package name */
    public final SharedPreferences f3564c;

    /* renamed from: d, reason: collision with root package name */
    public final ac.g f3565d;

    public a(String str, uc.f<String> fVar, SharedPreferences sharedPreferences, ac.g gVar) {
        l.f(str, "key");
        l.f(fVar, "keyFlow");
        l.f(sharedPreferences, "sharedPreferences");
        l.f(gVar, "coroutineContext");
        this.f3562a = str;
        this.f3563b = fVar;
        this.f3564c = sharedPreferences;
        this.f3565d = gVar;
    }
}
