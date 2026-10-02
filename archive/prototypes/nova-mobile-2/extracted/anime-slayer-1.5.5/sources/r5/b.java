package r5;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import io.wax911.support.base.event.LifecycleListener;
import io.wax911.support.custom.recycler.SupportScrollListener;
import jc.g;
import jc.l;
import n5.c;

/* compiled from: SupportPresenter.kt */
/* loaded from: classes.dex */
public abstract class b<S extends c> extends SupportScrollListener implements LifecycleListener {

    /* renamed from: c, reason: collision with root package name */
    public static final a f12864c = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public Context f12865a;

    /* renamed from: b, reason: collision with root package name */
    public final Bundle f12866b = new Bundle();

    /* compiled from: SupportPresenter.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final <T> void a(T t10, boolean z10) {
            if (z10) {
                ed.c.d().p(t10);
            } else {
                ed.c.d().m(t10);
            }
        }
    }

    public b(Context context) {
        this.f12865a = context;
    }

    public final Context d() {
        return this.f12865a;
    }

    public abstract S e();

    public void onDestroy() {
    }

    @Override // io.wax911.support.base.event.LifecycleListener
    public void onPause(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        SharedPreferences a10;
        l.f(onSharedPreferenceChangeListener, "changeListener");
        S e10 = e();
        if (e10 == null || (a10 = e10.a()) == null) {
            return;
        }
        a10.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // io.wax911.support.base.event.LifecycleListener
    public void onResume(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        SharedPreferences a10;
        l.f(onSharedPreferenceChangeListener, "changeListener");
        S e10 = e();
        if (e10 == null || (a10 = e10.a()) == null) {
            return;
        }
        a10.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }
}
