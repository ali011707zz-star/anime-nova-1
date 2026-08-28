package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: OrientationHelper.java */
/* loaded from: classes.dex */
public abstract class s {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView.p f3079a;

    /* renamed from: b, reason: collision with root package name */
    public int f3080b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f3081c;

    /* compiled from: OrientationHelper.java */
    /* loaded from: classes.dex */
    public class a extends s {
        public a(RecyclerView.p pVar) {
            super(pVar, null);
        }

        @Override // androidx.recyclerview.widget.s
        public int d(View view) {
            return this.f3079a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.s
        public int e(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return this.f3079a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.s
        public int f(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return this.f3079a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.s
        public int g(View view) {
            return this.f3079a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.s
        public int h() {
            return this.f3079a.getWidth();
        }

        @Override // androidx.recyclerview.widget.s
        public int i() {
            return this.f3079a.getWidth() - this.f3079a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.s
        public int j() {
            return this.f3079a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.s
        public int k() {
            return this.f3079a.getWidthMode();
        }

        @Override // androidx.recyclerview.widget.s
        public int l() {
            return this.f3079a.getHeightMode();
        }

        @Override // androidx.recyclerview.widget.s
        public int m() {
            return this.f3079a.getPaddingLeft();
        }

        @Override // androidx.recyclerview.widget.s
        public int n() {
            return (this.f3079a.getWidth() - this.f3079a.getPaddingLeft()) - this.f3079a.getPaddingRight();
        }

        @Override // androidx.recyclerview.widget.s
        public int p(View view) {
            this.f3079a.getTransformedBoundingBox(view, true, this.f3081c);
            return this.f3081c.right;
        }

        @Override // androidx.recyclerview.widget.s
        public int q(View view) {
            this.f3079a.getTransformedBoundingBox(view, true, this.f3081c);
            return this.f3081c.left;
        }

        @Override // androidx.recyclerview.widget.s
        public void r(int i10) {
            this.f3079a.offsetChildrenHorizontal(i10);
        }
    }

    /* compiled from: OrientationHelper.java */
    /* loaded from: classes.dex */
    public class b extends s {
        public b(RecyclerView.p pVar) {
            super(pVar, null);
        }

        @Override // androidx.recyclerview.widget.s
        public int d(View view) {
            return this.f3079a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.s
        public int e(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return this.f3079a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.s
        public int f(View view) {
            RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
            return this.f3079a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin;
        }

        @Override // androidx.recyclerview.widget.s
        public int g(View view) {
            return this.f3079a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.s
        public int h() {
            return this.f3079a.getHeight();
        }

        @Override // androidx.recyclerview.widget.s
        public int i() {
            return this.f3079a.getHeight() - this.f3079a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.s
        public int j() {
            return this.f3079a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.s
        public int k() {
            return this.f3079a.getHeightMode();
        }

        @Override // androidx.recyclerview.widget.s
        public int l() {
            return this.f3079a.getWidthMode();
        }

        @Override // androidx.recyclerview.widget.s
        public int m() {
            return this.f3079a.getPaddingTop();
        }

        @Override // androidx.recyclerview.widget.s
        public int n() {
            return (this.f3079a.getHeight() - this.f3079a.getPaddingTop()) - this.f3079a.getPaddingBottom();
        }

        @Override // androidx.recyclerview.widget.s
        public int p(View view) {
            this.f3079a.getTransformedBoundingBox(view, true, this.f3081c);
            return this.f3081c.bottom;
        }

        @Override // androidx.recyclerview.widget.s
        public int q(View view) {
            this.f3079a.getTransformedBoundingBox(view, true, this.f3081c);
            return this.f3081c.top;
        }

        @Override // androidx.recyclerview.widget.s
        public void r(int i10) {
            this.f3079a.offsetChildrenVertical(i10);
        }
    }

    public /* synthetic */ s(RecyclerView.p pVar, a aVar) {
        this(pVar);
    }

    public static s a(RecyclerView.p pVar) {
        return new a(pVar);
    }

    public static s b(RecyclerView.p pVar, int i10) {
        if (i10 == 0) {
            return a(pVar);
        }
        if (i10 == 1) {
            return c(pVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static s c(RecyclerView.p pVar) {
        return new b(pVar);
    }

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f(View view);

    public abstract int g(View view);

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public int o() {
        if (Integer.MIN_VALUE == this.f3080b) {
            return 0;
        }
        return n() - this.f3080b;
    }

    public abstract int p(View view);

    public abstract int q(View view);

    public abstract void r(int i10);

    public void s() {
        this.f3080b = n();
    }

    public s(RecyclerView.p pVar) {
        this.f3080b = Integer.MIN_VALUE;
        this.f3081c = new Rect();
        this.f3079a = pVar;
    }
}
