package n5;

import android.content.Context;
import android.content.SharedPreferences;
import jc.l;
import jc.m;
import vb.e;
import vb.f;
import vb.g;

/* compiled from: SupportPreference.kt */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public final String f11246a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11247b;

    /* renamed from: c, reason: collision with root package name */
    public final e f11248c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f11249d;

    /* compiled from: SupportPreference.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<SharedPreferences> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f11250f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(0);
            this.f11250f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SharedPreferences invoke() {
            return androidx.preference.e.c(this.f11250f);
        }
    }

    public c(Context context) {
        l.f(context, "context");
        this.f11246a = "_isAuthenticated";
        this.f11247b = "_isLightTheme";
        this.f11248c = f.b(g.NONE, new a(context));
    }

    public final SharedPreferences a() {
        Object value = this.f11248c.getValue();
        l.e(value, "<get-sharedPreferences>(...)");
        return (SharedPreferences) value;
    }

    public final boolean b() {
        return a().getBoolean(this.f11246a, false);
    }

    public final void c(boolean z10) {
        this.f11249d = z10;
        a().edit().putBoolean(this.f11246a, z10).apply();
    }
}
