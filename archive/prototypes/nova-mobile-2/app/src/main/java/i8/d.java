package i8;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: CustomViewTarget.java */
/* loaded from: classes.dex */
public abstract class d<T extends View, Z> implements i<Z> {

    /* renamed from: k, reason: collision with root package name */
    public static final int f7902k = com.bumptech.glide.h.f4569a;

    /* renamed from: f, reason: collision with root package name */
    public final a f7903f;

    /* renamed from: g, reason: collision with root package name */
    public final T f7904g;

    /* renamed from: h, reason: collision with root package name */
    public View.OnAttachStateChangeListener f7905h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f7906i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7907j;

    /* compiled from: CustomViewTarget.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: e, reason: collision with root package name */
        public static Integer f7908e;

        /* renamed from: a, reason: collision with root package name */
        public final View f7909a;

        /* renamed from: b, reason: collision with root package name */
        public final List<h> f7910b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public boolean f7911c;

        /* renamed from: d, reason: collision with root package name */
        public ViewTreeObserverOnPreDrawListenerC0157a f7912d;

        /* compiled from: CustomViewTarget.java */
        /* renamed from: i8.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class ViewTreeObserverOnPreDrawListenerC0157a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: f, reason: collision with root package name */
            public final WeakReference<a> f7913f;

            public ViewTreeObserverOnPreDrawListenerC0157a(a aVar) {
                this.f7913f = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("OnGlobalLayoutListener called attachStateListener=");
                    sb2.append(this);
                }
                a aVar = this.f7913f.get();
                if (aVar == null) {
                    return true;
                }
                aVar.a();
                return true;
            }
        }

        public a(View view) {
            this.f7909a = view;
        }

        public static int c(Context context) {
            if (f7908e == null) {
                Display defaultDisplay = ((WindowManager) l8.j.d((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f7908e = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f7908e.intValue();
        }

        public void a() {
            if (this.f7910b.isEmpty()) {
                return;
            }
            int g10 = g();
            int f10 = f();
            if (i(g10, f10)) {
                j(g10, f10);
                b();
            }
        }

        public void b() {
            ViewTreeObserver viewTreeObserver = this.f7909a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f7912d);
            }
            this.f7912d = null;
            this.f7910b.clear();
        }

        public void d(h hVar) {
            int g10 = g();
            int f10 = f();
            if (i(g10, f10)) {
                hVar.f(g10, f10);
                return;
            }
            if (!this.f7910b.contains(hVar)) {
                this.f7910b.add(hVar);
            }
            if (this.f7912d == null) {
                ViewTreeObserver viewTreeObserver = this.f7909a.getViewTreeObserver();
                ViewTreeObserverOnPreDrawListenerC0157a viewTreeObserverOnPreDrawListenerC0157a = new ViewTreeObserverOnPreDrawListenerC0157a(this);
                this.f7912d = viewTreeObserverOnPreDrawListenerC0157a;
                viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0157a);
            }
        }

        public final int e(int i10, int i11, int i12) {
            int i13 = i11 - i12;
            if (i13 > 0) {
                return i13;
            }
            if (this.f7911c && this.f7909a.isLayoutRequested()) {
                return 0;
            }
            int i14 = i10 - i12;
            if (i14 > 0) {
                return i14;
            }
            if (this.f7909a.isLayoutRequested() || i11 != -2) {
                return 0;
            }
            return c(this.f7909a.getContext());
        }

        public final int f() {
            int paddingTop = this.f7909a.getPaddingTop() + this.f7909a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f7909a.getLayoutParams();
            return e(this.f7909a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        public final int g() {
            int paddingLeft = this.f7909a.getPaddingLeft() + this.f7909a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f7909a.getLayoutParams();
            return e(this.f7909a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        public final boolean h(int i10) {
            return i10 > 0 || i10 == Integer.MIN_VALUE;
        }

        public final boolean i(int i10, int i11) {
            return h(i10) && h(i11);
        }

        public final void j(int i10, int i11) {
            Iterator it2 = new ArrayList(this.f7910b).iterator();
            while (it2.hasNext()) {
                ((h) it2.next()).f(i10, i11);
            }
        }

        public void k(h hVar) {
            this.f7910b.remove(hVar);
        }
    }

    public d(T t10) {
        this.f7904g = (T) l8.j.d(t10);
        this.f7903f = new a(t10);
    }

    public final Object a() {
        return this.f7904g.getTag(f7902k);
    }

    @Override // i8.i
    public final void b(h8.d dVar) {
        n(dVar);
    }

    public final void d() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f7905h;
        if (onAttachStateChangeListener == null || this.f7907j) {
            return;
        }
        this.f7904g.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f7907j = true;
    }

    @Override // i8.i
    public final void e(h hVar) {
        this.f7903f.d(hVar);
    }

    @Override // i8.i
    public final void f(Drawable drawable) {
        d();
        m(drawable);
    }

    public final void g() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f7905h;
        if (onAttachStateChangeListener == null || !this.f7907j) {
            return;
        }
        this.f7904g.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f7907j = false;
    }

    @Override // i8.i
    public final void h(h hVar) {
        this.f7903f.k(hVar);
    }

    @Override // i8.i
    public final h8.d j() {
        Object a10 = a();
        if (a10 == null) {
            return null;
        }
        if (a10 instanceof h8.d) {
            return (h8.d) a10;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // i8.i
    public final void k(Drawable drawable) {
        this.f7903f.b();
        l(drawable);
        if (this.f7906i) {
            return;
        }
        g();
    }

    public abstract void l(Drawable drawable);

    public void m(Drawable drawable) {
    }

    public final void n(Object obj) {
        this.f7904g.setTag(f7902k, obj);
    }

    @Override // e8.i
    public void onDestroy() {
    }

    @Override // e8.i
    public void onStart() {
    }

    @Override // e8.i
    public void onStop() {
    }

    public String toString() {
        return "Target for: " + this.f7904g;
    }
}
