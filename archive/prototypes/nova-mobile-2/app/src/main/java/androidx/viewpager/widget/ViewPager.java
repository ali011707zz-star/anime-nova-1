package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.twitter.sdk.android.core.internal.scribe.ScribeConfig;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.http.impl.auth.NTLMEngineImpl;
import q0.b0;
import q0.m0;
import q0.u;

/* loaded from: classes.dex */
public class ViewPager extends ViewGroup {

    /* renamed from: m0, reason: collision with root package name */
    public static final int[] f3219m0 = {R.attr.layout_gravity};

    /* renamed from: n0, reason: collision with root package name */
    public static final Comparator<f> f3220n0 = new a();

    /* renamed from: o0, reason: collision with root package name */
    public static final Interpolator f3221o0 = new b();

    /* renamed from: p0, reason: collision with root package name */
    public static final n f3222p0 = new n();
    public boolean A;
    public boolean B;
    public int C;
    public boolean D;
    public boolean E;
    public int F;
    public int G;
    public int H;
    public float I;
    public float J;
    public float K;
    public float L;
    public int M;
    public VelocityTracker N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public boolean S;
    public EdgeEffect T;
    public EdgeEffect U;
    public boolean V;
    public boolean W;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f3223a0;

    /* renamed from: b0, reason: collision with root package name */
    public int f3224b0;

    /* renamed from: c0, reason: collision with root package name */
    public List<j> f3225c0;

    /* renamed from: d0, reason: collision with root package name */
    public j f3226d0;

    /* renamed from: e0, reason: collision with root package name */
    public j f3227e0;

    /* renamed from: f, reason: collision with root package name */
    public int f3228f;

    /* renamed from: f0, reason: collision with root package name */
    public List<i> f3229f0;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList<f> f3230g;

    /* renamed from: g0, reason: collision with root package name */
    public k f3231g0;

    /* renamed from: h, reason: collision with root package name */
    public final f f3232h;

    /* renamed from: h0, reason: collision with root package name */
    public int f3233h0;

    /* renamed from: i, reason: collision with root package name */
    public final Rect f3234i;

    /* renamed from: i0, reason: collision with root package name */
    public int f3235i0;

    /* renamed from: j, reason: collision with root package name */
    public b2.a f3236j;

    /* renamed from: j0, reason: collision with root package name */
    public ArrayList<View> f3237j0;

    /* renamed from: k, reason: collision with root package name */
    public int f3238k;

    /* renamed from: k0, reason: collision with root package name */
    public final Runnable f3239k0;

    /* renamed from: l, reason: collision with root package name */
    public int f3240l;

    /* renamed from: l0, reason: collision with root package name */
    public int f3241l0;

    /* renamed from: m, reason: collision with root package name */
    public Parcelable f3242m;

    /* renamed from: n, reason: collision with root package name */
    public ClassLoader f3243n;

    /* renamed from: o, reason: collision with root package name */
    public Scroller f3244o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f3245p;

    /* renamed from: q, reason: collision with root package name */
    public l f3246q;

    /* renamed from: r, reason: collision with root package name */
    public int f3247r;

    /* renamed from: s, reason: collision with root package name */
    public Drawable f3248s;

    /* renamed from: t, reason: collision with root package name */
    public int f3249t;

    /* renamed from: u, reason: collision with root package name */
    public int f3250u;

    /* renamed from: v, reason: collision with root package name */
    public float f3251v;

    /* renamed from: w, reason: collision with root package name */
    public float f3252w;

    /* renamed from: x, reason: collision with root package name */
    public int f3253x;

    /* renamed from: y, reason: collision with root package name */
    public int f3254y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f3255z;

    /* loaded from: classes.dex */
    public static class a implements Comparator<f> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(f fVar, f fVar2) {
            return fVar.f3260b - fVar2.f3260b;
        }
    }

    /* loaded from: classes.dex */
    public static class b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    /* loaded from: classes.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.E();
        }
    }

    /* loaded from: classes.dex */
    public class d implements u {

        /* renamed from: a, reason: collision with root package name */
        public final Rect f3257a = new Rect();

        public d() {
        }

        @Override // q0.u
        public m0 onApplyWindowInsets(View view, m0 m0Var) {
            m0 f02 = b0.f0(view, m0Var);
            if (f02.p()) {
                return f02;
            }
            Rect rect = this.f3257a;
            rect.left = f02.j();
            rect.top = f02.l();
            rect.right = f02.k();
            rect.bottom = f02.i();
            int childCount = ViewPager.this.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                m0 i11 = b0.i(ViewPager.this.getChildAt(i10), f02);
                rect.left = Math.min(i11.j(), rect.left);
                rect.top = Math.min(i11.l(), rect.top);
                rect.right = Math.min(i11.k(), rect.right);
                rect.bottom = Math.min(i11.i(), rect.bottom);
            }
            return f02.q(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface e {
    }

    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a, reason: collision with root package name */
        public Object f3259a;

        /* renamed from: b, reason: collision with root package name */
        public int f3260b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f3261c;

        /* renamed from: d, reason: collision with root package name */
        public float f3262d;

        /* renamed from: e, reason: collision with root package name */
        public float f3263e;
    }

    /* loaded from: classes.dex */
    public class h extends q0.a {
        public h() {
        }

        public final boolean a() {
            b2.a aVar = ViewPager.this.f3236j;
            return aVar != null && aVar.getCount() > 1;
        }

        @Override // q0.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            b2.a aVar;
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(a());
            if (accessibilityEvent.getEventType() != 4096 || (aVar = ViewPager.this.f3236j) == null) {
                return;
            }
            accessibilityEvent.setItemCount(aVar.getCount());
            accessibilityEvent.setFromIndex(ViewPager.this.f3238k);
            accessibilityEvent.setToIndex(ViewPager.this.f3238k);
        }

        @Override // q0.a
        public void onInitializeAccessibilityNodeInfo(View view, r0.c cVar) {
            super.onInitializeAccessibilityNodeInfo(view, cVar);
            cVar.b0(ViewPager.class.getName());
            cVar.w0(a());
            if (ViewPager.this.canScrollHorizontally(1)) {
                cVar.a(RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                cVar.a(RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
            }
        }

        @Override // q0.a
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (super.performAccessibilityAction(view, i10, bundle)) {
                return true;
            }
            if (i10 != 4096) {
                if (i10 != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f3238k - 1);
                return true;
            }
            if (!ViewPager.this.canScrollHorizontally(1)) {
                return false;
            }
            ViewPager viewPager2 = ViewPager.this;
            viewPager2.setCurrentItem(viewPager2.f3238k + 1);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public interface i {
        void onAdapterChanged(ViewPager viewPager, b2.a aVar, b2.a aVar2);
    }

    /* loaded from: classes.dex */
    public interface j {
        void onPageScrollStateChanged(int i10);

        void onPageScrolled(int i10, float f10, int i11);

        void onPageSelected(int i10);
    }

    /* loaded from: classes.dex */
    public interface k {
        void a(View view, float f10);
    }

    /* loaded from: classes.dex */
    public class l extends DataSetObserver {
        public l() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.h();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.h();
        }
    }

    /* loaded from: classes.dex */
    public static class m extends w0.a {
        public static final Parcelable.Creator<m> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public int f3272f;

        /* renamed from: g, reason: collision with root package name */
        public Parcelable f3273g;

        /* renamed from: h, reason: collision with root package name */
        public ClassLoader f3274h;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.ClassLoaderCreator<m> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public m createFromParcel(Parcel parcel) {
                return new m(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public m createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new m(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public m[] newArray(int i10) {
                return new m[i10];
            }
        }

        public m(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f3272f + "}";
        }

        @Override // w0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f3272f);
            parcel.writeParcelable(this.f3273g, i10);
        }

        public m(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f3272f = parcel.readInt();
            this.f3273g = parcel.readParcelable(classLoader);
            this.f3274h = classLoader;
        }
    }

    /* loaded from: classes.dex */
    public static class n implements Comparator<View> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            g gVar = (g) view.getLayoutParams();
            g gVar2 = (g) view2.getLayoutParams();
            boolean z10 = gVar.f3264a;
            if (z10 != gVar2.f3264a) {
                return z10 ? 1 : -1;
            }
            return gVar.f3268e - gVar2.f3268e;
        }
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3230g = new ArrayList<>();
        this.f3232h = new f();
        this.f3234i = new Rect();
        this.f3240l = -1;
        this.f3242m = null;
        this.f3243n = null;
        this.f3251v = -3.4028235E38f;
        this.f3252w = Float.MAX_VALUE;
        this.C = 1;
        this.M = -1;
        this.V = true;
        this.W = false;
        this.f3239k0 = new c();
        this.f3241l0 = 0;
        v();
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z10) {
        if (this.A != z10) {
            this.A = z10;
        }
    }

    public static boolean w(View view) {
        return view.getClass().getAnnotation(e.class) != null;
    }

    public boolean A() {
        int i10 = this.f3238k;
        if (i10 <= 0) {
            return false;
        }
        N(i10 - 1, true);
        return true;
    }

    public boolean B() {
        b2.a aVar = this.f3236j;
        if (aVar == null || this.f3238k >= aVar.getCount() - 1) {
            return false;
        }
        N(this.f3238k + 1, true);
        return true;
    }

    public final boolean C(int i10) {
        if (this.f3230g.size() == 0) {
            if (this.V) {
                return false;
            }
            this.f3223a0 = false;
            y(0, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0);
            if (this.f3223a0) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        f t10 = t();
        int clientWidth = getClientWidth();
        int i11 = this.f3247r;
        int i12 = clientWidth + i11;
        float f10 = clientWidth;
        int i13 = t10.f3260b;
        float f11 = ((i10 / f10) - t10.f3263e) / (t10.f3262d + (i11 / f10));
        this.f3223a0 = false;
        y(i13, f11, (int) (i12 * f11));
        if (this.f3223a0) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    public final boolean D(float f10) {
        boolean z10;
        boolean z11;
        float f11 = this.I - f10;
        this.I = f10;
        float scrollX = getScrollX() + f11;
        float clientWidth = getClientWidth();
        float f12 = this.f3251v * clientWidth;
        float f13 = this.f3252w * clientWidth;
        boolean z12 = false;
        f fVar = this.f3230g.get(0);
        ArrayList<f> arrayList = this.f3230g;
        f fVar2 = arrayList.get(arrayList.size() - 1);
        if (fVar.f3260b != 0) {
            f12 = fVar.f3263e * clientWidth;
            z10 = false;
        } else {
            z10 = true;
        }
        if (fVar2.f3260b != this.f3236j.getCount() - 1) {
            f13 = fVar2.f3263e * clientWidth;
            z11 = false;
        } else {
            z11 = true;
        }
        if (scrollX < f12) {
            if (z10) {
                this.T.onPull(Math.abs(f12 - scrollX) / clientWidth);
                z12 = true;
            }
            scrollX = f12;
        } else if (scrollX > f13) {
            if (z11) {
                this.U.onPull(Math.abs(scrollX - f13) / clientWidth);
                z12 = true;
            }
            scrollX = f13;
        }
        int i10 = (int) scrollX;
        this.I += scrollX - i10;
        scrollTo(i10, getScrollY());
        C(i10);
        return z12;
    }

    public void E() {
        F(this.f3238k);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0060, code lost:
    
        if (r9 == r10) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
    
        r8 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void F(int i10) {
        f fVar;
        String hexString;
        f fVar2;
        f s10;
        f fVar3;
        int i11 = this.f3238k;
        if (i11 != i10) {
            fVar = u(i11);
            this.f3238k = i10;
        } else {
            fVar = null;
        }
        if (this.f3236j == null) {
            R();
            return;
        }
        if (this.B) {
            R();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        this.f3236j.startUpdate((ViewGroup) this);
        int i12 = this.C;
        int max = Math.max(0, this.f3238k - i12);
        int count = this.f3236j.getCount();
        int min = Math.min(count - 1, this.f3238k + i12);
        if (count == this.f3228f) {
            int i13 = 0;
            while (true) {
                if (i13 >= this.f3230g.size()) {
                    break;
                }
                fVar2 = this.f3230g.get(i13);
                int i14 = fVar2.f3260b;
                int i15 = this.f3238k;
                if (i14 < i15) {
                    i13++;
                }
            }
            if (fVar2 == null && count > 0) {
                fVar2 = a(this.f3238k, i13);
            }
            if (fVar2 != null) {
                int i16 = i13 - 1;
                f fVar4 = i16 >= 0 ? this.f3230g.get(i16) : null;
                int clientWidth = getClientWidth();
                float paddingLeft = clientWidth <= 0 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : (2.0f - fVar2.f3262d) + (getPaddingLeft() / clientWidth);
                float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                for (int i17 = this.f3238k - 1; i17 >= 0; i17--) {
                    if (f10 >= paddingLeft && i17 < max) {
                        if (fVar4 == null) {
                            break;
                        }
                        if (i17 == fVar4.f3260b && !fVar4.f3261c) {
                            this.f3230g.remove(i16);
                            this.f3236j.destroyItem((ViewGroup) this, i17, fVar4.f3259a);
                            i16--;
                            i13--;
                            if (i16 >= 0) {
                                fVar3 = this.f3230g.get(i16);
                                fVar4 = fVar3;
                            }
                            fVar3 = null;
                            fVar4 = fVar3;
                        }
                    } else if (fVar4 != null && i17 == fVar4.f3260b) {
                        f10 += fVar4.f3262d;
                        i16--;
                        if (i16 >= 0) {
                            fVar3 = this.f3230g.get(i16);
                            fVar4 = fVar3;
                        }
                        fVar3 = null;
                        fVar4 = fVar3;
                    } else {
                        f10 += a(i17, i16 + 1).f3262d;
                        i13++;
                        if (i16 >= 0) {
                            fVar3 = this.f3230g.get(i16);
                            fVar4 = fVar3;
                        }
                        fVar3 = null;
                        fVar4 = fVar3;
                    }
                }
                float f11 = fVar2.f3262d;
                int i18 = i13 + 1;
                if (f11 < 2.0f) {
                    f fVar5 = i18 < this.f3230g.size() ? this.f3230g.get(i18) : null;
                    float paddingRight = clientWidth <= 0 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : (getPaddingRight() / clientWidth) + 2.0f;
                    int i19 = this.f3238k;
                    while (true) {
                        i19++;
                        if (i19 >= count) {
                            break;
                        }
                        if (f11 >= paddingRight && i19 > min) {
                            if (fVar5 == null) {
                                break;
                            }
                            if (i19 == fVar5.f3260b && !fVar5.f3261c) {
                                this.f3230g.remove(i18);
                                this.f3236j.destroyItem((ViewGroup) this, i19, fVar5.f3259a);
                                if (i18 < this.f3230g.size()) {
                                    fVar5 = this.f3230g.get(i18);
                                }
                            }
                        } else if (fVar5 != null && i19 == fVar5.f3260b) {
                            f11 += fVar5.f3262d;
                            i18++;
                            if (i18 < this.f3230g.size()) {
                                fVar5 = this.f3230g.get(i18);
                            }
                        } else {
                            f a10 = a(i19, i18);
                            i18++;
                            f11 += a10.f3262d;
                            fVar5 = i18 < this.f3230g.size() ? this.f3230g.get(i18) : null;
                        }
                    }
                }
                e(fVar2, i13, fVar);
                this.f3236j.setPrimaryItem((ViewGroup) this, this.f3238k, fVar2.f3259a);
            }
            this.f3236j.finishUpdate((ViewGroup) this);
            int childCount = getChildCount();
            for (int i20 = 0; i20 < childCount; i20++) {
                View childAt = getChildAt(i20);
                g gVar = (g) childAt.getLayoutParams();
                gVar.f3269f = i20;
                if (!gVar.f3264a && gVar.f3266c == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && (s10 = s(childAt)) != null) {
                    gVar.f3266c = s10.f3262d;
                    gVar.f3268e = s10.f3260b;
                }
            }
            R();
            if (hasFocus()) {
                View findFocus = findFocus();
                f r10 = findFocus != null ? r(findFocus) : null;
                if (r10 == null || r10.f3260b != this.f3238k) {
                    for (int i21 = 0; i21 < getChildCount(); i21++) {
                        View childAt2 = getChildAt(i21);
                        f s11 = s(childAt2);
                        if (s11 != null && s11.f3260b == this.f3238k && childAt2.requestFocus(2)) {
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        try {
            hexString = getResources().getResourceName(getId());
        } catch (Resources.NotFoundException unused) {
            hexString = Integer.toHexString(getId());
        }
        throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.f3228f + ", found: " + count + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.f3236j.getClass());
    }

    public final void G(int i10, int i11, int i12, int i13) {
        if (i11 > 0 && !this.f3230g.isEmpty()) {
            if (!this.f3244o.isFinished()) {
                this.f3244o.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i11 - getPaddingLeft()) - getPaddingRight()) + i13)) * (((i10 - getPaddingLeft()) - getPaddingRight()) + i12)), getScrollY());
                return;
            }
        }
        f u10 = u(this.f3238k);
        int min = (int) ((u10 != null ? Math.min(u10.f3263e, this.f3252w) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) * ((i10 - getPaddingLeft()) - getPaddingRight()));
        if (min != getScrollX()) {
            g(false);
            scrollTo(min, getScrollY());
        }
    }

    public final void H() {
        int i10 = 0;
        while (i10 < getChildCount()) {
            if (!((g) getChildAt(i10).getLayoutParams()).f3264a) {
                removeViewAt(i10);
                i10--;
            }
            i10++;
        }
    }

    public void I(i iVar) {
        List<i> list = this.f3229f0;
        if (list != null) {
            list.remove(iVar);
        }
    }

    public void J(j jVar) {
        List<j> list = this.f3225c0;
        if (list != null) {
            list.remove(jVar);
        }
    }

    public final void K(boolean z10) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    public final boolean L() {
        this.M = -1;
        o();
        this.T.onRelease();
        this.U.onRelease();
        return this.T.isFinished() || this.U.isFinished();
    }

    public final void M(int i10, boolean z10, int i11, boolean z11) {
        f u10 = u(i10);
        int clientWidth = u10 != null ? (int) (getClientWidth() * Math.max(this.f3251v, Math.min(u10.f3263e, this.f3252w))) : 0;
        if (z10) {
            Q(clientWidth, 0, i11);
            if (z11) {
                k(i10);
                return;
            }
            return;
        }
        if (z11) {
            k(i10);
        }
        g(false);
        scrollTo(clientWidth, 0);
        C(clientWidth);
    }

    public void N(int i10, boolean z10) {
        this.B = false;
        O(i10, z10, false);
    }

    public void O(int i10, boolean z10, boolean z11) {
        P(i10, z10, z11, 0);
    }

    public void P(int i10, boolean z10, boolean z11, int i11) {
        b2.a aVar = this.f3236j;
        if (aVar != null && aVar.getCount() > 0) {
            if (!z11 && this.f3238k == i10 && this.f3230g.size() != 0) {
                setScrollingCacheEnabled(false);
                return;
            }
            if (i10 < 0) {
                i10 = 0;
            } else if (i10 >= this.f3236j.getCount()) {
                i10 = this.f3236j.getCount() - 1;
            }
            int i12 = this.C;
            int i13 = this.f3238k;
            if (i10 > i13 + i12 || i10 < i13 - i12) {
                for (int i14 = 0; i14 < this.f3230g.size(); i14++) {
                    this.f3230g.get(i14).f3261c = true;
                }
            }
            boolean z12 = this.f3238k != i10;
            if (this.V) {
                this.f3238k = i10;
                if (z12) {
                    k(i10);
                }
                requestLayout();
                return;
            }
            F(i10);
            M(i10, z10, i11, z12);
            return;
        }
        setScrollingCacheEnabled(false);
    }

    public void Q(int i10, int i11, int i12) {
        int scrollX;
        int abs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f3244o;
        if ((scroller == null || scroller.isFinished()) ? false : true) {
            scrollX = this.f3245p ? this.f3244o.getCurrX() : this.f3244o.getStartX();
            this.f3244o.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i13 = scrollX;
        int scrollY = getScrollY();
        int i14 = i10 - i13;
        int i15 = i11 - scrollY;
        if (i14 == 0 && i15 == 0) {
            g(false);
            E();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i16 = clientWidth / 2;
        float f10 = clientWidth;
        float f11 = i16;
        float m10 = f11 + (m(Math.min(1.0f, (Math.abs(i14) * 1.0f) / f10)) * f11);
        int abs2 = Math.abs(i12);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(m10 / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i14) / ((f10 * this.f3236j.getPageWidth(this.f3238k)) + this.f3247r)) + 1.0f) * 100.0f);
        }
        int min = Math.min(abs, ScribeConfig.DEFAULT_SEND_INTERVAL_SECONDS);
        this.f3245p = false;
        this.f3244o.startScroll(i13, scrollY, i14, i15, min);
        b0.k0(this);
    }

    public final void R() {
        if (this.f3235i0 != 0) {
            ArrayList<View> arrayList = this.f3237j0;
            if (arrayList == null) {
                this.f3237j0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                this.f3237j0.add(getChildAt(i10));
            }
            Collections.sort(this.f3237j0, f3222p0);
        }
    }

    public f a(int i10, int i11) {
        f fVar = new f();
        fVar.f3260b = i10;
        fVar.f3259a = this.f3236j.instantiateItem((ViewGroup) this, i10);
        fVar.f3262d = this.f3236j.getPageWidth(i10);
        if (i11 >= 0 && i11 < this.f3230g.size()) {
            this.f3230g.add(i11, fVar);
        } else {
            this.f3230g.add(fVar);
        }
        return fVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        f s10;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getVisibility() == 0 && (s10 = s(childAt)) != null && s10.f3260b == this.f3238k) {
                    childAt.addFocusables(arrayList, i10, i11);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i11 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        f s10;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (s10 = s(childAt)) != null && s10.f3260b == this.f3238k) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        g gVar = (g) layoutParams;
        boolean w10 = gVar.f3264a | w(view);
        gVar.f3264a = w10;
        if (!this.f3255z) {
            super.addView(view, i10, layoutParams);
        } else {
            if (!w10) {
                gVar.f3267d = true;
                addViewInLayout(view, i10, layoutParams);
                return;
            }
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    public void b(i iVar) {
        if (this.f3229f0 == null) {
            this.f3229f0 = new ArrayList();
        }
        this.f3229f0.add(iVar);
    }

    public void c(j jVar) {
        if (this.f3225c0 == null) {
            this.f3225c0 = new ArrayList();
        }
        this.f3225c0.add(jVar);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        if (this.f3236j == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i10 < 0 ? scrollX > ((int) (((float) clientWidth) * this.f3251v)) : i10 > 0 && scrollX < ((int) (((float) clientWidth) * this.f3252w));
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof g) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f3245p = true;
        if (!this.f3244o.isFinished() && this.f3244o.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.f3244o.getCurrX();
            int currY = this.f3244o.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!C(currX)) {
                    this.f3244o.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            b0.k0(this);
            return;
        }
        g(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean d(int i10) {
        boolean z10;
        View findNextFocus;
        boolean requestFocus;
        View findFocus = findFocus();
        boolean z11 = false;
        if (findFocus != this) {
            if (findFocus != null) {
                ViewParent parent = findFocus.getParent();
                while (true) {
                    if (!(parent instanceof ViewGroup)) {
                        z10 = false;
                        break;
                    }
                    if (parent == this) {
                        z10 = true;
                        break;
                    }
                    parent = parent.getParent();
                }
                if (!z10) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(findFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = findFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb2.append(" => ");
                        sb2.append(parent2.getClass().getSimpleName());
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("arrowScroll tried to find focus based on non-child current focused view ");
                    sb3.append(sb2.toString());
                }
            }
            findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i10);
            if (findNextFocus == null && findNextFocus != findFocus) {
                if (i10 == 17) {
                    int i11 = q(this.f3234i, findNextFocus).left;
                    int i12 = q(this.f3234i, findFocus).left;
                    if (findFocus != null && i11 >= i12) {
                        requestFocus = A();
                    } else {
                        requestFocus = findNextFocus.requestFocus();
                    }
                } else if (i10 == 66) {
                    int i13 = q(this.f3234i, findNextFocus).left;
                    int i14 = q(this.f3234i, findFocus).left;
                    if (findFocus != null && i13 <= i14) {
                        requestFocus = B();
                    } else {
                        requestFocus = findNextFocus.requestFocus();
                    }
                }
                z11 = requestFocus;
            } else if (i10 != 17 || i10 == 1) {
                z11 = A();
            } else if (i10 == 66 || i10 == 2) {
                z11 = B();
            }
            if (z11) {
                playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i10));
            }
            return z11;
        }
        findFocus = null;
        findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i10);
        if (findNextFocus == null) {
        }
        if (i10 != 17) {
        }
        z11 = A();
        if (z11) {
        }
        return z11;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || p(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        f s10;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (s10 = s(childAt)) != null && s10.f3260b == this.f3238k && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        b2.a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z10 = false;
        if (overScrollMode != 0 && (overScrollMode != 1 || (aVar = this.f3236j) == null || aVar.getCount() <= 1)) {
            this.T.finish();
            this.U.finish();
        } else {
            if (!this.T.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f3251v * width);
                this.T.setSize(height, width);
                z10 = false | this.T.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.U.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f3252w + 1.0f)) * width2);
                this.U.setSize(height2, width2);
                z10 |= this.U.draw(canvas);
                canvas.restoreToCount(save2);
            }
        }
        if (z10) {
            b0.k0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f3248s;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final void e(f fVar, int i10, f fVar2) {
        int i11;
        int i12;
        f fVar3;
        f fVar4;
        int count = this.f3236j.getCount();
        int clientWidth = getClientWidth();
        float f10 = clientWidth > 0 ? this.f3247r / clientWidth : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (fVar2 != null) {
            int i13 = fVar2.f3260b;
            int i14 = fVar.f3260b;
            if (i13 < i14) {
                float f11 = fVar2.f3263e + fVar2.f3262d + f10;
                int i15 = i13 + 1;
                int i16 = 0;
                while (i15 <= fVar.f3260b && i16 < this.f3230g.size()) {
                    f fVar5 = this.f3230g.get(i16);
                    while (true) {
                        fVar4 = fVar5;
                        if (i15 <= fVar4.f3260b || i16 >= this.f3230g.size() - 1) {
                            break;
                        }
                        i16++;
                        fVar5 = this.f3230g.get(i16);
                    }
                    while (i15 < fVar4.f3260b) {
                        f11 += this.f3236j.getPageWidth(i15) + f10;
                        i15++;
                    }
                    fVar4.f3263e = f11;
                    f11 += fVar4.f3262d + f10;
                    i15++;
                }
            } else if (i13 > i14) {
                int size = this.f3230g.size() - 1;
                float f12 = fVar2.f3263e;
                while (true) {
                    i13--;
                    if (i13 < fVar.f3260b || size < 0) {
                        break;
                    }
                    f fVar6 = this.f3230g.get(size);
                    while (true) {
                        fVar3 = fVar6;
                        if (i13 >= fVar3.f3260b || size <= 0) {
                            break;
                        }
                        size--;
                        fVar6 = this.f3230g.get(size);
                    }
                    while (i13 > fVar3.f3260b) {
                        f12 -= this.f3236j.getPageWidth(i13) + f10;
                        i13--;
                    }
                    f12 -= fVar3.f3262d + f10;
                    fVar3.f3263e = f12;
                }
            }
        }
        int size2 = this.f3230g.size();
        float f13 = fVar.f3263e;
        int i17 = fVar.f3260b;
        int i18 = i17 - 1;
        this.f3251v = i17 == 0 ? f13 : -3.4028235E38f;
        int i19 = count - 1;
        this.f3252w = i17 == i19 ? (fVar.f3262d + f13) - 1.0f : Float.MAX_VALUE;
        int i20 = i10 - 1;
        while (i20 >= 0) {
            f fVar7 = this.f3230g.get(i20);
            while (true) {
                i12 = fVar7.f3260b;
                if (i18 <= i12) {
                    break;
                }
                f13 -= this.f3236j.getPageWidth(i18) + f10;
                i18--;
            }
            f13 -= fVar7.f3262d + f10;
            fVar7.f3263e = f13;
            if (i12 == 0) {
                this.f3251v = f13;
            }
            i20--;
            i18--;
        }
        float f14 = fVar.f3263e + fVar.f3262d + f10;
        int i21 = fVar.f3260b + 1;
        int i22 = i10 + 1;
        while (i22 < size2) {
            f fVar8 = this.f3230g.get(i22);
            while (true) {
                i11 = fVar8.f3260b;
                if (i21 >= i11) {
                    break;
                }
                f14 += this.f3236j.getPageWidth(i21) + f10;
                i21++;
            }
            if (i11 == i19) {
                this.f3252w = (fVar8.f3262d + f14) - 1.0f;
            }
            fVar8.f3263e = f14;
            f14 += fVar8.f3262d + f10;
            i22++;
            i21++;
        }
        this.W = false;
    }

    public boolean f(View view, boolean z10, int i10, int i11, int i12) {
        int i13;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i14 = i11 + scrollX;
                if (i14 >= childAt.getLeft() && i14 < childAt.getRight() && (i13 = i12 + scrollY) >= childAt.getTop() && i13 < childAt.getBottom() && f(childAt, true, i10, i14 - childAt.getLeft(), i13 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z10 && view.canScrollHorizontally(-i10);
    }

    public final void g(boolean z10) {
        boolean z11 = this.f3241l0 == 2;
        if (z11) {
            setScrollingCacheEnabled(false);
            if (!this.f3244o.isFinished()) {
                this.f3244o.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f3244o.getCurrX();
                int currY = this.f3244o.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        C(currX);
                    }
                }
            }
        }
        this.B = false;
        for (int i10 = 0; i10 < this.f3230g.size(); i10++) {
            f fVar = this.f3230g.get(i10);
            if (fVar.f3261c) {
                fVar.f3261c = false;
                z11 = true;
            }
        }
        if (z11) {
            if (z10) {
                b0.l0(this, this.f3239k0);
            } else {
                this.f3239k0.run();
            }
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new g();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public b2.a getAdapter() {
        return this.f3236j;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i10, int i11) {
        if (this.f3235i0 == 2) {
            i11 = (i10 - 1) - i11;
        }
        return ((g) this.f3237j0.get(i11).getLayoutParams()).f3269f;
    }

    public int getCurrentItem() {
        return this.f3238k;
    }

    public int getOffscreenPageLimit() {
        return this.C;
    }

    public int getPageMargin() {
        return this.f3247r;
    }

    public void h() {
        int count = this.f3236j.getCount();
        this.f3228f = count;
        boolean z10 = this.f3230g.size() < (this.C * 2) + 1 && this.f3230g.size() < count;
        int i10 = this.f3238k;
        int i11 = 0;
        boolean z11 = false;
        while (i11 < this.f3230g.size()) {
            f fVar = this.f3230g.get(i11);
            int itemPosition = this.f3236j.getItemPosition(fVar.f3259a);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.f3230g.remove(i11);
                    i11--;
                    if (!z11) {
                        this.f3236j.startUpdate((ViewGroup) this);
                        z11 = true;
                    }
                    this.f3236j.destroyItem((ViewGroup) this, fVar.f3260b, fVar.f3259a);
                    int i12 = this.f3238k;
                    if (i12 == fVar.f3260b) {
                        i10 = Math.max(0, Math.min(i12, count - 1));
                    }
                } else {
                    int i13 = fVar.f3260b;
                    if (i13 != itemPosition) {
                        if (i13 == this.f3238k) {
                            i10 = itemPosition;
                        }
                        fVar.f3260b = itemPosition;
                    }
                }
                z10 = true;
            }
            i11++;
        }
        if (z11) {
            this.f3236j.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.f3230g, f3220n0);
        if (z10) {
            int childCount = getChildCount();
            for (int i14 = 0; i14 < childCount; i14++) {
                g gVar = (g) getChildAt(i14).getLayoutParams();
                if (!gVar.f3264a) {
                    gVar.f3266c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
            }
            O(i10, false, true);
            requestLayout();
        }
    }

    public final int i(int i10, float f10, int i11, int i12) {
        if (Math.abs(i12) <= this.Q || Math.abs(i11) <= this.O) {
            i10 += (int) (f10 + (i10 >= this.f3238k ? 0.4f : 0.6f));
        } else if (i11 <= 0) {
            i10++;
        }
        if (this.f3230g.size() <= 0) {
            return i10;
        }
        return Math.max(this.f3230g.get(0).f3260b, Math.min(i10, this.f3230g.get(r4.size() - 1).f3260b));
    }

    public final void j(int i10, float f10, int i11) {
        j jVar = this.f3226d0;
        if (jVar != null) {
            jVar.onPageScrolled(i10, f10, i11);
        }
        List<j> list = this.f3225c0;
        if (list != null) {
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                j jVar2 = this.f3225c0.get(i12);
                if (jVar2 != null) {
                    jVar2.onPageScrolled(i10, f10, i11);
                }
            }
        }
        j jVar3 = this.f3227e0;
        if (jVar3 != null) {
            jVar3.onPageScrolled(i10, f10, i11);
        }
    }

    public final void k(int i10) {
        j jVar = this.f3226d0;
        if (jVar != null) {
            jVar.onPageSelected(i10);
        }
        List<j> list = this.f3225c0;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                j jVar2 = this.f3225c0.get(i11);
                if (jVar2 != null) {
                    jVar2.onPageSelected(i10);
                }
            }
        }
        j jVar3 = this.f3227e0;
        if (jVar3 != null) {
            jVar3.onPageSelected(i10);
        }
    }

    public final void l(int i10) {
        j jVar = this.f3226d0;
        if (jVar != null) {
            jVar.onPageScrollStateChanged(i10);
        }
        List<j> list = this.f3225c0;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                j jVar2 = this.f3225c0.get(i11);
                if (jVar2 != null) {
                    jVar2.onPageScrollStateChanged(i10);
                }
            }
        }
        j jVar3 = this.f3227e0;
        if (jVar3 != null) {
            jVar3.onPageScrollStateChanged(i10);
        }
    }

    public float m(float f10) {
        return (float) Math.sin((f10 - 0.5f) * 0.47123894f);
    }

    public final void n(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            getChildAt(i10).setLayerType(z10 ? this.f3233h0 : 0, null);
        }
    }

    public final void o() {
        this.D = false;
        this.E = false;
        VelocityTracker velocityTracker = this.N;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.N = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.V = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f3239k0);
        Scroller scroller = this.f3244o;
        if (scroller != null && !scroller.isFinished()) {
            this.f3244o.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i10;
        float f10;
        float f11;
        super.onDraw(canvas);
        if (this.f3247r <= 0 || this.f3248s == null || this.f3230g.size() <= 0 || this.f3236j == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f12 = this.f3247r / width;
        int i11 = 0;
        f fVar = this.f3230g.get(0);
        float f13 = fVar.f3263e;
        int size = this.f3230g.size();
        int i12 = fVar.f3260b;
        int i13 = this.f3230g.get(size - 1).f3260b;
        while (i12 < i13) {
            while (true) {
                i10 = fVar.f3260b;
                if (i12 <= i10 || i11 >= size) {
                    break;
                }
                i11++;
                fVar = this.f3230g.get(i11);
            }
            if (i12 == i10) {
                float f14 = fVar.f3263e;
                float f15 = fVar.f3262d;
                f10 = (f14 + f15) * width;
                f13 = f14 + f15 + f12;
            } else {
                float pageWidth = this.f3236j.getPageWidth(i12);
                f10 = (f13 + pageWidth) * width;
                f13 += pageWidth + f12;
            }
            if (this.f3247r + f10 > scrollX) {
                f11 = f12;
                this.f3248s.setBounds(Math.round(f10), this.f3249t, Math.round(this.f3247r + f10), this.f3250u);
                this.f3248s.draw(canvas);
            } else {
                f11 = f12;
            }
            if (f10 > scrollX + r2) {
                return;
            }
            i12++;
            f12 = f11;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & BaseProgressIndicator.MAX_ALPHA;
        if (action != 3 && action != 1) {
            if (action != 0) {
                if (this.D) {
                    return true;
                }
                if (this.E) {
                    return false;
                }
            }
            if (action == 0) {
                float x10 = motionEvent.getX();
                this.K = x10;
                this.I = x10;
                float y10 = motionEvent.getY();
                this.L = y10;
                this.J = y10;
                this.M = motionEvent.getPointerId(0);
                this.E = false;
                this.f3245p = true;
                this.f3244o.computeScrollOffset();
                if (this.f3241l0 == 2 && Math.abs(this.f3244o.getFinalX() - this.f3244o.getCurrX()) > this.R) {
                    this.f3244o.abortAnimation();
                    this.B = false;
                    E();
                    this.D = true;
                    K(true);
                    setScrollState(1);
                } else {
                    g(false);
                    this.D = false;
                }
            } else if (action == 2) {
                int i10 = this.M;
                if (i10 != -1) {
                    int findPointerIndex = motionEvent.findPointerIndex(i10);
                    float x11 = motionEvent.getX(findPointerIndex);
                    float f10 = x11 - this.I;
                    float abs = Math.abs(f10);
                    float y11 = motionEvent.getY(findPointerIndex);
                    float abs2 = Math.abs(y11 - this.L);
                    if (f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && !x(this.I, f10) && f(this, false, (int) f10, (int) x11, (int) y11)) {
                        this.I = x11;
                        this.J = y11;
                        this.E = true;
                        return false;
                    }
                    int i11 = this.H;
                    if (abs > i11 && abs * 0.5f > abs2) {
                        this.D = true;
                        K(true);
                        setScrollState(1);
                        this.I = f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? this.K + this.H : this.K - this.H;
                        this.J = y11;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > i11) {
                        this.E = true;
                    }
                    if (this.D && D(x11)) {
                        b0.k0(this);
                    }
                }
            } else if (action == 6) {
                z(motionEvent);
            }
            if (this.N == null) {
                this.N = VelocityTracker.obtain();
            }
            this.N.addMovement(motionEvent);
            return this.D;
        }
        L();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        f s10;
        int max;
        int i14;
        int max2;
        int i15;
        int childCount = getChildCount();
        int i16 = i12 - i10;
        int i17 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i18 = 0;
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt = getChildAt(i19);
            if (childAt.getVisibility() != 8) {
                g gVar = (g) childAt.getLayoutParams();
                if (gVar.f3264a) {
                    int i20 = gVar.f3265b;
                    int i21 = i20 & 7;
                    int i22 = i20 & 112;
                    if (i21 == 1) {
                        max = Math.max((i16 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else {
                        if (i21 == 3) {
                            i14 = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i21 != 5) {
                            i14 = paddingLeft;
                        } else {
                            max = (i16 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i22 != 16) {
                            max2 = Math.max((i17 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        } else {
                            if (i22 == 48) {
                                i15 = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i22 != 80) {
                                i15 = paddingTop;
                            } else {
                                max2 = (i17 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i23 = paddingLeft + scrollX;
                            childAt.layout(i23, paddingTop, childAt.getMeasuredWidth() + i23, paddingTop + childAt.getMeasuredHeight());
                            i18++;
                            paddingTop = i15;
                            paddingLeft = i14;
                        }
                        int i24 = max2;
                        i15 = paddingTop;
                        paddingTop = i24;
                        int i232 = paddingLeft + scrollX;
                        childAt.layout(i232, paddingTop, childAt.getMeasuredWidth() + i232, paddingTop + childAt.getMeasuredHeight());
                        i18++;
                        paddingTop = i15;
                        paddingLeft = i14;
                    }
                    int i25 = max;
                    i14 = paddingLeft;
                    paddingLeft = i25;
                    if (i22 != 16) {
                    }
                    int i242 = max2;
                    i15 = paddingTop;
                    paddingTop = i242;
                    int i2322 = paddingLeft + scrollX;
                    childAt.layout(i2322, paddingTop, childAt.getMeasuredWidth() + i2322, paddingTop + childAt.getMeasuredHeight());
                    i18++;
                    paddingTop = i15;
                    paddingLeft = i14;
                }
            }
        }
        int i26 = (i16 - paddingLeft) - paddingRight;
        for (int i27 = 0; i27 < childCount; i27++) {
            View childAt2 = getChildAt(i27);
            if (childAt2.getVisibility() != 8) {
                g gVar2 = (g) childAt2.getLayoutParams();
                if (!gVar2.f3264a && (s10 = s(childAt2)) != null) {
                    float f10 = i26;
                    int i28 = ((int) (s10.f3263e * f10)) + paddingLeft;
                    if (gVar2.f3267d) {
                        gVar2.f3267d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f10 * gVar2.f3266c), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec((i17 - paddingTop) - paddingBottom, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
                    }
                    childAt2.layout(i28, paddingTop, childAt2.getMeasuredWidth() + i28, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f3249t = paddingTop;
        this.f3250u = i17 - paddingBottom;
        this.f3224b0 = i18;
        if (this.V) {
            z11 = false;
            M(this.f3238k, false, 0, false);
        } else {
            z11 = false;
        }
        this.V = z11;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0089  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i10, int i11) {
        g gVar;
        g gVar2;
        int i12;
        int i13;
        int i14;
        setMeasuredDimension(ViewGroup.getDefaultSize(0, i10), ViewGroup.getDefaultSize(0, i11));
        int measuredWidth = getMeasuredWidth();
        this.G = Math.min(measuredWidth / 10, this.F);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i15 = 0;
        while (true) {
            boolean z10 = true;
            int i16 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
            if (i15 >= childCount) {
                break;
            }
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8 && (gVar2 = (g) childAt.getLayoutParams()) != null && gVar2.f3264a) {
                int i17 = gVar2.f3265b;
                int i18 = i17 & 7;
                int i19 = i17 & 112;
                boolean z11 = i19 == 48 || i19 == 80;
                if (i18 != 3 && i18 != 5) {
                    z10 = false;
                }
                int i20 = Integer.MIN_VALUE;
                if (z11) {
                    i20 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                } else if (z10) {
                    i12 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                    i13 = ((ViewGroup.LayoutParams) gVar2).width;
                    if (i13 == -2) {
                        if (i13 == -1) {
                            i13 = paddingLeft;
                        }
                        i20 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                    } else {
                        i13 = paddingLeft;
                    }
                    i14 = ((ViewGroup.LayoutParams) gVar2).height;
                    if (i14 != -2) {
                        i14 = measuredHeight;
                        i16 = i12;
                    } else if (i14 == -1) {
                        i14 = measuredHeight;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i13, i20), View.MeasureSpec.makeMeasureSpec(i14, i16));
                    if (!z11) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (z10) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
                i12 = Integer.MIN_VALUE;
                i13 = ((ViewGroup.LayoutParams) gVar2).width;
                if (i13 == -2) {
                }
                i14 = ((ViewGroup.LayoutParams) gVar2).height;
                if (i14 != -2) {
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i13, i20), View.MeasureSpec.makeMeasureSpec(i14, i16));
                if (!z11) {
                }
            }
            i15++;
        }
        this.f3253x = View.MeasureSpec.makeMeasureSpec(paddingLeft, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        this.f3254y = View.MeasureSpec.makeMeasureSpec(measuredHeight, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        this.f3255z = true;
        E();
        this.f3255z = false;
        int childCount2 = getChildCount();
        for (int i21 = 0; i21 < childCount2; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8 && ((gVar = (g) childAt2.getLayoutParams()) == null || !gVar.f3264a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * gVar.f3266c), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), this.f3254y);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i10, Rect rect) {
        int i11;
        int i12;
        f s10;
        int childCount = getChildCount();
        int i13 = -1;
        if ((i10 & 2) != 0) {
            i13 = childCount;
            i11 = 0;
            i12 = 1;
        } else {
            i11 = childCount - 1;
            i12 = -1;
        }
        while (i11 != i13) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (s10 = s(childAt)) != null && s10.f3260b == this.f3238k && childAt.requestFocus(i10, rect)) {
                return true;
            }
            i11 += i12;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof m)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        m mVar = (m) parcelable;
        super.onRestoreInstanceState(mVar.getSuperState());
        b2.a aVar = this.f3236j;
        if (aVar != null) {
            aVar.restoreState(mVar.f3273g, mVar.f3274h);
            O(mVar.f3272f, false, true);
        } else {
            this.f3240l = mVar.f3272f;
            this.f3242m = mVar.f3273g;
            this.f3243n = mVar.f3274h;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        m mVar = new m(super.onSaveInstanceState());
        mVar.f3272f = this.f3238k;
        b2.a aVar = this.f3236j;
        if (aVar != null) {
            mVar.f3273g = aVar.saveState();
        }
        return mVar;
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12) {
            int i14 = this.f3247r;
            G(i10, i12, i14, i14);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        b2.a aVar;
        if (this.S) {
            return true;
        }
        boolean z10 = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (aVar = this.f3236j) == null || aVar.getCount() == 0) {
            return false;
        }
        if (this.N == null) {
            this.N = VelocityTracker.obtain();
        }
        this.N.addMovement(motionEvent);
        int action = motionEvent.getAction() & BaseProgressIndicator.MAX_ALPHA;
        if (action == 0) {
            this.f3244o.abortAnimation();
            this.B = false;
            E();
            float x10 = motionEvent.getX();
            this.K = x10;
            this.I = x10;
            float y10 = motionEvent.getY();
            this.L = y10;
            this.J = y10;
            this.M = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.D) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.M);
                    if (findPointerIndex == -1) {
                        z10 = L();
                    } else {
                        float x11 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x11 - this.I);
                        float y11 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y11 - this.J);
                        if (abs > this.H && abs > abs2) {
                            this.D = true;
                            K(true);
                            float f10 = this.K;
                            this.I = x11 - f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? f10 + this.H : f10 - this.H;
                            this.J = y11;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.D) {
                    z10 = false | D(motionEvent.getX(motionEvent.findPointerIndex(this.M)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.I = motionEvent.getX(actionIndex);
                    this.M = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    z(motionEvent);
                    this.I = motionEvent.getX(motionEvent.findPointerIndex(this.M));
                }
            } else if (this.D) {
                M(this.f3238k, true, 0, false);
                z10 = L();
            }
        } else if (this.D) {
            VelocityTracker velocityTracker = this.N;
            velocityTracker.computeCurrentVelocity(1000, this.P);
            int xVelocity = (int) velocityTracker.getXVelocity(this.M);
            this.B = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            f t10 = t();
            float f11 = clientWidth;
            P(i(t10.f3260b, ((scrollX / f11) - t10.f3263e) / (t10.f3262d + (this.f3247r / f11)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.M)) - this.K)), true, true, xVelocity);
            z10 = L();
        }
        if (z10) {
            b0.k0(this);
        }
        return true;
    }

    public boolean p(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                if (keyEvent.hasModifiers(2)) {
                    return A();
                }
                return d(17);
            }
            if (keyCode == 22) {
                if (keyEvent.hasModifiers(2)) {
                    return B();
                }
                return d(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return d(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return d(1);
                }
            }
        }
        return false;
    }

    public final Rect q(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    public f r(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return s(view);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f3255z) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public f s(View view) {
        for (int i10 = 0; i10 < this.f3230g.size(); i10++) {
            f fVar = this.f3230g.get(i10);
            if (this.f3236j.isViewFromObject(view, fVar.f3259a)) {
                return fVar;
            }
        }
        return null;
    }

    public void setAdapter(b2.a aVar) {
        b2.a aVar2 = this.f3236j;
        if (aVar2 != null) {
            aVar2.setViewPagerObserver(null);
            this.f3236j.startUpdate((ViewGroup) this);
            for (int i10 = 0; i10 < this.f3230g.size(); i10++) {
                f fVar = this.f3230g.get(i10);
                this.f3236j.destroyItem((ViewGroup) this, fVar.f3260b, fVar.f3259a);
            }
            this.f3236j.finishUpdate((ViewGroup) this);
            this.f3230g.clear();
            H();
            this.f3238k = 0;
            scrollTo(0, 0);
        }
        b2.a aVar3 = this.f3236j;
        this.f3236j = aVar;
        this.f3228f = 0;
        if (aVar != null) {
            if (this.f3246q == null) {
                this.f3246q = new l();
            }
            this.f3236j.setViewPagerObserver(this.f3246q);
            this.B = false;
            boolean z10 = this.V;
            this.V = true;
            this.f3228f = this.f3236j.getCount();
            if (this.f3240l >= 0) {
                this.f3236j.restoreState(this.f3242m, this.f3243n);
                O(this.f3240l, false, true);
                this.f3240l = -1;
                this.f3242m = null;
                this.f3243n = null;
            } else if (!z10) {
                E();
            } else {
                requestLayout();
            }
        }
        List<i> list = this.f3229f0;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f3229f0.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f3229f0.get(i11).onAdapterChanged(this, aVar3, aVar);
        }
    }

    public void setCurrentItem(int i10) {
        this.B = false;
        O(i10, !this.V, false);
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 < 1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Requested offscreen page limit ");
            sb2.append(i10);
            sb2.append(" too small; defaulting to ");
            sb2.append(1);
            i10 = 1;
        }
        if (i10 != this.C) {
            this.C = i10;
            E();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(j jVar) {
        this.f3226d0 = jVar;
    }

    public void setPageMargin(int i10) {
        int i11 = this.f3247r;
        this.f3247r = i10;
        int width = getWidth();
        G(width, width, i10, i11);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f3248s = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i10) {
        if (this.f3241l0 == i10) {
            return;
        }
        this.f3241l0 = i10;
        if (this.f3231g0 != null) {
            n(i10 != 0);
        }
        l(i10);
    }

    public final f t() {
        int i10;
        int clientWidth = getClientWidth();
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f11 = clientWidth > 0 ? this.f3247r / clientWidth : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        f fVar = null;
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i11 = -1;
        int i12 = 0;
        boolean z10 = true;
        while (i12 < this.f3230g.size()) {
            f fVar2 = this.f3230g.get(i12);
            if (!z10 && fVar2.f3260b != (i10 = i11 + 1)) {
                fVar2 = this.f3232h;
                fVar2.f3263e = f10 + f12 + f11;
                fVar2.f3260b = i10;
                fVar2.f3262d = this.f3236j.getPageWidth(i10);
                i12--;
            }
            f10 = fVar2.f3263e;
            float f13 = fVar2.f3262d + f10 + f11;
            if (!z10 && scrollX < f10) {
                return fVar;
            }
            if (scrollX < f13 || i12 == this.f3230g.size() - 1) {
                return fVar2;
            }
            i11 = fVar2.f3260b;
            f12 = fVar2.f3262d;
            i12++;
            fVar = fVar2;
            z10 = false;
        }
        return fVar;
    }

    public f u(int i10) {
        for (int i11 = 0; i11 < this.f3230g.size(); i11++) {
            f fVar = this.f3230g.get(i11);
            if (fVar.f3260b == i10) {
                return fVar;
            }
        }
        return null;
    }

    public void v() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f3244o = new Scroller(context, f3221o0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.H = viewConfiguration.getScaledPagingTouchSlop();
        this.O = (int) (400.0f * f10);
        this.P = viewConfiguration.getScaledMaximumFlingVelocity();
        this.T = new EdgeEffect(context);
        this.U = new EdgeEffect(context);
        this.Q = (int) (25.0f * f10);
        this.R = (int) (2.0f * f10);
        this.F = (int) (f10 * 16.0f);
        b0.t0(this, new h());
        if (b0.C(this) == 0) {
            b0.E0(this, 1);
        }
        b0.G0(this, new d());
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3248s;
    }

    public final boolean x(float f10, float f11) {
        return (f10 < ((float) this.G) && f11 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) || (f10 > ((float) (getWidth() - this.G)) && f11 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void y(int i10, float f10, int i11) {
        int max;
        int i12;
        int left;
        if (this.f3224b0 > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                g gVar = (g) childAt.getLayoutParams();
                if (gVar.f3264a) {
                    int i14 = gVar.f3265b & 7;
                    if (i14 == 1) {
                        max = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else {
                        if (i14 == 3) {
                            i12 = childAt.getWidth() + paddingLeft;
                        } else if (i14 != 5) {
                            i12 = paddingLeft;
                        } else {
                            max = (width - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = i12;
                    }
                    int i15 = max;
                    i12 = paddingLeft;
                    paddingLeft = i15;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                    }
                    paddingLeft = i12;
                }
            }
        }
        j(i10, f10, i11);
        if (this.f3231g0 != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i16 = 0; i16 < childCount2; i16++) {
                View childAt2 = getChildAt(i16);
                if (!((g) childAt2.getLayoutParams()).f3264a) {
                    this.f3231g0.a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f3223a0 = true;
    }

    public final void z(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.M) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.I = motionEvent.getX(i10);
            this.M = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.N;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* loaded from: classes.dex */
    public static class g extends ViewGroup.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public boolean f3264a;

        /* renamed from: b, reason: collision with root package name */
        public int f3265b;

        /* renamed from: c, reason: collision with root package name */
        public float f3266c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f3267d;

        /* renamed from: e, reason: collision with root package name */
        public int f3268e;

        /* renamed from: f, reason: collision with root package name */
        public int f3269f;

        public g() {
            super(-1, -1);
            this.f3266c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }

        public g(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3266c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f3219m0);
            this.f3265b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new g(getContext(), attributeSet);
    }

    public void setPageMarginDrawable(int i10) {
        setPageMarginDrawable(f0.a.f(getContext(), i10));
    }
}
