package x1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* compiled from: ViewOverlayApi14.java */
/* loaded from: classes.dex */
public class b0 implements d0 {

    /* renamed from: a, reason: collision with root package name */
    public a f15678a;

    /* compiled from: ViewOverlayApi14.java */
    /* loaded from: classes.dex */
    public static class a extends ViewGroup {

        /* renamed from: k, reason: collision with root package name */
        public static Method f15679k;

        /* renamed from: f, reason: collision with root package name */
        public ViewGroup f15680f;

        /* renamed from: g, reason: collision with root package name */
        public View f15681g;

        /* renamed from: h, reason: collision with root package name */
        public ArrayList<Drawable> f15682h;

        /* renamed from: i, reason: collision with root package name */
        public b0 f15683i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f15684j;

        static {
            try {
                Class cls = Integer.TYPE;
                f15679k = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        public a(Context context, ViewGroup viewGroup, View view, b0 b0Var) {
            super(context);
            this.f15682h = null;
            this.f15680f = viewGroup;
            this.f15681g = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f15683i = b0Var;
        }

        public void a(Drawable drawable) {
            c();
            if (this.f15682h == null) {
                this.f15682h = new ArrayList<>();
            }
            if (this.f15682h.contains(drawable)) {
                return;
            }
            this.f15682h.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        public void b(View view) {
            c();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f15680f && viewGroup.getParent() != null && q0.b0.W(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f15680f.getLocationOnScreen(iArr2);
                    q0.b0.d0(view, iArr[0] - iArr2[0]);
                    q0.b0.e0(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        public final void c() {
            if (this.f15684j) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        public final void d() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f15682h;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f15684j = true;
                    this.f15680f.removeView(this);
                }
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            this.f15680f.getLocationOnScreen(new int[2]);
            this.f15681g.getLocationOnScreen(new int[2]);
            canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f15681g.getWidth(), this.f15681g.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f15682h;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f15682h.get(i10).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public final void e(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f15680f.getLocationOnScreen(iArr2);
            this.f15681g.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        public void f(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f15682h;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                d();
            }
        }

        public void g(View view) {
            super.removeView(view);
            d();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f15680f == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (this.f15680f instanceof ViewGroup) {
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                e(iArr2);
                rect.offset(iArr2[0], iArr2[1]);
                return super.invalidateChildInParent(iArr, rect);
            }
            invalidate(rect);
            return null;
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        }

        @Override // android.view.View
        public boolean verifyDrawable(Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f15682h) != null && arrayList.contains(drawable));
        }
    }

    public b0(Context context, ViewGroup viewGroup, View view) {
        this.f15678a = new a(context, viewGroup, view, this);
    }

    public static b0 a(View view) {
        ViewGroup b10 = b(view);
        if (b10 == null) {
            return null;
        }
        int childCount = b10.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = b10.getChildAt(i10);
            if (childAt instanceof a) {
                return ((a) childAt).f15683i;
            }
        }
        return new w(b10.getContext(), b10, view);
    }

    public static ViewGroup b(View view) {
        while (view != null) {
            if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return null;
    }

    @Override // x1.d0
    public void add(Drawable drawable) {
        this.f15678a.a(drawable);
    }

    @Override // x1.d0
    public void remove(Drawable drawable) {
        this.f15678a.f(drawable);
    }
}
