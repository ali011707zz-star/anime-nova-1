package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import g0.h;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* compiled from: AppCompatTextHelper.java */
/* loaded from: classes.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f1550a;

    /* renamed from: b, reason: collision with root package name */
    public t0 f1551b;

    /* renamed from: c, reason: collision with root package name */
    public t0 f1552c;

    /* renamed from: d, reason: collision with root package name */
    public t0 f1553d;

    /* renamed from: e, reason: collision with root package name */
    public t0 f1554e;

    /* renamed from: f, reason: collision with root package name */
    public t0 f1555f;

    /* renamed from: g, reason: collision with root package name */
    public t0 f1556g;

    /* renamed from: h, reason: collision with root package name */
    public t0 f1557h;

    /* renamed from: i, reason: collision with root package name */
    public final z f1558i;

    /* renamed from: j, reason: collision with root package name */
    public int f1559j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f1560k = -1;

    /* renamed from: l, reason: collision with root package name */
    public Typeface f1561l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1562m;

    /* compiled from: AppCompatTextHelper.java */
    /* loaded from: classes.dex */
    public class a extends h.d {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f1563a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f1564b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ WeakReference f1565c;

        public a(int i10, int i11, WeakReference weakReference) {
            this.f1563a = i10;
            this.f1564b = i11;
            this.f1565c = weakReference;
        }

        @Override // g0.h.d
        public void onFontRetrievalFailed(int i10) {
        }

        @Override // g0.h.d
        public void onFontRetrieved(Typeface typeface) {
            int i10;
            if (Build.VERSION.SDK_INT >= 28 && (i10 = this.f1563a) != -1) {
                typeface = Typeface.create(typeface, i10, (this.f1564b & 2) != 0);
            }
            y.this.n(this.f1565c, typeface);
        }
    }

    /* compiled from: AppCompatTextHelper.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ TextView f1567f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Typeface f1568g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f1569h;

        public b(TextView textView, Typeface typeface, int i10) {
            this.f1567f = textView;
            this.f1568g = typeface;
            this.f1569h = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1567f.setTypeface(this.f1568g, this.f1569h);
        }
    }

    public y(TextView textView) {
        this.f1550a = textView;
        this.f1558i = new z(textView);
    }

    public static t0 d(Context context, j jVar, int i10) {
        ColorStateList f10 = jVar.f(context, i10);
        if (f10 == null) {
            return null;
        }
        t0 t0Var = new t0();
        t0Var.f1489d = true;
        t0Var.f1486a = f10;
        return t0Var;
    }

    public void A(int i10, float f10) {
        if (u0.b.f14306e || l()) {
            return;
        }
        B(i10, f10);
    }

    public final void B(int i10, float f10) {
        this.f1558i.y(i10, f10);
    }

    public final void C(Context context, v0 v0Var) {
        String o10;
        this.f1559j = v0Var.k(d.j.f5345d3, this.f1559j);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            int k10 = v0Var.k(d.j.f5370i3, -1);
            this.f1560k = k10;
            if (k10 != -1) {
                this.f1559j = (this.f1559j & 2) | 0;
            }
        }
        int i11 = d.j.f5365h3;
        if (!v0Var.s(i11) && !v0Var.s(d.j.f5375j3)) {
            int i12 = d.j.f5340c3;
            if (v0Var.s(i12)) {
                this.f1562m = false;
                int k11 = v0Var.k(i12, 1);
                if (k11 == 1) {
                    this.f1561l = Typeface.SANS_SERIF;
                    return;
                } else if (k11 == 2) {
                    this.f1561l = Typeface.SERIF;
                    return;
                } else {
                    if (k11 != 3) {
                        return;
                    }
                    this.f1561l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f1561l = null;
        int i13 = d.j.f5375j3;
        if (v0Var.s(i13)) {
            i11 = i13;
        }
        int i14 = this.f1560k;
        int i15 = this.f1559j;
        if (!context.isRestricted()) {
            try {
                Typeface j10 = v0Var.j(i11, this.f1559j, new a(i14, i15, new WeakReference(this.f1550a)));
                if (j10 != null) {
                    if (i10 >= 28 && this.f1560k != -1) {
                        this.f1561l = Typeface.create(Typeface.create(j10, 0), this.f1560k, (this.f1559j & 2) != 0);
                    } else {
                        this.f1561l = j10;
                    }
                }
                this.f1562m = this.f1561l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f1561l != null || (o10 = v0Var.o(i11)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 28 && this.f1560k != -1) {
            this.f1561l = Typeface.create(Typeface.create(o10, 0), this.f1560k, (this.f1559j & 2) != 0);
        } else {
            this.f1561l = Typeface.create(o10, this.f1559j);
        }
    }

    public final void a(Drawable drawable, t0 t0Var) {
        if (drawable == null || t0Var == null) {
            return;
        }
        j.i(drawable, t0Var, this.f1550a.getDrawableState());
    }

    public void b() {
        if (this.f1551b != null || this.f1552c != null || this.f1553d != null || this.f1554e != null) {
            Drawable[] compoundDrawables = this.f1550a.getCompoundDrawables();
            a(compoundDrawables[0], this.f1551b);
            a(compoundDrawables[1], this.f1552c);
            a(compoundDrawables[2], this.f1553d);
            a(compoundDrawables[3], this.f1554e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f1555f == null && this.f1556g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f1550a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f1555f);
            a(compoundDrawablesRelative[2], this.f1556g);
        }
    }

    public void c() {
        this.f1558i.b();
    }

    public int e() {
        return this.f1558i.j();
    }

    public int f() {
        return this.f1558i.k();
    }

    public int g() {
        return this.f1558i.l();
    }

    public int[] h() {
        return this.f1558i.m();
    }

    public int i() {
        return this.f1558i.n();
    }

    public ColorStateList j() {
        t0 t0Var = this.f1557h;
        if (t0Var != null) {
            return t0Var.f1486a;
        }
        return null;
    }

    public PorterDuff.Mode k() {
        t0 t0Var = this.f1557h;
        if (t0Var != null) {
            return t0Var.f1487b;
        }
        return null;
    }

    public boolean l() {
        return this.f1558i.s();
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:145:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01e9  */
    @SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m(AttributeSet attributeSet, int i10) {
        String str;
        ColorStateList colorStateList;
        String str2;
        boolean z10;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        boolean z11;
        String str3;
        int i11;
        int i12;
        String str4;
        j jVar;
        Typeface typeface;
        v0 u10;
        int i13;
        int i14;
        int i15;
        int f10;
        int f11;
        int f12;
        int[] m10;
        Context context = this.f1550a.getContext();
        j b10 = j.b();
        int[] iArr = d.j.Y;
        v0 v10 = v0.v(context, attributeSet, iArr, i10, 0);
        TextView textView = this.f1550a;
        q0.b0.r0(textView, textView.getContext(), iArr, attributeSet, v10.r(), i10, 0);
        int n10 = v10.n(d.j.Z, -1);
        int i16 = d.j.f5337c0;
        if (v10.s(i16)) {
            this.f1551b = d(context, b10, v10.n(i16, 0));
        }
        int i17 = d.j.f5325a0;
        if (v10.s(i17)) {
            this.f1552c = d(context, b10, v10.n(i17, 0));
        }
        int i18 = d.j.f5342d0;
        if (v10.s(i18)) {
            this.f1553d = d(context, b10, v10.n(i18, 0));
        }
        int i19 = d.j.f5331b0;
        if (v10.s(i19)) {
            this.f1554e = d(context, b10, v10.n(i19, 0));
        }
        int i20 = Build.VERSION.SDK_INT;
        if (i20 >= 17) {
            int i21 = d.j.f5347e0;
            if (v10.s(i21)) {
                this.f1555f = d(context, b10, v10.n(i21, 0));
            }
            int i22 = d.j.f5352f0;
            if (v10.s(i22)) {
                this.f1556g = d(context, b10, v10.n(i22, 0));
            }
        }
        v10.w();
        boolean z12 = this.f1550a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (n10 != -1) {
            v0 t10 = v0.t(context, n10, d.j.f5328a3);
            if (!z12) {
                int i23 = d.j.f5385l3;
                if (t10.s(i23)) {
                    z10 = t10.a(i23, false);
                    z11 = true;
                    C(context, t10);
                    if (i20 >= 23) {
                        int i24 = d.j.f5350e3;
                        colorStateList = t10.s(i24) ? t10.c(i24) : null;
                        int i25 = d.j.f5355f3;
                        colorStateList2 = t10.s(i25) ? t10.c(i25) : null;
                        int i26 = d.j.f5360g3;
                        if (t10.s(i26)) {
                            colorStateList3 = t10.c(i26);
                            int i27 = d.j.f5390m3;
                            str2 = t10.s(i27) ? t10.o(i27) : null;
                            if (i20 >= 26) {
                                int i28 = d.j.f5380k3;
                                if (t10.s(i28)) {
                                    str = t10.o(i28);
                                    t10.w();
                                }
                            }
                            str = null;
                            t10.w();
                        }
                    } else {
                        colorStateList = null;
                        colorStateList2 = null;
                    }
                    colorStateList3 = null;
                    int i272 = d.j.f5390m3;
                    if (t10.s(i272)) {
                    }
                    if (i20 >= 26) {
                    }
                    str = null;
                    t10.w();
                }
            }
            z10 = false;
            z11 = false;
            C(context, t10);
            if (i20 >= 23) {
            }
            colorStateList3 = null;
            int i2722 = d.j.f5390m3;
            if (t10.s(i2722)) {
            }
            if (i20 >= 26) {
            }
            str = null;
            t10.w();
        } else {
            str = null;
            colorStateList = null;
            str2 = null;
            z10 = false;
            colorStateList2 = null;
            colorStateList3 = null;
            z11 = false;
        }
        v0 v11 = v0.v(context, attributeSet, d.j.f5328a3, i10, 0);
        if (!z12) {
            int i29 = d.j.f5385l3;
            if (v11.s(i29)) {
                str3 = str;
                z10 = v11.a(i29, false);
                i11 = 23;
                z11 = true;
                if (i20 < i11) {
                    int i30 = d.j.f5350e3;
                    if (v11.s(i30)) {
                        colorStateList = v11.c(i30);
                    }
                    int i31 = d.j.f5355f3;
                    if (v11.s(i31)) {
                        colorStateList2 = v11.c(i31);
                    }
                    int i32 = d.j.f5360g3;
                    if (v11.s(i32)) {
                        colorStateList3 = v11.c(i32);
                    }
                }
                i12 = d.j.f5390m3;
                if (v11.s(i12)) {
                    str2 = v11.o(i12);
                }
                if (i20 >= 26) {
                    int i33 = d.j.f5380k3;
                    if (v11.s(i33)) {
                        str4 = v11.o(i33);
                        if (i20 >= 28) {
                            int i34 = d.j.f5334b3;
                            if (v11.s(i34)) {
                                jVar = b10;
                                if (v11.f(i34, -1) == 0) {
                                    this.f1550a.setTextSize(0, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                                }
                                C(context, v11);
                                v11.w();
                                if (colorStateList != null) {
                                    this.f1550a.setTextColor(colorStateList);
                                }
                                if (colorStateList2 != null) {
                                    this.f1550a.setHintTextColor(colorStateList2);
                                }
                                if (colorStateList3 != null) {
                                    this.f1550a.setLinkTextColor(colorStateList3);
                                }
                                if (!z12 && z11) {
                                    s(z10);
                                }
                                typeface = this.f1561l;
                                if (typeface != null) {
                                    if (this.f1560k == -1) {
                                        this.f1550a.setTypeface(typeface, this.f1559j);
                                    } else {
                                        this.f1550a.setTypeface(typeface);
                                    }
                                }
                                if (str4 != null) {
                                    this.f1550a.setFontVariationSettings(str4);
                                }
                                if (str2 != null) {
                                    if (i20 >= 24) {
                                        this.f1550a.setTextLocales(LocaleList.forLanguageTags(str2));
                                    } else if (i20 >= 21) {
                                        this.f1550a.setTextLocale(Locale.forLanguageTag(str2.substring(0, str2.indexOf(44))));
                                    }
                                }
                                this.f1558i.t(attributeSet, i10);
                                if (u0.b.f14306e && this.f1558i.n() != 0) {
                                    m10 = this.f1558i.m();
                                    if (m10.length > 0) {
                                        if (this.f1550a.getAutoSizeStepGranularity() != -1.0f) {
                                            this.f1550a.setAutoSizeTextTypeUniformWithConfiguration(this.f1558i.k(), this.f1558i.j(), this.f1558i.l(), 0);
                                        } else {
                                            this.f1550a.setAutoSizeTextTypeUniformWithPresetSizes(m10, 0);
                                        }
                                    }
                                }
                                u10 = v0.u(context, attributeSet, d.j.f5357g0);
                                int n11 = u10.n(d.j.f5397o0, -1);
                                j jVar2 = jVar;
                                Drawable c10 = n11 == -1 ? jVar2.c(context, n11) : null;
                                int n12 = u10.n(d.j.f5422t0, -1);
                                Drawable c11 = n12 == -1 ? jVar2.c(context, n12) : null;
                                int n13 = u10.n(d.j.f5402p0, -1);
                                Drawable c12 = n13 == -1 ? jVar2.c(context, n13) : null;
                                int n14 = u10.n(d.j.f5387m0, -1);
                                Drawable c13 = n14 == -1 ? jVar2.c(context, n14) : null;
                                int n15 = u10.n(d.j.f5407q0, -1);
                                Drawable c14 = n15 == -1 ? jVar2.c(context, n15) : null;
                                int n16 = u10.n(d.j.f5392n0, -1);
                                y(c10, c11, c12, c13, c14, n16 == -1 ? jVar2.c(context, n16) : null);
                                i13 = d.j.f5412r0;
                                if (u10.s(i13)) {
                                    u0.j.j(this.f1550a, u10.c(i13));
                                }
                                i14 = d.j.f5417s0;
                                if (u10.s(i14)) {
                                    i15 = -1;
                                } else {
                                    i15 = -1;
                                    u0.j.k(this.f1550a, d0.e(u10.k(i14, -1), null));
                                }
                                f10 = u10.f(d.j.f5432v0, i15);
                                f11 = u10.f(d.j.f5437w0, i15);
                                f12 = u10.f(d.j.f5442x0, i15);
                                u10.w();
                                if (f10 != i15) {
                                    u0.j.m(this.f1550a, f10);
                                }
                                if (f11 != i15) {
                                    u0.j.n(this.f1550a, f11);
                                }
                                if (f12 == i15) {
                                    u0.j.o(this.f1550a, f12);
                                    return;
                                }
                                return;
                            }
                        }
                        jVar = b10;
                        C(context, v11);
                        v11.w();
                        if (colorStateList != null) {
                        }
                        if (colorStateList2 != null) {
                        }
                        if (colorStateList3 != null) {
                        }
                        if (!z12) {
                            s(z10);
                        }
                        typeface = this.f1561l;
                        if (typeface != null) {
                        }
                        if (str4 != null) {
                        }
                        if (str2 != null) {
                        }
                        this.f1558i.t(attributeSet, i10);
                        if (u0.b.f14306e) {
                            m10 = this.f1558i.m();
                            if (m10.length > 0) {
                            }
                        }
                        u10 = v0.u(context, attributeSet, d.j.f5357g0);
                        int n112 = u10.n(d.j.f5397o0, -1);
                        j jVar22 = jVar;
                        if (n112 == -1) {
                        }
                        int n122 = u10.n(d.j.f5422t0, -1);
                        if (n122 == -1) {
                        }
                        int n132 = u10.n(d.j.f5402p0, -1);
                        if (n132 == -1) {
                        }
                        int n142 = u10.n(d.j.f5387m0, -1);
                        if (n142 == -1) {
                        }
                        int n152 = u10.n(d.j.f5407q0, -1);
                        if (n152 == -1) {
                        }
                        int n162 = u10.n(d.j.f5392n0, -1);
                        y(c10, c11, c12, c13, c14, n162 == -1 ? jVar22.c(context, n162) : null);
                        i13 = d.j.f5412r0;
                        if (u10.s(i13)) {
                        }
                        i14 = d.j.f5417s0;
                        if (u10.s(i14)) {
                        }
                        f10 = u10.f(d.j.f5432v0, i15);
                        f11 = u10.f(d.j.f5437w0, i15);
                        f12 = u10.f(d.j.f5442x0, i15);
                        u10.w();
                        if (f10 != i15) {
                        }
                        if (f11 != i15) {
                        }
                        if (f12 == i15) {
                        }
                    }
                }
                str4 = str3;
                if (i20 >= 28) {
                }
                jVar = b10;
                C(context, v11);
                v11.w();
                if (colorStateList != null) {
                }
                if (colorStateList2 != null) {
                }
                if (colorStateList3 != null) {
                }
                if (!z12) {
                }
                typeface = this.f1561l;
                if (typeface != null) {
                }
                if (str4 != null) {
                }
                if (str2 != null) {
                }
                this.f1558i.t(attributeSet, i10);
                if (u0.b.f14306e) {
                }
                u10 = v0.u(context, attributeSet, d.j.f5357g0);
                int n1122 = u10.n(d.j.f5397o0, -1);
                j jVar222 = jVar;
                if (n1122 == -1) {
                }
                int n1222 = u10.n(d.j.f5422t0, -1);
                if (n1222 == -1) {
                }
                int n1322 = u10.n(d.j.f5402p0, -1);
                if (n1322 == -1) {
                }
                int n1422 = u10.n(d.j.f5387m0, -1);
                if (n1422 == -1) {
                }
                int n1522 = u10.n(d.j.f5407q0, -1);
                if (n1522 == -1) {
                }
                int n1622 = u10.n(d.j.f5392n0, -1);
                y(c10, c11, c12, c13, c14, n1622 == -1 ? jVar222.c(context, n1622) : null);
                i13 = d.j.f5412r0;
                if (u10.s(i13)) {
                }
                i14 = d.j.f5417s0;
                if (u10.s(i14)) {
                }
                f10 = u10.f(d.j.f5432v0, i15);
                f11 = u10.f(d.j.f5437w0, i15);
                f12 = u10.f(d.j.f5442x0, i15);
                u10.w();
                if (f10 != i15) {
                }
                if (f11 != i15) {
                }
                if (f12 == i15) {
                }
            }
        }
        str3 = str;
        i11 = 23;
        if (i20 < i11) {
        }
        i12 = d.j.f5390m3;
        if (v11.s(i12)) {
        }
        if (i20 >= 26) {
        }
        str4 = str3;
        if (i20 >= 28) {
        }
        jVar = b10;
        C(context, v11);
        v11.w();
        if (colorStateList != null) {
        }
        if (colorStateList2 != null) {
        }
        if (colorStateList3 != null) {
        }
        if (!z12) {
        }
        typeface = this.f1561l;
        if (typeface != null) {
        }
        if (str4 != null) {
        }
        if (str2 != null) {
        }
        this.f1558i.t(attributeSet, i10);
        if (u0.b.f14306e) {
        }
        u10 = v0.u(context, attributeSet, d.j.f5357g0);
        int n11222 = u10.n(d.j.f5397o0, -1);
        j jVar2222 = jVar;
        if (n11222 == -1) {
        }
        int n12222 = u10.n(d.j.f5422t0, -1);
        if (n12222 == -1) {
        }
        int n13222 = u10.n(d.j.f5402p0, -1);
        if (n13222 == -1) {
        }
        int n14222 = u10.n(d.j.f5387m0, -1);
        if (n14222 == -1) {
        }
        int n15222 = u10.n(d.j.f5407q0, -1);
        if (n15222 == -1) {
        }
        int n16222 = u10.n(d.j.f5392n0, -1);
        y(c10, c11, c12, c13, c14, n16222 == -1 ? jVar2222.c(context, n16222) : null);
        i13 = d.j.f5412r0;
        if (u10.s(i13)) {
        }
        i14 = d.j.f5417s0;
        if (u10.s(i14)) {
        }
        f10 = u10.f(d.j.f5432v0, i15);
        f11 = u10.f(d.j.f5437w0, i15);
        f12 = u10.f(d.j.f5442x0, i15);
        u10.w();
        if (f10 != i15) {
        }
        if (f11 != i15) {
        }
        if (f12 == i15) {
        }
    }

    public void n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f1562m) {
            this.f1561l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                if (q0.b0.W(textView)) {
                    textView.post(new b(textView, typeface, this.f1559j));
                } else {
                    textView.setTypeface(typeface, this.f1559j);
                }
            }
        }
    }

    public void o(boolean z10, int i10, int i11, int i12, int i13) {
        if (u0.b.f14306e) {
            return;
        }
        c();
    }

    public void p() {
        b();
    }

    public void q(Context context, int i10) {
        String o10;
        ColorStateList c10;
        ColorStateList c11;
        ColorStateList c12;
        v0 t10 = v0.t(context, i10, d.j.f5328a3);
        int i11 = d.j.f5385l3;
        if (t10.s(i11)) {
            s(t10.a(i11, false));
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 < 23) {
            int i13 = d.j.f5350e3;
            if (t10.s(i13) && (c12 = t10.c(i13)) != null) {
                this.f1550a.setTextColor(c12);
            }
            int i14 = d.j.f5360g3;
            if (t10.s(i14) && (c11 = t10.c(i14)) != null) {
                this.f1550a.setLinkTextColor(c11);
            }
            int i15 = d.j.f5355f3;
            if (t10.s(i15) && (c10 = t10.c(i15)) != null) {
                this.f1550a.setHintTextColor(c10);
            }
        }
        int i16 = d.j.f5334b3;
        if (t10.s(i16) && t10.f(i16, -1) == 0) {
            this.f1550a.setTextSize(0, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
        C(context, t10);
        if (i12 >= 26) {
            int i17 = d.j.f5380k3;
            if (t10.s(i17) && (o10 = t10.o(i17)) != null) {
                this.f1550a.setFontVariationSettings(o10);
            }
        }
        t10.w();
        Typeface typeface = this.f1561l;
        if (typeface != null) {
            this.f1550a.setTypeface(typeface, this.f1559j);
        }
    }

    public void r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        t0.a.f(editorInfo, textView.getText());
    }

    public void s(boolean z10) {
        this.f1550a.setAllCaps(z10);
    }

    public void t(int i10, int i11, int i12, int i13) throws IllegalArgumentException {
        this.f1558i.u(i10, i11, i12, i13);
    }

    public void u(int[] iArr, int i10) throws IllegalArgumentException {
        this.f1558i.v(iArr, i10);
    }

    public void v(int i10) {
        this.f1558i.w(i10);
    }

    public void w(ColorStateList colorStateList) {
        if (this.f1557h == null) {
            this.f1557h = new t0();
        }
        t0 t0Var = this.f1557h;
        t0Var.f1486a = colorStateList;
        t0Var.f1489d = colorStateList != null;
        z();
    }

    public void x(PorterDuff.Mode mode) {
        if (this.f1557h == null) {
            this.f1557h = new t0();
        }
        t0 t0Var = this.f1557h;
        t0Var.f1487b = mode;
        t0Var.f1488c = mode != null;
        z();
    }

    public final void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f1550a.getCompoundDrawablesRelative();
            TextView textView = this.f1550a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        if (i10 >= 17) {
            Drawable[] compoundDrawablesRelative2 = this.f1550a.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                TextView textView2 = this.f1550a;
                Drawable drawable7 = compoundDrawablesRelative2[0];
                if (drawable2 == null) {
                    drawable2 = compoundDrawablesRelative2[1];
                }
                Drawable drawable8 = compoundDrawablesRelative2[2];
                if (drawable4 == null) {
                    drawable4 = compoundDrawablesRelative2[3];
                }
                textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                return;
            }
        }
        Drawable[] compoundDrawables = this.f1550a.getCompoundDrawables();
        TextView textView3 = this.f1550a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    public final void z() {
        t0 t0Var = this.f1557h;
        this.f1551b = t0Var;
        this.f1552c = t0Var;
        this.f1553d = t0Var;
        this.f1554e = t0Var;
        this.f1555f = t0Var;
        this.f1556g = t0Var;
    }
}
