package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.a;
import androidx.appcompat.widget.LinearLayoutCompat;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* compiled from: ScrollingTabContainerView.java */
/* loaded from: classes.dex */
public class o0 extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* renamed from: o, reason: collision with root package name */
    public static final Interpolator f1427o = new DecelerateInterpolator();

    /* renamed from: f, reason: collision with root package name */
    public Runnable f1428f;

    /* renamed from: g, reason: collision with root package name */
    public c f1429g;

    /* renamed from: h, reason: collision with root package name */
    public LinearLayoutCompat f1430h;

    /* renamed from: i, reason: collision with root package name */
    public Spinner f1431i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f1432j;

    /* renamed from: k, reason: collision with root package name */
    public int f1433k;

    /* renamed from: l, reason: collision with root package name */
    public int f1434l;

    /* renamed from: m, reason: collision with root package name */
    public int f1435m;

    /* renamed from: n, reason: collision with root package name */
    public int f1436n;

    /* compiled from: ScrollingTabContainerView.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f1437f;

        public a(View view) {
            this.f1437f = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.this.smoothScrollTo(this.f1437f.getLeft() - ((o0.this.getWidth() - this.f1437f.getWidth()) / 2), 0);
            o0.this.f1428f = null;
        }
    }

    /* compiled from: ScrollingTabContainerView.java */
    /* loaded from: classes.dex */
    public class b extends BaseAdapter {
        public b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return o0.this.f1430h.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return ((d) o0.this.f1430h.getChildAt(i10)).b();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                return o0.this.c((androidx.appcompat.app.a.c) getItem(i10), true);
            }
            ((d) view).a((androidx.appcompat.app.a.c) getItem(i10));
            return view;
        }
    }

    /* compiled from: ScrollingTabContainerView.java */
    /* loaded from: classes.dex */
    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((d) view).b().e();
            int childCount = o0.this.f1430h.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = o0.this.f1430h.getChildAt(i10);
                childAt.setSelected(childAt == view);
            }
        }
    }

    /* compiled from: ScrollingTabContainerView.java */
    /* loaded from: classes.dex */
    public class d extends LinearLayout {

        /* renamed from: f, reason: collision with root package name */
        public final int[] f1441f;

        /* renamed from: g, reason: collision with root package name */
        public a.c f1442g;

        /* renamed from: h, reason: collision with root package name */
        public TextView f1443h;

        /* renamed from: i, reason: collision with root package name */
        public ImageView f1444i;

        /* renamed from: j, reason: collision with root package name */
        public View f1445j;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public d(Context context, a.c cVar, boolean z10) {
            super(context, null, r5);
            int i10 = d.a.f5185d;
            int[] iArr = {R.attr.background};
            this.f1441f = iArr;
            this.f1442g = cVar;
            v0 v10 = v0.v(context, null, iArr, i10, 0);
            if (v10.s(0)) {
                setBackgroundDrawable(v10.g(0));
            }
            v10.w();
            if (z10) {
                setGravity(8388627);
            }
            c();
        }

        public void a(a.c cVar) {
            this.f1442g = cVar;
            c();
        }

        public a.c b() {
            return this.f1442g;
        }

        public void c() {
            a.c cVar = this.f1442g;
            View b10 = cVar.b();
            if (b10 != null) {
                ViewParent parent = b10.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(b10);
                    }
                    addView(b10);
                }
                this.f1445j = b10;
                TextView textView = this.f1443h;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f1444i;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f1444i.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f1445j;
            if (view != null) {
                removeView(view);
                this.f1445j = null;
            }
            Drawable c10 = cVar.c();
            CharSequence d10 = cVar.d();
            if (c10 != null) {
                if (this.f1444i == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f1444i = appCompatImageView;
                }
                this.f1444i.setImageDrawable(c10);
                this.f1444i.setVisibility(0);
            } else {
                ImageView imageView2 = this.f1444i;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f1444i.setImageDrawable(null);
                }
            }
            boolean z10 = !TextUtils.isEmpty(d10);
            if (z10) {
                if (this.f1443h == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null, d.a.f5186e);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.f1443h = appCompatTextView;
                }
                this.f1443h.setText(d10);
                this.f1443h.setVisibility(0);
            } else {
                TextView textView2 = this.f1443h;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f1443h.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f1444i;
            if (imageView3 != null) {
                imageView3.setContentDescription(cVar.a());
            }
            y0.a(this, z10 ? null : cVar.a());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (o0.this.f1433k > 0) {
                int measuredWidth = getMeasuredWidth();
                int i12 = o0.this.f1433k;
                if (measuredWidth > i12) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), i11);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z10) {
            boolean z11 = isSelected() != z10;
            super.setSelected(z10);
            if (z11 && z10) {
                sendAccessibilityEvent(4);
            }
        }
    }

    public void a(int i10) {
        View childAt = this.f1430h.getChildAt(i10);
        Runnable runnable = this.f1428f;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        a aVar = new a(childAt);
        this.f1428f = aVar;
        post(aVar);
    }

    public final Spinner b() {
        w wVar = new w(getContext(), null, d.a.f5189h);
        wVar.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        wVar.setOnItemSelectedListener(this);
        return wVar;
    }

    public d c(a.c cVar, boolean z10) {
        d dVar = new d(getContext(), cVar, z10);
        if (z10) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1435m));
        } else {
            dVar.setFocusable(true);
            if (this.f1429g == null) {
                this.f1429g = new c();
            }
            dVar.setOnClickListener(this.f1429g);
        }
        return dVar;
    }

    public final boolean d() {
        Spinner spinner = this.f1431i;
        return spinner != null && spinner.getParent() == this;
    }

    public final void e() {
        if (d()) {
            return;
        }
        if (this.f1431i == null) {
            this.f1431i = b();
        }
        removeView(this.f1430h);
        addView(this.f1431i, new ViewGroup.LayoutParams(-2, -1));
        if (this.f1431i.getAdapter() == null) {
            this.f1431i.setAdapter((SpinnerAdapter) new b());
        }
        Runnable runnable = this.f1428f;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f1428f = null;
        }
        this.f1431i.setSelection(this.f1436n);
    }

    public final boolean f() {
        if (!d()) {
            return false;
        }
        removeView(this.f1431i);
        addView(this.f1430h, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1431i.getSelectedItemPosition());
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1428f;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        j.a b10 = j.a.b(getContext());
        setContentHeight(b10.f());
        this.f1434l = b10.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1428f;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
        ((d) view).b().e();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        boolean z10 = mode == 1073741824;
        setFillViewport(z10);
        int childCount = this.f1430h.getChildCount();
        if (childCount > 1 && (mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            if (childCount > 2) {
                this.f1433k = (int) (View.MeasureSpec.getSize(i10) * 0.4f);
            } else {
                this.f1433k = View.MeasureSpec.getSize(i10) / 2;
            }
            this.f1433k = Math.min(this.f1433k, this.f1434l);
        } else {
            this.f1433k = -1;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1435m, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        if (!z10 && this.f1432j) {
            this.f1430h.measure(0, makeMeasureSpec);
            if (this.f1430h.getMeasuredWidth() > View.MeasureSpec.getSize(i10)) {
                e();
            } else {
                f();
            }
        } else {
            f();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i10, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z10 || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1436n);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z10) {
        this.f1432j = z10;
    }

    public void setContentHeight(int i10) {
        this.f1435m = i10;
        requestLayout();
    }

    public void setTabSelected(int i10) {
        this.f1436n = i10;
        int childCount = this.f1430h.getChildCount();
        int i11 = 0;
        while (i11 < childCount) {
            View childAt = this.f1430h.getChildAt(i11);
            boolean z10 = i11 == i10;
            childAt.setSelected(z10);
            if (z10) {
                a(i10);
            }
            i11++;
        }
        Spinner spinner = this.f1431i;
        if (spinner == null || i10 < 0) {
            return;
        }
        spinner.setSelection(i10);
    }
}
