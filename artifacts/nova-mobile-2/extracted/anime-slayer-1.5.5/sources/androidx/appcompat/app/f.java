package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.b;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.b1;
import j.b;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* compiled from: AppCompatDelegate.java */
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: f, reason: collision with root package name */
    public static int f816f = -100;

    /* renamed from: g, reason: collision with root package name */
    public static final s.b<WeakReference<f>> f817g = new s.b<>();

    /* renamed from: h, reason: collision with root package name */
    public static final Object f818h = new Object();

    public static void a(f fVar) {
        synchronized (f818h) {
            x(fVar);
            f817g.add(new WeakReference<>(fVar));
        }
    }

    public static f e(Activity activity, e.a aVar) {
        return new g(activity, aVar);
    }

    public static f f(Dialog dialog, e.a aVar) {
        return new g(dialog, aVar);
    }

    public static int h() {
        return f816f;
    }

    public static void w(f fVar) {
        synchronized (f818h) {
            x(fVar);
        }
    }

    public static void x(f fVar) {
        synchronized (f818h) {
            Iterator<WeakReference<f>> it2 = f817g.iterator();
            while (it2.hasNext()) {
                f fVar2 = it2.next().get();
                if (fVar2 == fVar || fVar2 == null) {
                    it2.remove();
                }
            }
        }
    }

    public static void z(boolean z10) {
        b1.c(z10);
    }

    public abstract void A(int i10);

    public abstract void B(View view);

    public abstract void C(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void D(Toolbar toolbar);

    public void E(int i10) {
    }

    public abstract void F(CharSequence charSequence);

    public abstract j.b G(b.a aVar);

    public abstract void b(View view, ViewGroup.LayoutParams layoutParams);

    @Deprecated
    public void c(Context context) {
    }

    public Context d(Context context) {
        c(context);
        return context;
    }

    public abstract <T extends View> T g(int i10);

    public abstract b.InterfaceC0026b i();

    public int j() {
        return -100;
    }

    public abstract MenuInflater k();

    public abstract a l();

    public abstract void m();

    public abstract void n();

    public abstract void o(Configuration configuration);

    public abstract void p(Bundle bundle);

    public abstract void q();

    public abstract void r(Bundle bundle);

    public abstract void s();

    public abstract void t(Bundle bundle);

    public abstract void u();

    public abstract void v();

    public abstract boolean y(int i10);
}
