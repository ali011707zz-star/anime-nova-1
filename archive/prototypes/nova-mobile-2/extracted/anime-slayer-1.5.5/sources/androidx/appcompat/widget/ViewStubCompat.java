package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class ViewStubCompat extends View {

    /* renamed from: f, reason: collision with root package name */
    public int f1241f;

    /* renamed from: g, reason: collision with root package name */
    public int f1242g;

    /* renamed from: h, reason: collision with root package name */
    public WeakReference<View> f1243h;

    /* renamed from: i, reason: collision with root package name */
    public LayoutInflater f1244i;

    /* renamed from: j, reason: collision with root package name */
    public a f1245j;

    /* loaded from: classes.dex */
    public interface a {
        void a(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public View a() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f1241f != 0) {
                ViewGroup viewGroup = (ViewGroup) parent;
                LayoutInflater layoutInflater = this.f1244i;
                if (layoutInflater == null) {
                    layoutInflater = LayoutInflater.from(getContext());
                }
                View inflate = layoutInflater.inflate(this.f1241f, viewGroup, false);
                int i10 = this.f1242g;
                if (i10 != -1) {
                    inflate.setId(i10);
                }
                int indexOfChild = viewGroup.indexOfChild(this);
                viewGroup.removeViewInLayout(this);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (layoutParams != null) {
                    viewGroup.addView(inflate, indexOfChild, layoutParams);
                } else {
                    viewGroup.addView(inflate, indexOfChild);
                }
                this.f1243h = new WeakReference<>(inflate);
                a aVar = this.f1245j;
                if (aVar != null) {
                    aVar.a(this, inflate);
                }
                return inflate;
            }
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f1242g;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f1244i;
    }

    public int getLayoutResource() {
        return this.f1241f;
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i10) {
        this.f1242g = i10;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1244i = layoutInflater;
    }

    public void setLayoutResource(int i10) {
        this.f1241f = i10;
    }

    public void setOnInflateListener(a aVar) {
        this.f1245j = aVar;
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        WeakReference<View> weakReference = this.f1243h;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view != null) {
                view.setVisibility(i10);
                return;
            }
            throw new IllegalStateException("setVisibility called on un-referenced view");
        }
        super.setVisibility(i10);
        if (i10 == 0 || i10 == 4) {
            a();
        }
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1241f = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.j.Y3, i10, 0);
        this.f1242g = obtainStyledAttributes.getResourceId(d.j.f5335b4, -1);
        this.f1241f = obtainStyledAttributes.getResourceId(d.j.f5329a4, 0);
        setId(obtainStyledAttributes.getResourceId(d.j.Z3, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }
}
