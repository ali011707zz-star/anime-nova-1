package com.airbnb.lottie;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import e3.h;
import e3.j;
import e3.k;
import e3.l;
import e3.m;
import e3.n;
import e3.o;
import e3.p;
import e3.q;
import e3.r;
import e3.s;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Callable;
import q0.b0;

/* loaded from: classes.dex */
public class LottieAnimationView extends AppCompatImageView {

    /* renamed from: y, reason: collision with root package name */
    public static final String f4018y = LottieAnimationView.class.getSimpleName();

    /* renamed from: z, reason: collision with root package name */
    public static final h<Throwable> f4019z = new a();

    /* renamed from: f, reason: collision with root package name */
    public final h<e3.d> f4020f;

    /* renamed from: g, reason: collision with root package name */
    public final h<Throwable> f4021g;

    /* renamed from: h, reason: collision with root package name */
    public h<Throwable> f4022h;

    /* renamed from: i, reason: collision with root package name */
    public int f4023i;

    /* renamed from: j, reason: collision with root package name */
    public final e3.f f4024j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4025k;

    /* renamed from: l, reason: collision with root package name */
    public String f4026l;

    /* renamed from: m, reason: collision with root package name */
    public int f4027m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f4028n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f4029o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f4030p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f4031q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f4032r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f4033s;

    /* renamed from: t, reason: collision with root package name */
    public q f4034t;

    /* renamed from: u, reason: collision with root package name */
    public final Set<j> f4035u;

    /* renamed from: v, reason: collision with root package name */
    public int f4036v;

    /* renamed from: w, reason: collision with root package name */
    public m<e3.d> f4037w;

    /* renamed from: x, reason: collision with root package name */
    public e3.d f4038x;

    /* loaded from: classes.dex */
    public class a implements h<Throwable> {
        @Override // e3.h
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Throwable th) {
            if (q3.h.k(th)) {
                q3.d.d("Unable to load composition.", th);
                return;
            }
            throw new IllegalStateException("Unable to parse composition", th);
        }
    }

    /* loaded from: classes.dex */
    public class b implements h<e3.d> {
        public b() {
        }

        @Override // e3.h
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(e3.d dVar) {
            LottieAnimationView.this.setComposition(dVar);
        }
    }

    /* loaded from: classes.dex */
    public class c implements h<Throwable> {
        public c() {
        }

        @Override // e3.h
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Throwable th) {
            if (LottieAnimationView.this.f4023i != 0) {
                LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                lottieAnimationView.setImageResource(lottieAnimationView.f4023i);
            }
            (LottieAnimationView.this.f4022h == null ? LottieAnimationView.f4019z : LottieAnimationView.this.f4022h).a(th);
        }
    }

    /* loaded from: classes.dex */
    public class d implements Callable<l<e3.d>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f4041a;

        public d(int i10) {
            this.f4041a = i10;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public l<e3.d> call() {
            return LottieAnimationView.this.f4033s ? e3.e.o(LottieAnimationView.this.getContext(), this.f4041a) : e3.e.p(LottieAnimationView.this.getContext(), this.f4041a, null);
        }
    }

    /* loaded from: classes.dex */
    public class e implements Callable<l<e3.d>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f4043a;

        public e(String str) {
            this.f4043a = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public l<e3.d> call() {
            return LottieAnimationView.this.f4033s ? e3.e.f(LottieAnimationView.this.getContext(), this.f4043a) : e3.e.g(LottieAnimationView.this.getContext(), this.f4043a, null);
        }
    }

    /* loaded from: classes.dex */
    public static /* synthetic */ class f {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4045a;

        static {
            int[] iArr = new int[q.values().length];
            f4045a = iArr;
            try {
                iArr[q.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4045a[q.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4045a[q.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class g extends View.BaseSavedState {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public String f4046f;

        /* renamed from: g, reason: collision with root package name */
        public int f4047g;

        /* renamed from: h, reason: collision with root package name */
        public float f4048h;

        /* renamed from: i, reason: collision with root package name */
        public boolean f4049i;

        /* renamed from: j, reason: collision with root package name */
        public String f4050j;

        /* renamed from: k, reason: collision with root package name */
        public int f4051k;

        /* renamed from: l, reason: collision with root package name */
        public int f4052l;

        /* loaded from: classes.dex */
        public class a implements Parcelable.Creator<g> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel) {
                return new g(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public g[] newArray(int i10) {
                return new g[i10];
            }
        }

        public /* synthetic */ g(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f4046f);
            parcel.writeFloat(this.f4048h);
            parcel.writeInt(this.f4049i ? 1 : 0);
            parcel.writeString(this.f4050j);
            parcel.writeInt(this.f4051k);
            parcel.writeInt(this.f4052l);
        }

        public g(Parcelable parcelable) {
            super(parcelable);
        }

        public g(Parcel parcel) {
            super(parcel);
            this.f4046f = parcel.readString();
            this.f4048h = parcel.readFloat();
            this.f4049i = parcel.readInt() == 1;
            this.f4050j = parcel.readString();
            this.f4051k = parcel.readInt();
            this.f4052l = parcel.readInt();
        }
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4020f = new b();
        this.f4021g = new c();
        this.f4023i = 0;
        this.f4024j = new e3.f();
        this.f4028n = false;
        this.f4029o = false;
        this.f4030p = false;
        this.f4031q = false;
        this.f4032r = false;
        this.f4033s = true;
        this.f4034t = q.AUTOMATIC;
        this.f4035u = new HashSet();
        this.f4036v = 0;
        o(attributeSet, o.f6145a);
    }

    private void setCompositionTask(m<e3.d> mVar) {
        j();
        i();
        this.f4037w = mVar.f(this.f4020f).e(this.f4021g);
    }

    @Override // android.view.View
    public void buildDrawingCache(boolean z10) {
        e3.c.a("buildDrawingCache");
        this.f4036v++;
        super.buildDrawingCache(z10);
        if (this.f4036v == 1 && getWidth() > 0 && getHeight() > 0 && getLayerType() == 1 && getDrawingCache(z10) == null) {
            setRenderMode(q.HARDWARE);
        }
        this.f4036v--;
        e3.c.b("buildDrawingCache");
    }

    public <T> void g(j3.e eVar, T t10, r3.c<T> cVar) {
        this.f4024j.c(eVar, t10, cVar);
    }

    public e3.d getComposition() {
        return this.f4038x;
    }

    public long getDuration() {
        if (this.f4038x != null) {
            return r0.d();
        }
        return 0L;
    }

    public int getFrame() {
        return this.f4024j.s();
    }

    public String getImageAssetsFolder() {
        return this.f4024j.v();
    }

    public float getMaxFrame() {
        return this.f4024j.w();
    }

    public float getMinFrame() {
        return this.f4024j.y();
    }

    public n getPerformanceTracker() {
        return this.f4024j.z();
    }

    public float getProgress() {
        return this.f4024j.A();
    }

    public int getRepeatCount() {
        return this.f4024j.B();
    }

    public int getRepeatMode() {
        return this.f4024j.C();
    }

    public float getScale() {
        return this.f4024j.D();
    }

    public float getSpeed() {
        return this.f4024j.E();
    }

    public void h() {
        this.f4030p = false;
        this.f4029o = false;
        this.f4028n = false;
        this.f4024j.h();
        l();
    }

    public final void i() {
        m<e3.d> mVar = this.f4037w;
        if (mVar != null) {
            mVar.k(this.f4020f);
            this.f4037w.j(this.f4021g);
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        e3.f fVar = this.f4024j;
        if (drawable2 == fVar) {
            super.invalidateDrawable(fVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public final void j() {
        this.f4038x = null;
        this.f4024j.i();
    }

    public void k(boolean z10) {
        this.f4024j.m(z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0044, code lost:
    
        if (r3 != false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l() {
        e3.d dVar;
        int i10;
        int i11 = f.f4045a[this.f4034t.ordinal()];
        int i12 = 2;
        if (i11 != 1) {
            if (i11 != 2 && i11 == 3) {
                e3.d dVar2 = this.f4038x;
                boolean z10 = false;
                if ((dVar2 == null || !dVar2.q() || Build.VERSION.SDK_INT >= 28) && (((dVar = this.f4038x) == null || dVar.m() <= 4) && (i10 = Build.VERSION.SDK_INT) >= 21 && i10 != 24 && i10 != 25)) {
                    z10 = true;
                }
            }
            i12 = 1;
        }
        if (i12 != getLayerType()) {
            setLayerType(i12, null);
        }
    }

    public final m<e3.d> m(String str) {
        if (isInEditMode()) {
            return new m<>(new e(str), true);
        }
        return this.f4033s ? e3.e.d(getContext(), str) : e3.e.e(getContext(), str, null);
    }

    public final m<e3.d> n(int i10) {
        if (isInEditMode()) {
            return new m<>(new d(i10), true);
        }
        return this.f4033s ? e3.e.m(getContext(), i10) : e3.e.n(getContext(), i10, null);
    }

    public final void o(AttributeSet attributeSet, int i10) {
        String string;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, p.C, i10, 0);
        this.f4033s = obtainStyledAttributes.getBoolean(p.E, true);
        int i11 = p.N;
        boolean hasValue = obtainStyledAttributes.hasValue(i11);
        int i12 = p.I;
        boolean hasValue2 = obtainStyledAttributes.hasValue(i12);
        int i13 = p.T;
        boolean hasValue3 = obtainStyledAttributes.hasValue(i13);
        if (hasValue && hasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (hasValue) {
            int resourceId = obtainStyledAttributes.getResourceId(i11, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (hasValue2) {
            String string2 = obtainStyledAttributes.getString(i12);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (hasValue3 && (string = obtainStyledAttributes.getString(i13)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(obtainStyledAttributes.getResourceId(p.H, 0));
        if (obtainStyledAttributes.getBoolean(p.D, false)) {
            this.f4030p = true;
            this.f4032r = true;
        }
        if (obtainStyledAttributes.getBoolean(p.L, false)) {
            this.f4024j.f0(-1);
        }
        int i14 = p.Q;
        if (obtainStyledAttributes.hasValue(i14)) {
            setRepeatMode(obtainStyledAttributes.getInt(i14, 1));
        }
        int i15 = p.P;
        if (obtainStyledAttributes.hasValue(i15)) {
            setRepeatCount(obtainStyledAttributes.getInt(i15, -1));
        }
        int i16 = p.S;
        if (obtainStyledAttributes.hasValue(i16)) {
            setSpeed(obtainStyledAttributes.getFloat(i16, 1.0f));
        }
        setImageAssetsFolder(obtainStyledAttributes.getString(p.K));
        setProgress(obtainStyledAttributes.getFloat(p.M, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        k(obtainStyledAttributes.getBoolean(p.G, false));
        int i17 = p.F;
        if (obtainStyledAttributes.hasValue(i17)) {
            g(new j3.e("**"), k.K, new r3.c(new r(f.a.a(getContext(), obtainStyledAttributes.getResourceId(i17, -1)).getDefaultColor())));
        }
        int i18 = p.R;
        if (obtainStyledAttributes.hasValue(i18)) {
            this.f4024j.i0(obtainStyledAttributes.getFloat(i18, 1.0f));
        }
        int i19 = p.O;
        if (obtainStyledAttributes.hasValue(i19)) {
            q qVar = q.AUTOMATIC;
            int i20 = obtainStyledAttributes.getInt(i19, qVar.ordinal());
            if (i20 >= q.values().length) {
                i20 = qVar.ordinal();
            }
            setRenderMode(q.values()[i20]);
        }
        setIgnoreDisabledSystemAnimations(obtainStyledAttributes.getBoolean(p.J, false));
        obtainStyledAttributes.recycle();
        this.f4024j.k0(Boolean.valueOf(q3.h.f(getContext()) != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        l();
        this.f4025k = true;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && (this.f4032r || this.f4030p)) {
            r();
            this.f4032r = false;
            this.f4030p = false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            onVisibilityChanged(this, getVisibility());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        if (p()) {
            h();
            this.f4030p = true;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        g gVar = (g) parcelable;
        super.onRestoreInstanceState(gVar.getSuperState());
        String str = gVar.f4046f;
        this.f4026l = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.f4026l);
        }
        int i10 = gVar.f4047g;
        this.f4027m = i10;
        if (i10 != 0) {
            setAnimation(i10);
        }
        setProgress(gVar.f4048h);
        if (gVar.f4049i) {
            r();
        }
        this.f4024j.T(gVar.f4050j);
        setRepeatMode(gVar.f4051k);
        setRepeatCount(gVar.f4052l);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        g gVar = new g(super.onSaveInstanceState());
        gVar.f4046f = this.f4026l;
        gVar.f4047g = this.f4027m;
        gVar.f4048h = this.f4024j.A();
        gVar.f4049i = this.f4024j.H() || (!b0.W(this) && this.f4030p);
        gVar.f4050j = this.f4024j.v();
        gVar.f4051k = this.f4024j.C();
        gVar.f4052l = this.f4024j.B();
        return gVar;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i10) {
        if (this.f4025k) {
            if (isShown()) {
                if (this.f4029o) {
                    s();
                } else if (this.f4028n) {
                    r();
                }
                this.f4029o = false;
                this.f4028n = false;
                return;
            }
            if (p()) {
                q();
                this.f4029o = true;
            }
        }
    }

    public boolean p() {
        return this.f4024j.H();
    }

    public void q() {
        this.f4032r = false;
        this.f4030p = false;
        this.f4029o = false;
        this.f4028n = false;
        this.f4024j.J();
        l();
    }

    public void r() {
        if (isShown()) {
            this.f4024j.K();
            l();
        } else {
            this.f4028n = true;
        }
    }

    public void s() {
        if (isShown()) {
            this.f4024j.M();
            l();
        } else {
            this.f4028n = false;
            this.f4029o = true;
        }
    }

    public void setAnimation(int i10) {
        this.f4027m = i10;
        this.f4026l = null;
        setCompositionTask(n(i10));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        u(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f4033s ? e3.e.q(getContext(), str) : e3.e.r(getContext(), str, null));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.f4024j.N(z10);
    }

    public void setCacheComposition(boolean z10) {
        this.f4033s = z10;
    }

    public void setComposition(e3.d dVar) {
        if (e3.c.f6007a) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Set Composition \n");
            sb2.append(dVar);
        }
        this.f4024j.setCallback(this);
        this.f4038x = dVar;
        this.f4031q = true;
        boolean O = this.f4024j.O(dVar);
        this.f4031q = false;
        l();
        if (getDrawable() != this.f4024j || O) {
            if (!O) {
                v();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator<j> it2 = this.f4035u.iterator();
            while (it2.hasNext()) {
                it2.next().a(dVar);
            }
        }
    }

    public void setFailureListener(h<Throwable> hVar) {
        this.f4022h = hVar;
    }

    public void setFallbackResource(int i10) {
        this.f4023i = i10;
    }

    public void setFontAssetDelegate(e3.a aVar) {
        this.f4024j.P(aVar);
    }

    public void setFrame(int i10) {
        this.f4024j.Q(i10);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.f4024j.R(z10);
    }

    public void setImageAssetDelegate(e3.b bVar) {
        this.f4024j.S(bVar);
    }

    public void setImageAssetsFolder(String str) {
        this.f4024j.T(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        i();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        i();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        i();
        super.setImageResource(i10);
    }

    public void setMaxFrame(int i10) {
        this.f4024j.U(i10);
    }

    public void setMaxProgress(float f10) {
        this.f4024j.W(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.f4024j.Y(str);
    }

    public void setMinFrame(int i10) {
        this.f4024j.Z(i10);
    }

    public void setMinProgress(float f10) {
        this.f4024j.b0(f10);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.f4024j.c0(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.f4024j.d0(z10);
    }

    public void setProgress(float f10) {
        this.f4024j.e0(f10);
    }

    public void setRenderMode(q qVar) {
        this.f4034t = qVar;
        l();
    }

    public void setRepeatCount(int i10) {
        this.f4024j.f0(i10);
    }

    public void setRepeatMode(int i10) {
        this.f4024j.g0(i10);
    }

    public void setSafeMode(boolean z10) {
        this.f4024j.h0(z10);
    }

    public void setScale(float f10) {
        this.f4024j.i0(f10);
        if (getDrawable() == this.f4024j) {
            v();
        }
    }

    public void setSpeed(float f10) {
        this.f4024j.j0(f10);
    }

    public void setTextDelegate(s sVar) {
        this.f4024j.l0(sVar);
    }

    public void t(InputStream inputStream, String str) {
        setCompositionTask(e3.e.h(inputStream, str));
    }

    public void u(String str, String str2) {
        t(new ByteArrayInputStream(str.getBytes()), str2);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        e3.f fVar;
        if (!this.f4031q && drawable == (fVar = this.f4024j) && fVar.H()) {
            q();
        } else if (!this.f4031q && (drawable instanceof e3.f)) {
            e3.f fVar2 = (e3.f) drawable;
            if (fVar2.H()) {
                fVar2.J();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    public final void v() {
        boolean p10 = p();
        setImageDrawable(null);
        setImageDrawable(this.f4024j);
        if (p10) {
            this.f4024j.M();
        }
    }

    public void setMaxFrame(String str) {
        this.f4024j.V(str);
    }

    public void setMinFrame(String str) {
        this.f4024j.a0(str);
    }

    public void setAnimation(String str) {
        this.f4026l = str;
        this.f4027m = 0;
        setCompositionTask(m(str));
    }
}
