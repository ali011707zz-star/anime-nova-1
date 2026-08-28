package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.common.api.Api;
import java.lang.reflect.Method;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* compiled from: ListPopupWindow.java */
/* loaded from: classes.dex */
public class h0 implements k.f {
    public static Method L;
    public static Method M;
    public static Method N;
    public AdapterView.OnItemSelectedListener A;
    public final g B;
    public final f C;
    public final e D;
    public final c E;
    public Runnable F;
    public final Handler G;
    public final Rect H;
    public Rect I;
    public boolean J;
    public PopupWindow K;

    /* renamed from: f, reason: collision with root package name */
    public Context f1344f;

    /* renamed from: g, reason: collision with root package name */
    public ListAdapter f1345g;

    /* renamed from: h, reason: collision with root package name */
    public e0 f1346h;

    /* renamed from: i, reason: collision with root package name */
    public int f1347i;

    /* renamed from: j, reason: collision with root package name */
    public int f1348j;

    /* renamed from: k, reason: collision with root package name */
    public int f1349k;

    /* renamed from: l, reason: collision with root package name */
    public int f1350l;

    /* renamed from: m, reason: collision with root package name */
    public int f1351m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1352n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1353o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f1354p;

    /* renamed from: q, reason: collision with root package name */
    public int f1355q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f1356r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f1357s;

    /* renamed from: t, reason: collision with root package name */
    public int f1358t;

    /* renamed from: u, reason: collision with root package name */
    public View f1359u;

    /* renamed from: v, reason: collision with root package name */
    public int f1360v;

    /* renamed from: w, reason: collision with root package name */
    public DataSetObserver f1361w;

    /* renamed from: x, reason: collision with root package name */
    public View f1362x;

    /* renamed from: y, reason: collision with root package name */
    public Drawable f1363y;

    /* renamed from: z, reason: collision with root package name */
    public AdapterView.OnItemClickListener f1364z;

    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View r10 = h0.this.r();
            if (r10 == null || r10.getWindowToken() == null) {
                return;
            }
            h0.this.show();
        }
    }

    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class b implements AdapterView.OnItemSelectedListener {
        public b() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
            e0 e0Var;
            if (i10 == -1 || (e0Var = h0.this.f1346h) == null) {
                return;
            }
            e0Var.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.this.p();
        }
    }

    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class d extends DataSetObserver {
        public d() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (h0.this.a()) {
                h0.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            h0.this.dismiss();
        }
    }

    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class e implements AbsListView.OnScrollListener {
        public e() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
            if (i10 != 1 || h0.this.y() || h0.this.K.getContentView() == null) {
                return;
            }
            h0 h0Var = h0.this;
            h0Var.G.removeCallbacks(h0Var.B);
            h0.this.B.run();
        }
    }

    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class f implements View.OnTouchListener {
        public f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = h0.this.K) != null && popupWindow.isShowing() && x10 >= 0 && x10 < h0.this.K.getWidth() && y10 >= 0 && y10 < h0.this.K.getHeight()) {
                h0 h0Var = h0.this;
                h0Var.G.postDelayed(h0Var.B, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            h0 h0Var2 = h0.this;
            h0Var2.G.removeCallbacks(h0Var2.B);
            return false;
        }
    }

    /* compiled from: ListPopupWindow.java */
    /* loaded from: classes.dex */
    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e0 e0Var = h0.this.f1346h;
            if (e0Var == null || !q0.b0.W(e0Var) || h0.this.f1346h.getCount() <= h0.this.f1346h.getChildCount()) {
                return;
            }
            int childCount = h0.this.f1346h.getChildCount();
            h0 h0Var = h0.this;
            if (childCount <= h0Var.f1358t) {
                h0Var.K.setInputMethodMode(2);
                h0.this.show();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                L = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            try {
                N = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                M = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public h0(Context context) {
        this(context, null, d.a.H);
    }

    public final void A() {
        View view = this.f1359u;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f1359u);
            }
        }
    }

    public void B(View view) {
        this.f1362x = view;
    }

    public void C(int i10) {
        this.K.setAnimationStyle(i10);
    }

    public void D(int i10) {
        Drawable background = this.K.getBackground();
        if (background != null) {
            background.getPadding(this.H);
            Rect rect = this.H;
            this.f1348j = rect.left + rect.right + i10;
            return;
        }
        O(i10);
    }

    public void E(int i10) {
        this.f1355q = i10;
    }

    public void F(Rect rect) {
        this.I = rect != null ? new Rect(rect) : null;
    }

    public void G(int i10) {
        this.K.setInputMethodMode(i10);
    }

    public void H(boolean z10) {
        this.J = z10;
        this.K.setFocusable(z10);
    }

    public void I(PopupWindow.OnDismissListener onDismissListener) {
        this.K.setOnDismissListener(onDismissListener);
    }

    public void J(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1364z = onItemClickListener;
    }

    public void K(boolean z10) {
        this.f1354p = true;
        this.f1353o = z10;
    }

    public final void L(boolean z10) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = L;
            if (method != null) {
                try {
                    method.invoke(this.K, Boolean.valueOf(z10));
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        this.K.setIsClippedToScreen(z10);
    }

    public void M(int i10) {
        this.f1360v = i10;
    }

    public void N(int i10) {
        e0 e0Var = this.f1346h;
        if (!a() || e0Var == null) {
            return;
        }
        e0Var.setListSelectionHidden(false);
        e0Var.setSelection(i10);
        if (e0Var.getChoiceMode() != 0) {
            e0Var.setItemChecked(i10, true);
        }
    }

    public void O(int i10) {
        this.f1348j = i10;
    }

    @Override // k.f
    public boolean a() {
        return this.K.isShowing();
    }

    public int b() {
        return this.f1349k;
    }

    @Override // k.f
    public void dismiss() {
        this.K.dismiss();
        A();
        this.K.setContentView(null);
        this.f1346h = null;
        this.G.removeCallbacks(this.B);
    }

    public Drawable e() {
        return this.K.getBackground();
    }

    @Override // k.f
    public ListView f() {
        return this.f1346h;
    }

    public void h(int i10) {
        this.f1350l = i10;
        this.f1352n = true;
    }

    public void j(int i10) {
        this.f1349k = i10;
    }

    public int l() {
        if (this.f1352n) {
            return this.f1350l;
        }
        return 0;
    }

    public void n(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1361w;
        if (dataSetObserver == null) {
            this.f1361w = new d();
        } else {
            ListAdapter listAdapter2 = this.f1345g;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1345g = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1361w);
        }
        e0 e0Var = this.f1346h;
        if (e0Var != null) {
            e0Var.setAdapter(this.f1345g);
        }
    }

    public final int o() {
        int i10;
        int i11;
        int makeMeasureSpec;
        int i12;
        if (this.f1346h == null) {
            Context context = this.f1344f;
            this.F = new a();
            e0 q10 = q(context, !this.J);
            this.f1346h = q10;
            Drawable drawable = this.f1363y;
            if (drawable != null) {
                q10.setSelector(drawable);
            }
            this.f1346h.setAdapter(this.f1345g);
            this.f1346h.setOnItemClickListener(this.f1364z);
            this.f1346h.setFocusable(true);
            this.f1346h.setFocusableInTouchMode(true);
            this.f1346h.setOnItemSelectedListener(new b());
            this.f1346h.setOnScrollListener(this.D);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.A;
            if (onItemSelectedListener != null) {
                this.f1346h.setOnItemSelectedListener(onItemSelectedListener);
            }
            View view = this.f1346h;
            View view2 = this.f1359u;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i13 = this.f1360v;
                if (i13 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(view, layoutParams);
                } else if (i13 != 1) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Invalid hint position ");
                    sb2.append(this.f1360v);
                } else {
                    linearLayout.addView(view, layoutParams);
                    linearLayout.addView(view2);
                }
                int i14 = this.f1348j;
                if (i14 >= 0) {
                    i12 = Integer.MIN_VALUE;
                } else {
                    i14 = 0;
                    i12 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i14, i12), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i10 = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                i10 = 0;
            }
            this.K.setContentView(view);
        } else {
            View view3 = this.f1359u;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                i10 = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i10 = 0;
            }
        }
        Drawable background = this.K.getBackground();
        if (background != null) {
            background.getPadding(this.H);
            Rect rect = this.H;
            int i15 = rect.top;
            i11 = rect.bottom + i15;
            if (!this.f1352n) {
                this.f1350l = -i15;
            }
        } else {
            this.H.setEmpty();
            i11 = 0;
        }
        int s10 = s(r(), this.f1350l, this.K.getInputMethodMode() == 2);
        if (this.f1356r || this.f1347i == -1) {
            return s10 + i11;
        }
        int i16 = this.f1348j;
        if (i16 == -2) {
            int i17 = this.f1344f.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.H;
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i17 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i16 != -1) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i16, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        } else {
            int i18 = this.f1344f.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.H;
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i18 - (rect3.left + rect3.right), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        }
        int d10 = this.f1346h.d(makeMeasureSpec, 0, -1, s10 - i10, -1);
        if (d10 > 0) {
            i10 += i11 + this.f1346h.getPaddingTop() + this.f1346h.getPaddingBottom();
        }
        return d10 + i10;
    }

    public void p() {
        e0 e0Var = this.f1346h;
        if (e0Var != null) {
            e0Var.setListSelectionHidden(true);
            e0Var.requestLayout();
        }
    }

    public e0 q(Context context, boolean z10) {
        return new e0(context, z10);
    }

    public View r() {
        return this.f1362x;
    }

    public final int s(View view, int i10, boolean z10) {
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = M;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(this.K, view, Integer.valueOf(i10), Boolean.valueOf(z10))).intValue();
                } catch (Exception unused) {
                }
            }
            return this.K.getMaxAvailableHeight(view, i10);
        }
        return this.K.getMaxAvailableHeight(view, i10, z10);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.K.setBackgroundDrawable(drawable);
    }

    @Override // k.f
    public void show() {
        int o10 = o();
        boolean y10 = y();
        u0.i.b(this.K, this.f1351m);
        if (this.K.isShowing()) {
            if (q0.b0.W(r())) {
                int i10 = this.f1348j;
                if (i10 == -1) {
                    i10 = -1;
                } else if (i10 == -2) {
                    i10 = r().getWidth();
                }
                int i11 = this.f1347i;
                if (i11 == -1) {
                    if (!y10) {
                        o10 = -1;
                    }
                    if (y10) {
                        this.K.setWidth(this.f1348j == -1 ? -1 : 0);
                        this.K.setHeight(0);
                    } else {
                        this.K.setWidth(this.f1348j == -1 ? -1 : 0);
                        this.K.setHeight(-1);
                    }
                } else if (i11 != -2) {
                    o10 = i11;
                }
                this.K.setOutsideTouchable((this.f1357s || this.f1356r) ? false : true);
                this.K.update(r(), this.f1349k, this.f1350l, i10 < 0 ? -1 : i10, o10 < 0 ? -1 : o10);
                return;
            }
            return;
        }
        int i12 = this.f1348j;
        if (i12 == -1) {
            i12 = -1;
        } else if (i12 == -2) {
            i12 = r().getWidth();
        }
        int i13 = this.f1347i;
        if (i13 == -1) {
            o10 = -1;
        } else if (i13 != -2) {
            o10 = i13;
        }
        this.K.setWidth(i12);
        this.K.setHeight(o10);
        L(true);
        this.K.setOutsideTouchable((this.f1357s || this.f1356r) ? false : true);
        this.K.setTouchInterceptor(this.C);
        if (this.f1354p) {
            u0.i.a(this.K, this.f1353o);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = N;
            if (method != null) {
                try {
                    method.invoke(this.K, this.I);
                } catch (Exception unused) {
                }
            }
        } else {
            this.K.setEpicenterBounds(this.I);
        }
        u0.i.c(this.K, r(), this.f1349k, this.f1350l, this.f1355q);
        this.f1346h.setSelection(-1);
        if (!this.J || this.f1346h.isInTouchMode()) {
            p();
        }
        if (this.J) {
            return;
        }
        this.G.post(this.E);
    }

    public Object t() {
        if (a()) {
            return this.f1346h.getSelectedItem();
        }
        return null;
    }

    public long u() {
        if (a()) {
            return this.f1346h.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int v() {
        if (a()) {
            return this.f1346h.getSelectedItemPosition();
        }
        return -1;
    }

    public View w() {
        if (a()) {
            return this.f1346h.getSelectedView();
        }
        return null;
    }

    public int x() {
        return this.f1348j;
    }

    public boolean y() {
        return this.K.getInputMethodMode() == 2;
    }

    public boolean z() {
        return this.J;
    }

    public h0(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public h0(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f1347i = -2;
        this.f1348j = -2;
        this.f1351m = CredentialsApi.ACTIVITY_RESULT_NO_HINTS_AVAILABLE;
        this.f1355q = 0;
        this.f1356r = false;
        this.f1357s = false;
        this.f1358t = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f1360v = 0;
        this.B = new g();
        this.C = new f();
        this.D = new e();
        this.E = new c();
        this.H = new Rect();
        this.f1344f = context;
        this.G = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.j.f5423t1, i10, i11);
        this.f1349k = obtainStyledAttributes.getDimensionPixelOffset(d.j.f5428u1, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(d.j.f5433v1, 0);
        this.f1350l = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1352n = true;
        }
        obtainStyledAttributes.recycle();
        q qVar = new q(context, attributeSet, i10, i11);
        this.K = qVar;
        qVar.setInputMethodMode(1);
    }
}
