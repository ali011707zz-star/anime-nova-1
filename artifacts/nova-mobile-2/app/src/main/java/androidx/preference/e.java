package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: PreferenceManager.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public Context f2663a;

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferences f2665c;

    /* renamed from: d, reason: collision with root package name */
    public m1.d f2666d;

    /* renamed from: e, reason: collision with root package name */
    public SharedPreferences.Editor f2667e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2668f;

    /* renamed from: g, reason: collision with root package name */
    public String f2669g;

    /* renamed from: h, reason: collision with root package name */
    public int f2670h;

    /* renamed from: j, reason: collision with root package name */
    public PreferenceScreen f2672j;

    /* renamed from: k, reason: collision with root package name */
    public d f2673k;

    /* renamed from: l, reason: collision with root package name */
    public c f2674l;

    /* renamed from: m, reason: collision with root package name */
    public a f2675m;

    /* renamed from: n, reason: collision with root package name */
    public b f2676n;

    /* renamed from: b, reason: collision with root package name */
    public long f2664b = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f2671i = 0;

    /* compiled from: PreferenceManager.java */
    /* loaded from: classes.dex */
    public interface a {
        void n(Preference preference);
    }

    /* compiled from: PreferenceManager.java */
    /* loaded from: classes.dex */
    public interface b {
        void t(PreferenceScreen preferenceScreen);
    }

    /* compiled from: PreferenceManager.java */
    /* loaded from: classes.dex */
    public interface c {
        boolean x(Preference preference);
    }

    /* compiled from: PreferenceManager.java */
    /* loaded from: classes.dex */
    public static abstract class d {
    }

    public e(Context context) {
        this.f2663a = context;
        r(e(context));
    }

    public static SharedPreferences c(Context context) {
        return context.getSharedPreferences(e(context), d());
    }

    public static int d() {
        return 0;
    }

    public static String e(Context context) {
        return context.getPackageName() + "_preferences";
    }

    public PreferenceScreen a(Context context) {
        PreferenceScreen preferenceScreen = new PreferenceScreen(context, null);
        preferenceScreen.N(this);
        return preferenceScreen;
    }

    public <T extends Preference> T b(CharSequence charSequence) {
        PreferenceScreen preferenceScreen = this.f2672j;
        if (preferenceScreen == null) {
            return null;
        }
        return (T) preferenceScreen.I0(charSequence);
    }

    public SharedPreferences.Editor f() {
        if (this.f2668f) {
            if (this.f2667e == null) {
                this.f2667e = m().edit();
            }
            return this.f2667e;
        }
        return m().edit();
    }

    public long g() {
        long j10;
        synchronized (this) {
            j10 = this.f2664b;
            this.f2664b = 1 + j10;
        }
        return j10;
    }

    public b h() {
        return this.f2676n;
    }

    public c i() {
        return this.f2674l;
    }

    public d j() {
        return this.f2673k;
    }

    public m1.d k() {
        return this.f2666d;
    }

    public PreferenceScreen l() {
        return this.f2672j;
    }

    public SharedPreferences m() {
        Context b10;
        k();
        if (this.f2665c == null) {
            if (this.f2671i != 1) {
                b10 = this.f2663a;
            } else {
                b10 = f0.a.b(this.f2663a);
            }
            this.f2665c = b10.getSharedPreferences(this.f2669g, this.f2670h);
        }
        return this.f2665c;
    }

    public void n(a aVar) {
        this.f2675m = aVar;
    }

    public void o(b bVar) {
        this.f2676n = bVar;
    }

    public void p(c cVar) {
        this.f2674l = cVar;
    }

    public boolean q(PreferenceScreen preferenceScreen) {
        PreferenceScreen preferenceScreen2 = this.f2672j;
        if (preferenceScreen == preferenceScreen2) {
            return false;
        }
        if (preferenceScreen2 != null) {
            preferenceScreen2.S();
        }
        this.f2672j = preferenceScreen;
        return true;
    }

    public void r(String str) {
        this.f2669g = str;
        this.f2665c = null;
    }

    public boolean s() {
        return !this.f2668f;
    }

    public void t(Preference preference) {
        a aVar = this.f2675m;
        if (aVar != null) {
            aVar.n(preference);
        }
    }
}
