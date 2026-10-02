package q0;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.OnReceiveContentListener;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import q0.a;
import q0.b0;
import q0.l0;
import q0.m0;
import r0.c;

/* compiled from: ViewCompat.java */
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public class b0 {

    /* renamed from: b, reason: collision with root package name */
    public static Field f12268b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f12269c;

    /* renamed from: d, reason: collision with root package name */
    public static Field f12270d;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f12271e;

    /* renamed from: f, reason: collision with root package name */
    public static WeakHashMap<View, String> f12272f;

    /* renamed from: h, reason: collision with root package name */
    public static Field f12274h;

    /* renamed from: j, reason: collision with root package name */
    public static ThreadLocal<Rect> f12276j;

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f12267a = new AtomicInteger(1);

    /* renamed from: g, reason: collision with root package name */
    public static WeakHashMap<View, g0> f12273g = null;

    /* renamed from: i, reason: collision with root package name */
    public static boolean f12275i = false;

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f12277k = {d0.c.f5462b, d0.c.f5463c, d0.c.f5474n, d0.c.f5485y, d0.c.B, d0.c.C, d0.c.D, d0.c.E, d0.c.F, d0.c.G, d0.c.f5464d, d0.c.f5465e, d0.c.f5466f, d0.c.f5467g, d0.c.f5468h, d0.c.f5469i, d0.c.f5470j, d0.c.f5471k, d0.c.f5472l, d0.c.f5473m, d0.c.f5475o, d0.c.f5476p, d0.c.f5477q, d0.c.f5478r, d0.c.f5479s, d0.c.f5480t, d0.c.f5481u, d0.c.f5482v, d0.c.f5483w, d0.c.f5484x, d0.c.f5486z, d0.c.A};

    /* renamed from: l, reason: collision with root package name */
    public static final q0.w f12278l = new q0.w() { // from class: q0.a0
        @Override // q0.w
        public final c onReceiveContent(c cVar) {
            c b02;
            b02 = b0.b0(cVar);
            return b02;
        }
    };

    /* renamed from: m, reason: collision with root package name */
    public static final e f12279m = new e();

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public class a extends f<Boolean> {
        public a(int i10, Class cls, int i11) {
            super(i10, cls, i11);
        }

        @Override // q0.b0.f
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public Boolean d(View view) {
            return Boolean.valueOf(q.d(view));
        }

        @Override // q0.b0.f
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, Boolean bool) {
            q.i(view, bool.booleanValue());
        }

        @Override // q0.b0.f
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public class b extends f<CharSequence> {
        public b(int i10, Class cls, int i11, int i12) {
            super(i10, cls, i11, i12);
        }

        @Override // q0.b0.f
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public CharSequence d(View view) {
            return q.b(view);
        }

        @Override // q0.b0.f
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, CharSequence charSequence) {
            q.h(view, charSequence);
        }

        @Override // q0.b0.f
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public class c extends f<CharSequence> {
        public c(int i10, Class cls, int i11, int i12) {
            super(i10, cls, i11, i12);
        }

        @Override // q0.b0.f
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public CharSequence d(View view) {
            return s.a(view);
        }

        @Override // q0.b0.f
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, CharSequence charSequence) {
            s.b(view, charSequence);
        }

        @Override // q0.b0.f
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public class d extends f<Boolean> {
        public d(int i10, Class cls, int i11) {
            super(i10, cls, i11);
        }

        @Override // q0.b0.f
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public Boolean d(View view) {
            return Boolean.valueOf(q.c(view));
        }

        @Override // q0.b0.f
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, Boolean bool) {
            q.g(view, bool.booleanValue());
        }

        @Override // q0.b0.f
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class e implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: f, reason: collision with root package name */
        public final WeakHashMap<View, Boolean> f12280f = new WeakHashMap<>();

        public void a(View view) {
            this.f12280f.put(view, Boolean.valueOf(view.getVisibility() == 0));
            view.addOnAttachStateChangeListener(this);
            if (k.b(view)) {
                c(view);
            }
        }

        public final void b(View view, boolean z10) {
            boolean z11 = view.getVisibility() == 0;
            if (z10 != z11) {
                b0.c0(view, z11 ? 16 : 32);
                this.f12280f.put(view, Boolean.valueOf(z11));
            }
        }

        public final void c(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        public void d(View view) {
            this.f12280f.remove(view);
            view.removeOnAttachStateChangeListener(this);
            e(view);
        }

        public final void e(View view) {
            h.o(view.getViewTreeObserver(), this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.f12280f.entrySet()) {
                    b(entry.getKey(), entry.getValue().booleanValue());
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            c(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static abstract class f<T> {

        /* renamed from: a, reason: collision with root package name */
        public final int f12281a;

        /* renamed from: b, reason: collision with root package name */
        public final Class<T> f12282b;

        /* renamed from: c, reason: collision with root package name */
        public final int f12283c;

        /* renamed from: d, reason: collision with root package name */
        public final int f12284d;

        public f(int i10, Class<T> cls, int i11) {
            this(i10, cls, 0, i11);
        }

        public boolean a(Boolean bool, Boolean bool2) {
            return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
        }

        public final boolean b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        public final boolean c() {
            return Build.VERSION.SDK_INT >= this.f12283c;
        }

        public abstract T d(View view);

        public abstract void e(View view, T t10);

        public T f(View view) {
            if (c()) {
                return d(view);
            }
            if (!b()) {
                return null;
            }
            T t10 = (T) view.getTag(this.f12281a);
            if (this.f12282b.isInstance(t10)) {
                return t10;
            }
            return null;
        }

        public void g(View view, T t10) {
            if (c()) {
                e(view, t10);
            } else if (b() && h(f(view), t10)) {
                b0.l(view);
                view.setTag(this.f12281a, t10);
                b0.c0(view, this.f12284d);
            }
        }

        public abstract boolean h(T t10, T t11);

        public f(int i10, Class<T> cls, int i11, int i12) {
            this.f12281a = i10;
            this.f12282b = cls;
            this.f12284d = i11;
            this.f12283c = i12;
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class g {
        public static boolean a(View view) {
            return view.hasOnClickListeners();
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class h {
        public static AccessibilityNodeProvider a(View view) {
            return view.getAccessibilityNodeProvider();
        }

        public static boolean b(View view) {
            return view.getFitsSystemWindows();
        }

        public static int c(View view) {
            return view.getImportantForAccessibility();
        }

        public static int d(View view) {
            return view.getMinimumHeight();
        }

        public static int e(View view) {
            return view.getMinimumWidth();
        }

        public static ViewParent f(View view) {
            return view.getParentForAccessibility();
        }

        public static int g(View view) {
            return view.getWindowSystemUiVisibility();
        }

        public static boolean h(View view) {
            return view.hasOverlappingRendering();
        }

        public static boolean i(View view) {
            return view.hasTransientState();
        }

        public static boolean j(View view, int i10, Bundle bundle) {
            return view.performAccessibilityAction(i10, bundle);
        }

        public static void k(View view) {
            view.postInvalidateOnAnimation();
        }

        public static void l(View view, int i10, int i11, int i12, int i13) {
            view.postInvalidateOnAnimation(i10, i11, i12, i13);
        }

        public static void m(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        public static void n(View view, Runnable runnable, long j10) {
            view.postOnAnimationDelayed(runnable, j10);
        }

        public static void o(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }

        public static void p(View view) {
            view.requestFitSystemWindows();
        }

        public static void q(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        public static void r(View view, boolean z10) {
            view.setHasTransientState(z10);
        }

        public static void s(View view, int i10) {
            view.setImportantForAccessibility(i10);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class i {
        public static int a() {
            return View.generateViewId();
        }

        public static Display b(View view) {
            return view.getDisplay();
        }

        public static int c(View view) {
            return view.getLabelFor();
        }

        public static int d(View view) {
            return view.getLayoutDirection();
        }

        public static int e(View view) {
            return view.getPaddingEnd();
        }

        public static int f(View view) {
            return view.getPaddingStart();
        }

        public static boolean g(View view) {
            return view.isPaddingRelative();
        }

        public static void h(View view, int i10) {
            view.setLabelFor(i10);
        }

        public static void i(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        public static void j(View view, int i10) {
            view.setLayoutDirection(i10);
        }

        public static void k(View view, int i10, int i11, int i12, int i13) {
            view.setPaddingRelative(i10, i11, i12, i13);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class j {
        public static Rect a(View view) {
            return view.getClipBounds();
        }

        public static boolean b(View view) {
            return view.isInLayout();
        }

        public static void c(View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class k {
        public static int a(View view) {
            return view.getAccessibilityLiveRegion();
        }

        public static boolean b(View view) {
            return view.isAttachedToWindow();
        }

        public static boolean c(View view) {
            return view.isLaidOut();
        }

        public static boolean d(View view) {
            return view.isLayoutDirectionResolved();
        }

        public static void e(ViewParent viewParent, View view, View view2, int i10) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i10);
        }

        public static void f(View view, int i10) {
            view.setAccessibilityLiveRegion(i10);
        }

        public static void g(AccessibilityEvent accessibilityEvent, int i10) {
            accessibilityEvent.setContentChangeTypes(i10);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class l {
        public static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        public static WindowInsets b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        public static void c(View view) {
            view.requestApplyInsets();
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class m {

        /* compiled from: ViewCompat.java */
        /* loaded from: classes.dex */
        public class a implements View.OnApplyWindowInsetsListener {

            /* renamed from: a, reason: collision with root package name */
            public m0 f12285a = null;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ View f12286b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ q0.u f12287c;

            public a(View view, q0.u uVar) {
                this.f12286b = view;
                this.f12287c = uVar;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                m0 x10 = m0.x(windowInsets, view);
                int i10 = Build.VERSION.SDK_INT;
                if (i10 < 30) {
                    m.a(windowInsets, this.f12286b);
                    if (x10.equals(this.f12285a)) {
                        return this.f12287c.onApplyWindowInsets(view, x10).v();
                    }
                }
                this.f12285a = x10;
                m0 onApplyWindowInsets = this.f12287c.onApplyWindowInsets(view, x10);
                if (i10 >= 30) {
                    return onApplyWindowInsets.v();
                }
                b0.q0(view);
                return onApplyWindowInsets.v();
            }
        }

        public static void a(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(d0.c.T);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        public static m0 b(View view, m0 m0Var, Rect rect) {
            WindowInsets v10 = m0Var.v();
            if (v10 != null) {
                return m0.x(view.computeSystemWindowInsets(v10, rect), view);
            }
            rect.setEmpty();
            return m0Var;
        }

        public static boolean c(View view, float f10, float f11, boolean z10) {
            return view.dispatchNestedFling(f10, f11, z10);
        }

        public static boolean d(View view, float f10, float f11) {
            return view.dispatchNestedPreFling(f10, f11);
        }

        public static boolean e(View view, int i10, int i11, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
        }

        public static boolean f(View view, int i10, int i11, int i12, int i13, int[] iArr) {
            return view.dispatchNestedScroll(i10, i11, i12, i13, iArr);
        }

        public static ColorStateList g(View view) {
            return view.getBackgroundTintList();
        }

        public static PorterDuff.Mode h(View view) {
            return view.getBackgroundTintMode();
        }

        public static float i(View view) {
            return view.getElevation();
        }

        public static m0 j(View view) {
            return m0.a.a(view);
        }

        public static String k(View view) {
            return view.getTransitionName();
        }

        public static float l(View view) {
            return view.getTranslationZ();
        }

        public static float m(View view) {
            return view.getZ();
        }

        public static boolean n(View view) {
            return view.hasNestedScrollingParent();
        }

        public static boolean o(View view) {
            return view.isImportantForAccessibility();
        }

        public static boolean p(View view) {
            return view.isNestedScrollingEnabled();
        }

        public static void q(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        public static void r(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        public static void s(View view, float f10) {
            view.setElevation(f10);
        }

        public static void t(View view, boolean z10) {
            view.setNestedScrollingEnabled(z10);
        }

        public static void u(View view, q0.u uVar) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(d0.c.L, uVar);
            }
            if (uVar == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(d0.c.T));
            } else {
                view.setOnApplyWindowInsetsListener(new a(view, uVar));
            }
        }

        public static void v(View view, String str) {
            view.setTransitionName(str);
        }

        public static void w(View view, float f10) {
            view.setTranslationZ(f10);
        }

        public static void x(View view, float f10) {
            view.setZ(f10);
        }

        public static boolean y(View view, int i10) {
            return view.startNestedScroll(i10);
        }

        public static void z(View view) {
            view.stopNestedScroll();
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class n {
        public static m0 a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            m0 w10 = m0.w(rootWindowInsets);
            w10.t(w10);
            w10.d(view.getRootView());
            return w10;
        }

        public static int b(View view) {
            return view.getScrollIndicators();
        }

        public static void c(View view, int i10) {
            view.setScrollIndicators(i10);
        }

        public static void d(View view, int i10, int i11) {
            view.setScrollIndicators(i10, i11);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class o {
        public static void a(View view) {
            view.cancelDragAndDrop();
        }

        public static void b(View view) {
            view.dispatchFinishTemporaryDetach();
        }

        public static void c(View view) {
            view.dispatchStartTemporaryDetach();
        }

        public static void d(View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }

        public static boolean e(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object obj, int i10) {
            return view.startDragAndDrop(clipData, dragShadowBuilder, obj, i10);
        }

        public static void f(View view, View.DragShadowBuilder dragShadowBuilder) {
            view.updateDragShadow(dragShadowBuilder);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class p {
        public static void a(View view, Collection<View> collection, int i10) {
            view.addKeyboardNavigationClusters(collection, i10);
        }

        public static int b(View view) {
            return view.getImportantForAutofill();
        }

        public static int c(View view) {
            return view.getNextClusterForwardId();
        }

        public static boolean d(View view) {
            return view.hasExplicitFocusable();
        }

        public static boolean e(View view) {
            return view.isFocusedByDefault();
        }

        public static boolean f(View view) {
            return view.isImportantForAutofill();
        }

        public static boolean g(View view) {
            return view.isKeyboardNavigationCluster();
        }

        public static View h(View view, View view2, int i10) {
            return view.keyboardNavigationClusterSearch(view2, i10);
        }

        public static boolean i(View view) {
            return view.restoreDefaultFocus();
        }

        public static void j(View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        public static void k(View view, boolean z10) {
            view.setFocusedByDefault(z10);
        }

        public static void l(View view, int i10) {
            view.setImportantForAutofill(i10);
        }

        public static void m(View view, boolean z10) {
            view.setKeyboardNavigationCluster(z10);
        }

        public static void n(View view, int i10) {
            view.setNextClusterForwardId(i10);
        }

        public static void o(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class q {
        public static void a(View view, final v vVar) {
            int i10 = d0.c.S;
            s.g gVar = (s.g) view.getTag(i10);
            if (gVar == null) {
                gVar = new s.g();
                view.setTag(i10, gVar);
            }
            vVar.getClass();
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: q0.c0
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return b0.v.this.onUnhandledKeyEvent(view2, keyEvent);
                }
            };
            gVar.put(vVar, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        public static CharSequence b(View view) {
            return view.getAccessibilityPaneTitle();
        }

        public static boolean c(View view) {
            return view.isAccessibilityHeading();
        }

        public static boolean d(View view) {
            return view.isScreenReaderFocusable();
        }

        public static void e(View view, v vVar) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            s.g gVar = (s.g) view.getTag(d0.c.S);
            if (gVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) gVar.get(vVar)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        public static <T> T f(View view, int i10) {
            return (T) view.requireViewById(i10);
        }

        public static void g(View view, boolean z10) {
            view.setAccessibilityHeading(z10);
        }

        public static void h(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        public static void i(View view, boolean z10) {
            view.setScreenReaderFocusable(z10);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class r {
        public static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        public static List<Rect> b(View view) {
            return view.getSystemGestureExclusionRects();
        }

        public static void c(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10, int i11) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i10, i11);
        }

        public static void d(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class s {
        public static CharSequence a(View view) {
            return view.getStateDescription();
        }

        public static void b(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static final class t {
        public static String[] a(View view) {
            return view.getReceiveContentMimeTypes();
        }

        public static q0.c b(View view, q0.c cVar) {
            ContentInfo f10 = cVar.f();
            ContentInfo performReceiveContent = view.performReceiveContent(f10);
            if (performReceiveContent == null) {
                return null;
            }
            return performReceiveContent == f10 ? cVar : q0.c.g(performReceiveContent);
        }

        public static void c(View view, String[] strArr, q0.v vVar) {
            if (vVar == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new u(vVar));
            }
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static final class u implements OnReceiveContentListener {

        /* renamed from: a, reason: collision with root package name */
        public final q0.v f12288a;

        public u(q0.v vVar) {
            this.f12288a = vVar;
        }

        @Override // android.view.OnReceiveContentListener
        public ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
            q0.c g10 = q0.c.g(contentInfo);
            q0.c a10 = this.f12288a.a(view, g10);
            if (a10 == null) {
                return null;
            }
            return a10 == g10 ? contentInfo : a10.f();
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public interface v {
        boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent);
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    public static class w {

        /* renamed from: d, reason: collision with root package name */
        public static final ArrayList<WeakReference<View>> f12289d = new ArrayList<>();

        /* renamed from: a, reason: collision with root package name */
        public WeakHashMap<View, Boolean> f12290a = null;

        /* renamed from: b, reason: collision with root package name */
        public SparseArray<WeakReference<View>> f12291b = null;

        /* renamed from: c, reason: collision with root package name */
        public WeakReference<KeyEvent> f12292c = null;

        public static w a(View view) {
            int i10 = d0.c.R;
            w wVar = (w) view.getTag(i10);
            if (wVar != null) {
                return wVar;
            }
            w wVar2 = new w();
            view.setTag(i10, wVar2);
            return wVar2;
        }

        public boolean b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                g();
            }
            View c10 = c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (c10 != null && !KeyEvent.isModifierKey(keyCode)) {
                    d().put(keyCode, new WeakReference<>(c10));
                }
            }
            return c10 != null;
        }

        public final View c(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f12290a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View c10 = c(viewGroup.getChildAt(childCount), keyEvent);
                        if (c10 != null) {
                            return c10;
                        }
                    }
                }
                if (e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        public final SparseArray<WeakReference<View>> d() {
            if (this.f12291b == null) {
                this.f12291b = new SparseArray<>();
            }
            return this.f12291b;
        }

        public final boolean e(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(d0.c.S);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((v) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        public boolean f(KeyEvent keyEvent) {
            int indexOfKey;
            WeakReference<KeyEvent> weakReference = this.f12292c;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f12292c = new WeakReference<>(keyEvent);
            WeakReference<View> weakReference2 = null;
            SparseArray<WeakReference<View>> d10 = d();
            if (keyEvent.getAction() == 1 && (indexOfKey = d10.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                weakReference2 = d10.valueAt(indexOfKey);
                d10.removeAt(indexOfKey);
            }
            if (weakReference2 == null) {
                weakReference2 = d10.get(keyEvent.getKeyCode());
            }
            if (weakReference2 == null) {
                return false;
            }
            View view = weakReference2.get();
            if (view != null && b0.W(view)) {
                e(view, keyEvent);
            }
            return true;
        }

        public final void g() {
            WeakHashMap<View, Boolean> weakHashMap = this.f12290a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList = f12289d;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                if (this.f12290a == null) {
                    this.f12290a = new WeakHashMap<>();
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ArrayList<WeakReference<View>> arrayList2 = f12289d;
                    View view = arrayList2.get(size).get();
                    if (view == null) {
                        arrayList2.remove(size);
                    } else {
                        this.f12290a.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f12290a.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static q0.w A(View view) {
        if (view instanceof q0.w) {
            return (q0.w) view;
        }
        return f12278l;
    }

    public static void A0(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            j.c(view, rect);
        }
    }

    public static boolean B(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.b(view);
        }
        return false;
    }

    public static void B0(View view, float f10) {
        if (Build.VERSION.SDK_INT >= 21) {
            m.s(view, f10);
        }
    }

    public static int C(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.c(view);
        }
        return 0;
    }

    @Deprecated
    public static void C0(View view, boolean z10) {
        view.setFitsSystemWindows(z10);
    }

    @SuppressLint({"InlinedApi"})
    public static int D(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return p.b(view);
        }
        return 0;
    }

    public static void D0(View view, boolean z10) {
        if (Build.VERSION.SDK_INT >= 16) {
            h.r(view, z10);
        }
    }

    public static int E(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return i.d(view);
        }
        return 0;
    }

    public static void E0(View view, int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 19) {
            h.s(view, i10);
        } else if (i11 >= 16) {
            if (i10 == 4) {
                i10 = 2;
            }
            h.s(view, i10);
        }
    }

    public static int F(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.d(view);
        }
        if (!f12271e) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f12270d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f12271e = true;
        }
        Field field = f12270d;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    public static void F0(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 26) {
            p.l(view, i10);
        }
    }

    public static int G(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.e(view);
        }
        if (!f12269c) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f12268b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f12269c = true;
        }
        Field field = f12268b;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    public static void G0(View view, q0.u uVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            m.u(view, uVar);
        }
    }

    public static String[] H(View view) {
        if (Build.VERSION.SDK_INT >= 31) {
            return t.a(view);
        }
        return (String[]) view.getTag(d0.c.N);
    }

    public static void H0(View view, int i10, int i11, int i12, int i13) {
        if (Build.VERSION.SDK_INT >= 17) {
            i.k(view, i10, i11, i12, i13);
        } else {
            view.setPadding(i10, i11, i12, i13);
        }
    }

    public static int I(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return i.e(view);
        }
        return view.getPaddingRight();
    }

    public static void I0(View view, y yVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            o.d(view, (PointerIcon) (yVar != null ? yVar.a() : null));
        }
    }

    public static int J(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return i.f(view);
        }
        return view.getPaddingLeft();
    }

    @Deprecated
    public static void J0(View view, float f10) {
        view.setScaleX(f10);
    }

    public static ViewParent K(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.f(view);
        }
        return view.getParent();
    }

    @Deprecated
    public static void K0(View view, float f10) {
        view.setScaleY(f10);
    }

    public static m0 L(View view) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23) {
            return n.a(view);
        }
        if (i10 >= 21) {
            return m.j(view);
        }
        return null;
    }

    public static void L0(View view, boolean z10) {
        s0().g(view, Boolean.valueOf(z10));
    }

    @Deprecated
    public static float M(View view) {
        return view.getScaleX();
    }

    public static void M0(View view, int i10, int i11) {
        if (Build.VERSION.SDK_INT >= 23) {
            n.d(view, i10, i11);
        }
    }

    public static CharSequence N(View view) {
        return T0().f(view);
    }

    public static void N0(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            T0().g(view, charSequence);
        }
    }

    public static String O(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m.k(view);
        }
        WeakHashMap<View, String> weakHashMap = f12272f;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    public static void O0(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            m.v(view, str);
            return;
        }
        if (f12272f == null) {
            f12272f = new WeakHashMap<>();
        }
        f12272f.put(view, str);
    }

    public static float P(View view) {
        return Build.VERSION.SDK_INT >= 21 ? m.l(view) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public static void P0(View view, float f10) {
        if (Build.VERSION.SDK_INT >= 21) {
            m.w(view, f10);
        }
    }

    @Deprecated
    public static int Q(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.g(view);
        }
        return 0;
    }

    public static void Q0(View view) {
        if (C(view) == 0) {
            E0(view, 1);
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (C((View) parent) == 4) {
                E0(view, 2);
                return;
            }
        }
    }

    public static float R(View view) {
        return Build.VERSION.SDK_INT >= 21 ? m.m(view) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public static void R0(View view, l0.b bVar) {
        l0.d(view, bVar);
    }

    public static boolean S(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return g.a(view);
        }
        return false;
    }

    public static void S0(View view, float f10) {
        if (Build.VERSION.SDK_INT >= 21) {
            m.x(view, f10);
        }
    }

    public static boolean T(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.h(view);
        }
        return true;
    }

    public static f<CharSequence> T0() {
        return new c(d0.c.P, CharSequence.class, 64, 30);
    }

    public static boolean U(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.i(view);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void U0(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            m.z(view);
        } else if (view instanceof q0.o) {
            ((q0.o) view).stopNestedScroll();
        }
    }

    public static boolean V(View view) {
        Boolean f10 = b().f(view);
        return f10 != null && f10.booleanValue();
    }

    public static void V0(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static boolean W(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return k.b(view);
        }
        return view.getWindowToken() != null;
    }

    public static boolean X(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return k.c(view);
        }
        return view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean Y(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m.p(view);
        }
        if (view instanceof q0.o) {
            return ((q0.o) view).isNestedScrollingEnabled();
        }
        return false;
    }

    public static boolean Z(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return i.g(view);
        }
        return false;
    }

    public static boolean a0(View view) {
        Boolean f10 = s0().f(view);
        return f10 != null && f10.booleanValue();
    }

    public static f<Boolean> b() {
        return new d(d0.c.J, Boolean.class, 28);
    }

    public static /* synthetic */ q0.c b0(q0.c cVar) {
        return cVar;
    }

    public static int c(View view, CharSequence charSequence, r0.f fVar) {
        int t10 = t(view, charSequence);
        if (t10 != -1) {
            d(view, new c.a(t10, charSequence, fVar));
        }
        return t10;
    }

    public static void c0(View view, int i10) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z10 = r(view) != null && view.getVisibility() == 0;
            if (q(view) != 0 || z10) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z10 ? 32 : RecyclerView.e0.FLAG_MOVED);
                k.g(obtain, i10);
                if (z10) {
                    obtain.getText().add(r(view));
                    Q0(view);
                }
                view.sendAccessibilityEventUnchecked(obtain);
                return;
            }
            if (i10 == 32) {
                AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(obtain2);
                obtain2.setEventType(32);
                k.g(obtain2, i10);
                obtain2.setSource(view);
                view.onPopulateAccessibilityEvent(obtain2);
                obtain2.getText().add(r(view));
                accessibilityManager.sendAccessibilityEvent(obtain2);
                return;
            }
            if (view.getParent() != null) {
                try {
                    k.e(view.getParent(), view, view, i10);
                } catch (AbstractMethodError unused) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(view.getParent().getClass().getSimpleName());
                    sb2.append(" does not fully implement ViewParent");
                }
            }
        }
    }

    public static void d(View view, c.a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            l(view);
            o0(aVar.b(), view);
            s(view).add(aVar);
            c0(view, 0);
        }
    }

    public static void d0(View view, int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 23) {
            view.offsetLeftAndRight(i10);
            return;
        }
        if (i11 >= 21) {
            Rect z10 = z();
            boolean z11 = false;
            Object parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                z10.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z11 = !z10.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            f(view, i10);
            if (z11 && z10.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(z10);
                return;
            }
            return;
        }
        f(view, i10);
    }

    public static g0 e(View view) {
        if (f12273g == null) {
            f12273g = new WeakHashMap<>();
        }
        g0 g0Var = f12273g.get(view);
        if (g0Var != null) {
            return g0Var;
        }
        g0 g0Var2 = new g0(view);
        f12273g.put(view, g0Var2);
        return g0Var2;
    }

    public static void e0(View view, int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 23) {
            view.offsetTopAndBottom(i10);
            return;
        }
        if (i11 >= 21) {
            Rect z10 = z();
            boolean z11 = false;
            Object parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                z10.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z11 = !z10.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            g(view, i10);
            if (z11 && z10.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(z10);
                return;
            }
            return;
        }
        g(view, i10);
    }

    public static void f(View view, int i10) {
        view.offsetLeftAndRight(i10);
        if (view.getVisibility() == 0) {
            V0(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                V0((View) parent);
            }
        }
    }

    public static m0 f0(View view, m0 m0Var) {
        WindowInsets v10;
        if (Build.VERSION.SDK_INT >= 21 && (v10 = m0Var.v()) != null) {
            WindowInsets b10 = l.b(view, v10);
            if (!b10.equals(v10)) {
                return m0.x(b10, view);
            }
        }
        return m0Var;
    }

    public static void g(View view, int i10) {
        view.offsetTopAndBottom(i10);
        if (view.getVisibility() == 0) {
            V0(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                V0((View) parent);
            }
        }
    }

    public static void g0(View view, r0.c cVar) {
        view.onInitializeAccessibilityNodeInfo(cVar.F0());
    }

    public static m0 h(View view, m0 m0Var, Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? m.b(view, m0Var, rect) : m0Var;
    }

    public static f<CharSequence> h0() {
        return new b(d0.c.K, CharSequence.class, 8, 28);
    }

    public static m0 i(View view, m0 m0Var) {
        WindowInsets v10;
        if (Build.VERSION.SDK_INT >= 21 && (v10 = m0Var.v()) != null) {
            WindowInsets a10 = l.a(view, v10);
            if (!a10.equals(v10)) {
                return m0.x(a10, view);
            }
        }
        return m0Var;
    }

    public static boolean i0(View view, int i10, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.j(view, i10, bundle);
        }
        return false;
    }

    public static boolean j(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return w.a(view).b(view, keyEvent);
    }

    public static q0.c j0(View view, q0.c cVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("performReceiveContent: ");
            sb2.append(cVar);
            sb2.append(", view=");
            sb2.append(view.getClass().getSimpleName());
            sb2.append("[");
            sb2.append(view.getId());
            sb2.append("]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return t.b(view, cVar);
        }
        q0.v vVar = (q0.v) view.getTag(d0.c.M);
        if (vVar != null) {
            q0.c a10 = vVar.a(view, cVar);
            if (a10 == null) {
                return null;
            }
            return A(view).onReceiveContent(a10);
        }
        return A(view).onReceiveContent(cVar);
    }

    public static boolean k(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return w.a(view).f(keyEvent);
    }

    public static void k0(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            h.k(view);
        } else {
            view.postInvalidate();
        }
    }

    public static void l(View view) {
        q0.a n10 = n(view);
        if (n10 == null) {
            n10 = new q0.a();
        }
        t0(view, n10);
    }

    public static void l0(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            h.m(view, runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    public static int m() {
        AtomicInteger atomicInteger;
        int i10;
        int i11;
        if (Build.VERSION.SDK_INT >= 17) {
            return i.a();
        }
        do {
            atomicInteger = f12267a;
            i10 = atomicInteger.get();
            i11 = i10 + 1;
            if (i11 > 16777215) {
                i11 = 1;
            }
        } while (!atomicInteger.compareAndSet(i10, i11));
        return i10;
    }

    @SuppressLint({"LambdaLast"})
    public static void m0(View view, Runnable runnable, long j10) {
        if (Build.VERSION.SDK_INT >= 16) {
            h.n(view, runnable, j10);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j10);
        }
    }

    public static q0.a n(View view) {
        View.AccessibilityDelegate o10 = o(view);
        if (o10 == null) {
            return null;
        }
        if (o10 instanceof a.C0301a) {
            return ((a.C0301a) o10).f12262a;
        }
        return new q0.a(o10);
    }

    public static void n0(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 21) {
            o0(i10, view);
            c0(view, 0);
        }
    }

    public static View.AccessibilityDelegate o(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return r.a(view);
        }
        return p(view);
    }

    public static void o0(int i10, View view) {
        List<c.a> s10 = s(view);
        for (int i11 = 0; i11 < s10.size(); i11++) {
            if (s10.get(i11).b() == i10) {
                s10.remove(i11);
                return;
            }
        }
    }

    public static View.AccessibilityDelegate p(View view) {
        if (f12275i) {
            return null;
        }
        if (f12274h == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f12274h = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f12275i = true;
                return null;
            }
        }
        try {
            Object obj = f12274h.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f12275i = true;
            return null;
        }
    }

    public static void p0(View view, c.a aVar, CharSequence charSequence, r0.f fVar) {
        if (fVar == null && charSequence == null) {
            n0(view, aVar.b());
        } else {
            d(view, aVar.a(charSequence, fVar));
        }
    }

    public static int q(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return k.a(view);
        }
        return 0;
    }

    public static void q0(View view) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 20) {
            l.c(view);
        } else if (i10 >= 16) {
            h.p(view);
        }
    }

    public static CharSequence r(View view) {
        return h0().f(view);
    }

    public static void r0(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10, int i11) {
        if (Build.VERSION.SDK_INT >= 29) {
            r.c(view, context, iArr, attributeSet, typedArray, i10, i11);
        }
    }

    public static List<c.a> s(View view) {
        int i10 = d0.c.H;
        ArrayList arrayList = (ArrayList) view.getTag(i10);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(i10, arrayList2);
        return arrayList2;
    }

    public static f<Boolean> s0() {
        return new a(d0.c.O, Boolean.class, 28);
    }

    public static int t(View view, CharSequence charSequence) {
        List<c.a> s10 = s(view);
        for (int i10 = 0; i10 < s10.size(); i10++) {
            if (TextUtils.equals(charSequence, s10.get(i10).c())) {
                return s10.get(i10).b();
            }
        }
        int i11 = 0;
        int i12 = -1;
        while (true) {
            int[] iArr = f12277k;
            if (i11 >= iArr.length || i12 != -1) {
                break;
            }
            int i13 = iArr[i11];
            boolean z10 = true;
            for (int i14 = 0; i14 < s10.size(); i14++) {
                z10 &= s10.get(i14).b() != i13;
            }
            if (z10) {
                i12 = i13;
            }
            i11++;
        }
        return i12;
    }

    public static void t0(View view, q0.a aVar) {
        if (aVar == null && (o(view) instanceof a.C0301a)) {
            aVar = new q0.a();
        }
        view.setAccessibilityDelegate(aVar == null ? null : aVar.getBridge());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ColorStateList u(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m.g(view);
        }
        if (view instanceof z) {
            return ((z) view).getSupportBackgroundTintList();
        }
        return null;
    }

    public static void u0(View view, boolean z10) {
        b().g(view, Boolean.valueOf(z10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PorterDuff.Mode v(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m.h(view);
        }
        if (view instanceof z) {
            return ((z) view).getSupportBackgroundTintMode();
        }
        return null;
    }

    public static void v0(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 19) {
            k.f(view, i10);
        }
    }

    public static Rect w(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return j.a(view);
        }
        return null;
    }

    public static void w0(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            h0().g(view, charSequence);
            if (charSequence != null) {
                f12279m.a(view);
            } else {
                f12279m.d(view);
            }
        }
    }

    public static Display x(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return i.b(view);
        }
        if (W(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    public static void x0(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            h.q(view, drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static float y(View view) {
        return Build.VERSION.SDK_INT >= 21 ? m.i(view) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void y0(View view, ColorStateList colorStateList) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            m.q(view, colorStateList);
            if (i10 == 21) {
                Drawable background = view.getBackground();
                boolean z10 = (m.g(view) == null && m.h(view) == null) ? false : true;
                if (background == null || !z10) {
                    return;
                }
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                h.q(view, background);
                return;
            }
            return;
        }
        if (view instanceof z) {
            ((z) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    public static Rect z() {
        if (f12276j == null) {
            f12276j = new ThreadLocal<>();
        }
        Rect rect = f12276j.get();
        if (rect == null) {
            rect = new Rect();
            f12276j.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void z0(View view, PorterDuff.Mode mode) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            m.r(view, mode);
            if (i10 == 21) {
                Drawable background = view.getBackground();
                boolean z10 = (m.g(view) == null && m.h(view) == null) ? false : true;
                if (background == null || !z10) {
                    return;
                }
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                h.q(view, background);
                return;
            }
            return;
        }
        if (view instanceof z) {
            ((z) view).setSupportBackgroundTintMode(mode);
        }
    }
}
