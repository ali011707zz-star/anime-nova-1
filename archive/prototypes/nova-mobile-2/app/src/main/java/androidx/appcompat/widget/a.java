package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: AbsActionBarView.java */
/* loaded from: classes.dex */
public abstract class a extends ViewGroup {

    /* renamed from: f, reason: collision with root package name */
    public final C0029a f1246f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f1247g;

    /* renamed from: h, reason: collision with root package name */
    public ActionMenuView f1248h;

    /* renamed from: i, reason: collision with root package name */
    public c f1249i;

    /* renamed from: j, reason: collision with root package name */
    public int f1250j;

    /* renamed from: k, reason: collision with root package name */
    public q0.g0 f1251k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f1252l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1253m;

    /* compiled from: AbsActionBarView.java */
    /* renamed from: androidx.appcompat.widget.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0029a implements q0.h0 {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1254a = false;

        /* renamed from: b, reason: collision with root package name */
        public int f1255b;

        public C0029a() {
        }

        @Override // q0.h0
        public void a(View view) {
            this.f1254a = true;
        }

        @Override // q0.h0
        public void b(View view) {
            if (this.f1254a) {
                return;
            }
            a aVar = a.this;
            aVar.f1251k = null;
            a.super.setVisibility(this.f1255b);
        }

        @Override // q0.h0
        public void c(View view) {
            a.super.setVisibility(0);
            this.f1254a = false;
        }

        public C0029a d(q0.g0 g0Var, int i10) {
            a.this.f1251k = g0Var;
            this.f1255b = i10;
            return this;
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static int d(int i10, int i11, boolean z10) {
        return z10 ? i10 - i11 : i10 + i11;
    }

    public int c(View view, int i10, int i11, int i12) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE), i11);
        return Math.max(0, (i10 - view.getMeasuredWidth()) - i12);
    }

    public int e(View view, int i10, int i11, int i12, boolean z10) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i13 = i11 + ((i12 - measuredHeight) / 2);
        if (z10) {
            view.layout(i10 - measuredWidth, i13, i10, measuredHeight + i13);
        } else {
            view.layout(i10, i13, i10 + measuredWidth, measuredHeight + i13);
        }
        return z10 ? -measuredWidth : measuredWidth;
    }

    public q0.g0 f(int i10, long j10) {
        q0.g0 g0Var = this.f1251k;
        if (g0Var != null) {
            g0Var.b();
        }
        if (i10 == 0) {
            if (getVisibility() != 0) {
                setAlpha(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
            q0.g0 a10 = q0.b0.e(this).a(1.0f);
            a10.d(j10);
            a10.f(this.f1246f.d(a10, i10));
            return a10;
        }
        q0.g0 a11 = q0.b0.e(this).a(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        a11.d(j10);
        a11.f(this.f1246f.d(a11, i10));
        return a11;
    }

    public int getAnimatedVisibility() {
        if (this.f1251k != null) {
            return this.f1246f.f1255b;
        }
        return getVisibility();
    }

    public int getContentHeight() {
        return this.f1250j;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, d.j.f5324a, d.a.f5184c, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(d.j.f5371j, 0));
        obtainStyledAttributes.recycle();
        c cVar = this.f1249i;
        if (cVar != null) {
            cVar.x(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1253m = false;
        }
        if (!this.f1253m) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1253m = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1253m = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1252l = false;
        }
        if (!this.f1252l) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1252l = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1252l = false;
        }
        return true;
    }

    public void setContentHeight(int i10) {
        this.f1250j = i10;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        if (i10 != getVisibility()) {
            q0.g0 g0Var = this.f1251k;
            if (g0Var != null) {
                g0Var.b();
            }
            super.setVisibility(i10);
        }
    }

    public a(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1246f = new C0029a();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(d.a.f5182a, typedValue, true) && typedValue.resourceId != 0) {
            this.f1247g = new ContextThemeWrapper(context, typedValue.resourceId);
        } else {
            this.f1247g = context;
        }
    }
}
