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

/* compiled from: ViewTarget.java */
@Deprecated
/* loaded from: classes.dex */
public abstract class j<T extends View, Z> extends i8.a<Z> {

    /* renamed from: k, reason: collision with root package name */
    public static boolean f7915k;

    /* renamed from: l, reason: collision with root package name */
    public static int f7916l = com.bumptech.glide.h.f4569a;

    /* renamed from: f, reason: collision with root package name */
    public final T f7917f;

    /* renamed from: g, reason: collision with root package name */
    public final a f7918g;

    /* renamed from: h, reason: collision with root package name */
    public View.OnAttachStateChangeListener f7919h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f7920i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7921j;

    /* compiled from: ViewTarget.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: e, reason: collision with root package name */
        public static Integer f7922e;

        /* renamed from: a, reason: collision with root package name */
        public final View f7923a;

        /* renamed from: b, reason: collision with root package name */
        public final List<h> f7924b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public boolean f7925c;

        /* renamed from: d, reason: collision with root package name */
        public ViewTreeObserverOnPreDrawListenerC0158a f7926d;

        /* compiled from: ViewTarget.java */
        /* renamed from: i8.j$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class ViewTreeObserverOnPreDrawListenerC0158a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: f, reason: collision with root package name */
            public final WeakReference<a> f7927f;

            public ViewTreeObserverOnPreDrawListenerC0158a(a aVar) {
                this.f7927f = new WeakReference<>(aVar);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("OnGlobalLayoutListener called attachStateListener=");
                    sb2.append(this);
                }
                a aVar = this.f7927f.get();
                if (aVar == null) {
                    return true;
                }
                aVar.a();
                return true;
            }
        }

        public a(View view) {
            this.f7923a = view;
        }

        public static int c(Context context) {
            if (f7922e == null) {
                Display defaultDisplay = ((WindowManager) l8.j.d((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f7922e = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f7922e.intValue();
        }

        public void a() {
            if (this.f7924b.isEmpty()) {
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
            ViewTreeObserver viewTreeObserver = this.f7923a.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f7926d);
            }
            this.f7926d = null;
            this.f7924b.clear();
        }

        public void d(h hVar) {
            int g10 = g();
            int f10 = f();
            if (i(g10, f10)) {
                hVar.f(g10, f10);
                return;
            }
            if (!this.f7924b.contains(hVar)) {
                this.f7924b.add(hVar);
            }
            if (this.f7926d == null) {
                ViewTreeObserver viewTreeObserver = this.f7923a.getViewTreeObserver();
                ViewTreeObserverOnPreDrawListenerC0158a viewTreeObserverOnPreDrawListenerC0158a = new ViewTreeObserverOnPreDrawListenerC0158a(this);
                this.f7926d = viewTreeObserverOnPreDrawListenerC0158a;
                viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0158a);
            }
        }

        public final int e(int i10, int i11, int i12) {
            int i13 = i11 - i12;
            if (i13 > 0) {
                return i13;
            }
            if (this.f7925c && this.f7923a.isLayoutRequested()) {
                return 0;
            }
            int i14 = i10 - i12;
            if (i14 > 0) {
                return i14;
            }
            if (this.f7923a.isLayoutRequested() || i11 != -2) {
                return 0;
            }
            return c(this.f7923a.getContext());
        }

        public final int f() {
            int paddingTop = this.f7923a.getPaddingTop() + this.f7923a.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f7923a.getLayoutParams();
            return e(this.f7923a.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        public final int g() {
            int paddingLeft = this.f7923a.getPaddingLeft() + this.f7923a.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f7923a.getLayoutParams();
            return e(this.f7923a.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        public final boolean h(int i10) {
            return i10 > 0 || i10 == Integer.MIN_VALUE;
        }

        public final boolean i(int i10, int i11) {
            return h(i10) && h(i11);
        }

        public final void j(int i10, int i11) {
            Iterator it2 = new ArrayList(this.f7924b).iterator();
            while (it2.hasNext()) {
                ((h) it2.next()).f(i10, i11);
            }
        }

        public void k(h hVar) {
            this.f7924b.remove(hVar);
        }
    }

    public j(T t10) {
        this.f7917f = (T) l8.j.d(t10);
        this.f7918g = new a(t10);
    }

    @Override // i8.i
    public void b(h8.d dVar) {
        n(dVar);
    }

    @Override // i8.i
    public void e(h hVar) {
        this.f7918g.d(hVar);
    }

    @Override // i8.a, i8.i
    public void f(Drawable drawable) {
        super.f(drawable);
        l();
    }

    public final Object g() {
        return this.f7917f.getTag(f7916l);
    }

    @Override // i8.i
    public void h(h hVar) {
        this.f7918g.k(hVar);
    }

    @Override // i8.i
    public h8.d j() {
        Object g10 = g();
        if (g10 == null) {
            return null;
        }
        if (g10 instanceof h8.d) {
            return (h8.d) g10;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // i8.a, i8.i
    public void k(Drawable drawable) {
        super.k(drawable);
        this.f7918g.b();
        if (this.f7920i) {
            return;
        }
        m();
    }

    public final void l() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f7919h;
        if (onAttachStateChangeListener == null || this.f7921j) {
            return;
        }
        this.f7917f.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f7921j = true;
    }

    public final void m() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f7919h;
        if (onAttachStateChangeListener == null || !this.f7921j) {
            return;
        }
        this.f7917f.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f7921j = false;
    }

    public final void n(Object obj) {
        f7915k = true;
        this.f7917f.setTag(f7916l, obj);
    }

    public String toString() {
        return "Target for: " + this.f7917f;
    }
}
