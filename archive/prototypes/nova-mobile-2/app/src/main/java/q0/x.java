package q0;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: OneShotPreDrawListener.java */
/* loaded from: classes.dex */
public final class x implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: f, reason: collision with root package name */
    public final View f12408f;

    /* renamed from: g, reason: collision with root package name */
    public ViewTreeObserver f12409g;

    /* renamed from: h, reason: collision with root package name */
    public final Runnable f12410h;

    public x(View view, Runnable runnable) {
        this.f12408f = view;
        this.f12409g = view.getViewTreeObserver();
        this.f12410h = runnable;
    }

    public static x a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable != null) {
            x xVar = new x(view, runnable);
            view.getViewTreeObserver().addOnPreDrawListener(xVar);
            view.addOnAttachStateChangeListener(xVar);
            return xVar;
        }
        throw new NullPointerException("runnable == null");
    }

    public void b() {
        if (this.f12409g.isAlive()) {
            this.f12409g.removeOnPreDrawListener(this);
        } else {
            this.f12408f.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f12408f.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        b();
        this.f12410h.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f12409g = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
