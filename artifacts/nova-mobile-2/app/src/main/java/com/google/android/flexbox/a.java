package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.http.impl.auth.NTLMEngineImpl;
import q0.h;
import u0.d;
import v9.b;
import v9.c;

/* compiled from: FlexboxHelper.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final v9.a f4725a;

    /* renamed from: b, reason: collision with root package name */
    public boolean[] f4726b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f4727c;

    /* renamed from: d, reason: collision with root package name */
    public long[] f4728d;

    /* renamed from: e, reason: collision with root package name */
    public long[] f4729e;

    /* compiled from: FlexboxHelper.java */
    /* renamed from: com.google.android.flexbox.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0088a {

        /* renamed from: a, reason: collision with root package name */
        public List<c> f4730a;

        /* renamed from: b, reason: collision with root package name */
        public int f4731b;

        public void a() {
            this.f4730a = null;
            this.f4731b = 0;
        }
    }

    public a(v9.a aVar) {
        this.f4725a = aVar;
    }

    public final int A(boolean z10) {
        if (z10) {
            return this.f4725a.getPaddingBottom();
        }
        return this.f4725a.getPaddingEnd();
    }

    public final int B(boolean z10) {
        if (z10) {
            return this.f4725a.getPaddingEnd();
        }
        return this.f4725a.getPaddingBottom();
    }

    public final int C(boolean z10) {
        if (z10) {
            return this.f4725a.getPaddingTop();
        }
        return this.f4725a.getPaddingStart();
    }

    public final int D(boolean z10) {
        if (z10) {
            return this.f4725a.getPaddingStart();
        }
        return this.f4725a.getPaddingTop();
    }

    public final int E(View view, boolean z10) {
        if (z10) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    public final int F(View view, boolean z10) {
        if (z10) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    public final boolean G(int i10, int i11, c cVar) {
        return i10 == i11 - 1 && cVar.c() != 0;
    }

    public final boolean H(View view, int i10, int i11, int i12, int i13, b bVar, int i14, int i15, int i16) {
        if (this.f4725a.i() == 0) {
            return false;
        }
        if (bVar.L()) {
            return true;
        }
        if (i10 == 0) {
            return false;
        }
        int f10 = this.f4725a.f();
        if (f10 != -1 && f10 <= i16 + 1) {
            return false;
        }
        int a10 = this.f4725a.a(view, i14, i15);
        if (a10 > 0) {
            i13 += a10;
        }
        return i11 < i12 + i13;
    }

    public void I(View view, c cVar, int i10, int i11, int i12, int i13) {
        b bVar = (b) view.getLayoutParams();
        int m10 = this.f4725a.m();
        if (bVar.k() != -1) {
            m10 = bVar.k();
        }
        int i14 = cVar.f14976g;
        if (m10 != 0) {
            if (m10 == 1) {
                if (this.f4725a.i() != 2) {
                    int i15 = i11 + i14;
                    view.layout(i10, (i15 - view.getMeasuredHeight()) - bVar.U(), i12, i15 - bVar.U());
                    return;
                } else {
                    view.layout(i10, (i11 - i14) + view.getMeasuredHeight() + bVar.h0(), i12, (i13 - i14) + view.getMeasuredHeight() + bVar.h0());
                    return;
                }
            }
            if (m10 == 2) {
                int measuredHeight = (((i14 - view.getMeasuredHeight()) + bVar.h0()) - bVar.U()) / 2;
                if (this.f4725a.i() != 2) {
                    int i16 = i11 + measuredHeight;
                    view.layout(i10, i16, i12, view.getMeasuredHeight() + i16);
                    return;
                } else {
                    int i17 = i11 - measuredHeight;
                    view.layout(i10, i17, i12, view.getMeasuredHeight() + i17);
                    return;
                }
            }
            if (m10 == 3) {
                if (this.f4725a.i() != 2) {
                    int max = Math.max(cVar.f14981l - view.getBaseline(), bVar.h0());
                    view.layout(i10, i11 + max, i12, i13 + max);
                    return;
                } else {
                    int max2 = Math.max((cVar.f14981l - view.getMeasuredHeight()) + view.getBaseline(), bVar.U());
                    view.layout(i10, i11 - max2, i12, i13 - max2);
                    return;
                }
            }
            if (m10 != 4) {
                return;
            }
        }
        if (this.f4725a.i() != 2) {
            view.layout(i10, i11 + bVar.h0(), i12, i13 + bVar.h0());
        } else {
            view.layout(i10, i11 - bVar.U(), i12, i13 - bVar.U());
        }
    }

    public void J(View view, c cVar, boolean z10, int i10, int i11, int i12, int i13) {
        b bVar = (b) view.getLayoutParams();
        int m10 = this.f4725a.m();
        if (bVar.k() != -1) {
            m10 = bVar.k();
        }
        int i14 = cVar.f14976g;
        if (m10 != 0) {
            if (m10 == 1) {
                if (!z10) {
                    view.layout(((i10 + i14) - view.getMeasuredWidth()) - bVar.z(), i11, ((i12 + i14) - view.getMeasuredWidth()) - bVar.z(), i13);
                    return;
                } else {
                    view.layout((i10 - i14) + view.getMeasuredWidth() + bVar.V(), i11, (i12 - i14) + view.getMeasuredWidth() + bVar.V(), i13);
                    return;
                }
            }
            if (m10 == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i14 - view.getMeasuredWidth()) + h.b(marginLayoutParams)) - h.a(marginLayoutParams)) / 2;
                if (!z10) {
                    view.layout(i10 + measuredWidth, i11, i12 + measuredWidth, i13);
                    return;
                } else {
                    view.layout(i10 - measuredWidth, i11, i12 - measuredWidth, i13);
                    return;
                }
            }
            if (m10 != 3 && m10 != 4) {
                return;
            }
        }
        if (!z10) {
            view.layout(i10 + bVar.V(), i11, i12 + bVar.V(), i13);
        } else {
            view.layout(i10 - bVar.z(), i11, i12 - bVar.z(), i13);
        }
    }

    public long K(int i10, int i11) {
        return (i10 & 4294967295L) | (i11 << 32);
    }

    public final void L(int i10, int i11, c cVar, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int i16;
        int i17 = cVar.f14974e;
        float f10 = cVar.f14980k;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || i12 > i17) {
            return;
        }
        float f12 = (i17 - i12) / f10;
        cVar.f14974e = i13 + cVar.f14975f;
        if (!z10) {
            cVar.f14976g = Integer.MIN_VALUE;
        }
        int i18 = 0;
        boolean z11 = false;
        int i19 = 0;
        float f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        while (i18 < cVar.f14977h) {
            int i20 = cVar.f14984o + i18;
            View k10 = this.f4725a.k(i20);
            if (k10 == null || k10.getVisibility() == 8) {
                i14 = i17;
                i15 = i18;
            } else {
                b bVar = (b) k10.getLayoutParams();
                int e10 = this.f4725a.e();
                if (e10 != 0 && e10 != 1) {
                    int measuredHeight = k10.getMeasuredHeight();
                    long[] jArr = this.f4729e;
                    if (jArr != null) {
                        measuredHeight = q(jArr[i20]);
                    }
                    int measuredWidth = k10.getMeasuredWidth();
                    long[] jArr2 = this.f4729e;
                    if (jArr2 != null) {
                        measuredWidth = r(jArr2[i20]);
                    }
                    if (this.f4726b[i20] || bVar.x() <= f11) {
                        i14 = i17;
                        i15 = i18;
                    } else {
                        float x10 = measuredHeight - (bVar.x() * f12);
                        if (i18 == cVar.f14977h - 1) {
                            x10 += f13;
                            f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        }
                        int round = Math.round(x10);
                        if (round < bVar.F()) {
                            round = bVar.F();
                            this.f4726b[i20] = true;
                            cVar.f14980k -= bVar.x();
                            i14 = i17;
                            i15 = i18;
                            z11 = true;
                        } else {
                            f13 += x10 - round;
                            i14 = i17;
                            i15 = i18;
                            double d10 = f13;
                            if (d10 > 1.0d) {
                                round++;
                                f13 -= 1.0f;
                            } else if (d10 < -1.0d) {
                                round--;
                                f13 += 1.0f;
                            }
                        }
                        int t10 = t(i10, bVar, cVar.f14982m);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                        k10.measure(t10, makeMeasureSpec);
                        measuredWidth = k10.getMeasuredWidth();
                        int measuredHeight2 = k10.getMeasuredHeight();
                        Q(i20, t10, makeMeasureSpec, k10);
                        this.f4725a.n(i20, k10);
                        measuredHeight = measuredHeight2;
                    }
                    i16 = Math.max(i19, measuredWidth + bVar.V() + bVar.z() + this.f4725a.p(k10));
                    cVar.f14974e += measuredHeight + bVar.h0() + bVar.U();
                } else {
                    i14 = i17;
                    int i21 = i18;
                    int measuredWidth2 = k10.getMeasuredWidth();
                    long[] jArr3 = this.f4729e;
                    if (jArr3 != null) {
                        measuredWidth2 = r(jArr3[i20]);
                    }
                    int measuredHeight3 = k10.getMeasuredHeight();
                    long[] jArr4 = this.f4729e;
                    if (jArr4 != null) {
                        measuredHeight3 = q(jArr4[i20]);
                    }
                    if (this.f4726b[i20] || bVar.x() <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        i15 = i21;
                    } else {
                        float x11 = measuredWidth2 - (bVar.x() * f12);
                        i15 = i21;
                        if (i15 == cVar.f14977h - 1) {
                            x11 += f13;
                            f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        }
                        int round2 = Math.round(x11);
                        if (round2 < bVar.G()) {
                            round2 = bVar.G();
                            this.f4726b[i20] = true;
                            cVar.f14980k -= bVar.x();
                            z11 = true;
                        } else {
                            f13 += x11 - round2;
                            double d11 = f13;
                            if (d11 > 1.0d) {
                                round2++;
                                f13 -= 1.0f;
                            } else if (d11 < -1.0d) {
                                round2--;
                                f13 += 1.0f;
                            }
                        }
                        int s10 = s(i11, bVar, cVar.f14982m);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                        k10.measure(makeMeasureSpec2, s10);
                        int measuredWidth3 = k10.getMeasuredWidth();
                        int measuredHeight4 = k10.getMeasuredHeight();
                        Q(i20, makeMeasureSpec2, s10, k10);
                        this.f4725a.n(i20, k10);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int max = Math.max(i19, measuredHeight3 + bVar.h0() + bVar.U() + this.f4725a.p(k10));
                    cVar.f14974e += measuredWidth2 + bVar.V() + bVar.z();
                    i16 = max;
                }
                cVar.f14976g = Math.max(cVar.f14976g, i16);
                i19 = i16;
            }
            i18 = i15 + 1;
            i17 = i14;
            f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        int i22 = i17;
        if (!z11 || i22 == cVar.f14974e) {
            return;
        }
        L(i10, i11, cVar, i12, i13, true);
    }

    public final void M(View view, int i10, int i11) {
        int measuredHeight;
        b bVar = (b) view.getLayoutParams();
        int min = Math.min(Math.max(((i10 - bVar.V()) - bVar.z()) - this.f4725a.p(view), bVar.G()), bVar.a0());
        long[] jArr = this.f4729e;
        if (jArr != null) {
            measuredHeight = q(jArr[i11]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        Q(i11, makeMeasureSpec2, makeMeasureSpec, view);
        this.f4725a.n(i11, view);
    }

    public final void N(View view, int i10, int i11) {
        int measuredWidth;
        b bVar = (b) view.getLayoutParams();
        int min = Math.min(Math.max(((i10 - bVar.h0()) - bVar.U()) - this.f4725a.p(view), bVar.F()), bVar.N());
        long[] jArr = this.f4729e;
        if (jArr != null) {
            measuredWidth = r(jArr[i11]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        Q(i11, makeMeasureSpec, makeMeasureSpec2, view);
        this.f4725a.n(i11, view);
    }

    public void O() {
        P(0);
    }

    public void P(int i10) {
        View k10;
        if (i10 >= this.f4725a.c()) {
            return;
        }
        int e10 = this.f4725a.e();
        if (this.f4725a.m() == 4) {
            int[] iArr = this.f4727c;
            List<c> b10 = this.f4725a.b();
            int size = b10.size();
            for (int i11 = iArr != null ? iArr[i10] : 0; i11 < size; i11++) {
                c cVar = b10.get(i11);
                int i12 = cVar.f14977h;
                for (int i13 = 0; i13 < i12; i13++) {
                    int i14 = cVar.f14984o + i13;
                    if (i13 < this.f4725a.c() && (k10 = this.f4725a.k(i14)) != null && k10.getVisibility() != 8) {
                        b bVar = (b) k10.getLayoutParams();
                        if (bVar.k() == -1 || bVar.k() == 4) {
                            if (e10 != 0 && e10 != 1) {
                                if (e10 != 2 && e10 != 3) {
                                    throw new IllegalArgumentException("Invalid flex direction: " + e10);
                                }
                                M(k10, cVar.f14976g, i14);
                            } else {
                                N(k10, cVar.f14976g, i14);
                            }
                        }
                    }
                }
            }
            return;
        }
        for (c cVar2 : this.f4725a.b()) {
            for (Integer num : cVar2.f14983n) {
                View k11 = this.f4725a.k(num.intValue());
                if (e10 != 0 && e10 != 1) {
                    if (e10 != 2 && e10 != 3) {
                        throw new IllegalArgumentException("Invalid flex direction: " + e10);
                    }
                    M(k11, cVar2.f14976g, num.intValue());
                } else {
                    N(k11, cVar2.f14976g, num.intValue());
                }
            }
        }
    }

    public final void Q(int i10, int i11, int i12, View view) {
        long[] jArr = this.f4728d;
        if (jArr != null) {
            jArr[i10] = K(i11, i12);
        }
        long[] jArr2 = this.f4729e;
        if (jArr2 != null) {
            jArr2[i10] = K(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public final void a(List<c> list, c cVar, int i10, int i11) {
        cVar.f14982m = i11;
        this.f4725a.j(cVar);
        cVar.f14985p = i10;
        list.add(cVar);
    }

    public void b(C0088a c0088a, int i10, int i11, int i12, int i13, int i14, List<c> list) {
        int i15;
        C0088a c0088a2;
        int i16;
        int i17;
        int i18;
        List<c> list2;
        int i19;
        View view;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        c cVar;
        int i26;
        int i27 = i10;
        int i28 = i11;
        int i29 = i14;
        boolean o10 = this.f4725a.o();
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        List<c> arrayList = list == null ? new ArrayList() : list;
        c0088a.f4730a = arrayList;
        boolean z10 = i29 == -1;
        int D = D(o10);
        int B = B(o10);
        int C = C(o10);
        int A = A(o10);
        c cVar2 = new c();
        int i30 = i13;
        cVar2.f14984o = i30;
        int i31 = B + D;
        cVar2.f14974e = i31;
        int c10 = this.f4725a.c();
        boolean z11 = z10;
        int i32 = 0;
        int i33 = 0;
        int i34 = 0;
        int i35 = Integer.MIN_VALUE;
        while (true) {
            if (i30 >= c10) {
                i15 = i33;
                c0088a2 = c0088a;
                break;
            }
            View k10 = this.f4725a.k(i30);
            if (k10 == null) {
                if (G(i30, c10, cVar2)) {
                    a(arrayList, cVar2, i30, i32);
                }
            } else if (k10.getVisibility() == 8) {
                cVar2.f14978i++;
                cVar2.f14977h++;
                if (G(i30, c10, cVar2)) {
                    a(arrayList, cVar2, i30, i32);
                }
            } else {
                if (k10 instanceof CompoundButton) {
                    o((CompoundButton) k10);
                }
                b bVar = (b) k10.getLayoutParams();
                int i36 = c10;
                if (bVar.k() == 4) {
                    cVar2.f14983n.add(Integer.valueOf(i30));
                }
                int z12 = z(bVar, o10);
                if (bVar.h() != -1.0f && mode == 1073741824) {
                    z12 = Math.round(size * bVar.h());
                }
                if (o10) {
                    int l10 = this.f4725a.l(i27, i31 + x(bVar, true) + v(bVar, true), z12);
                    i16 = size;
                    i17 = mode;
                    int d10 = this.f4725a.d(i28, C + A + w(bVar, true) + u(bVar, true) + i32, y(bVar, true));
                    k10.measure(l10, d10);
                    Q(i30, l10, d10, k10);
                    i18 = l10;
                } else {
                    i16 = size;
                    i17 = mode;
                    int l11 = this.f4725a.l(i28, C + A + w(bVar, false) + u(bVar, false) + i32, y(bVar, false));
                    int d11 = this.f4725a.d(i27, x(bVar, false) + i31 + v(bVar, false), z12);
                    k10.measure(l11, d11);
                    Q(i30, l11, d11, k10);
                    i18 = d11;
                }
                this.f4725a.n(i30, k10);
                g(k10, i30);
                i33 = View.combineMeasuredStates(i33, k10.getMeasuredState());
                int i37 = i32;
                int i38 = i31;
                c cVar3 = cVar2;
                int i39 = i30;
                list2 = arrayList;
                int i40 = i18;
                if (H(k10, i17, i16, cVar2.f14974e, v(bVar, o10) + F(k10, o10) + x(bVar, o10), bVar, i39, i34, arrayList.size())) {
                    if (cVar3.c() > 0) {
                        if (i39 > 0) {
                            i26 = i39 - 1;
                            cVar = cVar3;
                        } else {
                            cVar = cVar3;
                            i26 = 0;
                        }
                        a(list2, cVar, i26, i37);
                        i32 = cVar.f14976g + i37;
                    } else {
                        i32 = i37;
                    }
                    if (o10) {
                        if (bVar.getHeight() == -1) {
                            v9.a aVar = this.f4725a;
                            i19 = i11;
                            i30 = i39;
                            view = k10;
                            view.measure(i40, aVar.d(i19, aVar.getPaddingTop() + this.f4725a.getPaddingBottom() + bVar.h0() + bVar.U() + i32, bVar.getHeight()));
                            g(view, i30);
                        } else {
                            i19 = i11;
                            view = k10;
                            i30 = i39;
                        }
                    } else {
                        i19 = i11;
                        view = k10;
                        i30 = i39;
                        if (bVar.getWidth() == -1) {
                            v9.a aVar2 = this.f4725a;
                            view.measure(aVar2.l(i19, aVar2.getPaddingLeft() + this.f4725a.getPaddingRight() + bVar.V() + bVar.z() + i32, bVar.getWidth()), i40);
                            g(view, i30);
                        }
                    }
                    cVar2 = new c();
                    cVar2.f14977h = 1;
                    i20 = i38;
                    cVar2.f14974e = i20;
                    cVar2.f14984o = i30;
                    i21 = 0;
                    i22 = Integer.MIN_VALUE;
                } else {
                    i19 = i11;
                    view = k10;
                    i30 = i39;
                    cVar2 = cVar3;
                    i20 = i38;
                    cVar2.f14977h++;
                    i21 = i34 + 1;
                    i32 = i37;
                    i22 = i35;
                }
                cVar2.f14986q |= bVar.d() != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                cVar2.f14987r |= bVar.x() != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                int[] iArr = this.f4727c;
                if (iArr != null) {
                    iArr[i30] = list2.size();
                }
                cVar2.f14974e += F(view, o10) + x(bVar, o10) + v(bVar, o10);
                cVar2.f14979j += bVar.d();
                cVar2.f14980k += bVar.x();
                this.f4725a.h(view, i30, i21, cVar2);
                int max = Math.max(i22, E(view, o10) + w(bVar, o10) + u(bVar, o10) + this.f4725a.p(view));
                cVar2.f14976g = Math.max(cVar2.f14976g, max);
                if (o10) {
                    if (this.f4725a.i() != 2) {
                        cVar2.f14981l = Math.max(cVar2.f14981l, view.getBaseline() + bVar.h0());
                    } else {
                        cVar2.f14981l = Math.max(cVar2.f14981l, (view.getMeasuredHeight() - view.getBaseline()) + bVar.U());
                    }
                }
                i23 = i36;
                if (G(i30, i23, cVar2)) {
                    a(list2, cVar2, i30, i32);
                    i32 += cVar2.f14976g;
                }
                i24 = i14;
                if (i24 != -1 && list2.size() > 0) {
                    if (list2.get(list2.size() - 1).f14985p >= i24 && i30 >= i24 && !z11) {
                        i32 = -cVar2.a();
                        i25 = i12;
                        z11 = true;
                        if (i32 <= i25 && z11) {
                            c0088a2 = c0088a;
                            i15 = i33;
                            break;
                        }
                        i34 = i21;
                        i35 = max;
                        i30++;
                        i27 = i10;
                        c10 = i23;
                        i28 = i19;
                        i31 = i20;
                        arrayList = list2;
                        mode = i17;
                        i29 = i24;
                        size = i16;
                    }
                }
                i25 = i12;
                if (i32 <= i25) {
                }
                i34 = i21;
                i35 = max;
                i30++;
                i27 = i10;
                c10 = i23;
                i28 = i19;
                i31 = i20;
                arrayList = list2;
                mode = i17;
                i29 = i24;
                size = i16;
            }
            i16 = size;
            i17 = mode;
            i19 = i28;
            i24 = i29;
            list2 = arrayList;
            i20 = i31;
            i23 = c10;
            i30++;
            i27 = i10;
            c10 = i23;
            i28 = i19;
            i31 = i20;
            arrayList = list2;
            mode = i17;
            i29 = i24;
            size = i16;
        }
        c0088a2.f4731b = i15;
    }

    public void c(C0088a c0088a, int i10, int i11, int i12, int i13, List<c> list) {
        b(c0088a, i10, i11, i12, i13, -1, list);
    }

    public void d(C0088a c0088a, int i10, int i11, int i12, int i13, List<c> list) {
        b(c0088a, i10, i11, i12, 0, i13, list);
    }

    public void e(C0088a c0088a, int i10, int i11, int i12, int i13, List<c> list) {
        b(c0088a, i11, i10, i12, i13, -1, list);
    }

    public void f(C0088a c0088a, int i10, int i11, int i12, int i13, List<c> list) {
        b(c0088a, i11, i10, i12, 0, i13, list);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(View view, int i10) {
        boolean z10;
        b bVar = (b) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z11 = true;
        if (measuredWidth < bVar.G()) {
            measuredWidth = bVar.G();
        } else if (measuredWidth > bVar.a0()) {
            measuredWidth = bVar.a0();
        } else {
            z10 = false;
            if (measuredHeight >= bVar.F()) {
                measuredHeight = bVar.F();
            } else if (measuredHeight > bVar.N()) {
                measuredHeight = bVar.N();
            } else {
                z11 = z10;
            }
            if (z11) {
                return;
            }
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            Q(i10, makeMeasureSpec, makeMeasureSpec2, view);
            this.f4725a.n(i10, view);
            return;
        }
        z10 = true;
        if (measuredHeight >= bVar.F()) {
        }
        if (z11) {
        }
    }

    public void h(List<c> list, int i10) {
        int i11 = this.f4727c[i10];
        if (i11 == -1) {
            i11 = 0;
        }
        if (list.size() > i11) {
            list.subList(i11, list.size()).clear();
        }
        int[] iArr = this.f4727c;
        int length = iArr.length - 1;
        if (i10 > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i10, length, -1);
        }
        long[] jArr = this.f4728d;
        int length2 = jArr.length - 1;
        if (i10 > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i10, length2, 0L);
        }
    }

    public void i(int i10, int i11) {
        j(i10, i11, 0);
    }

    public void j(int i10, int i11, int i12) {
        int size;
        int paddingLeft;
        int paddingRight;
        k(this.f4725a.c());
        if (i12 >= this.f4725a.c()) {
            return;
        }
        int e10 = this.f4725a.e();
        int e11 = this.f4725a.e();
        if (e11 != 0 && e11 != 1) {
            if (e11 != 2 && e11 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + e10);
            }
            int mode = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
            if (mode != 1073741824) {
                size = this.f4725a.g();
            }
            paddingLeft = this.f4725a.getPaddingTop();
            paddingRight = this.f4725a.getPaddingBottom();
        } else {
            int mode2 = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
            int g10 = this.f4725a.g();
            if (mode2 != 1073741824) {
                size = Math.min(g10, size);
            }
            paddingLeft = this.f4725a.getPaddingLeft();
            paddingRight = this.f4725a.getPaddingRight();
        }
        int i13 = paddingLeft + paddingRight;
        int[] iArr = this.f4727c;
        int i14 = iArr != null ? iArr[i12] : 0;
        List<c> b10 = this.f4725a.b();
        int size2 = b10.size();
        for (int i15 = i14; i15 < size2; i15++) {
            c cVar = b10.get(i15);
            int i16 = cVar.f14974e;
            if (i16 < size && cVar.f14986q) {
                p(i10, i11, cVar, size, i13, false);
            } else if (i16 > size && cVar.f14987r) {
                L(i10, i11, cVar, size, i13, false);
            }
        }
    }

    public final void k(int i10) {
        boolean[] zArr = this.f4726b;
        if (zArr == null) {
            this.f4726b = new boolean[Math.max(i10, 10)];
        } else if (zArr.length < i10) {
            this.f4726b = new boolean[Math.max(zArr.length * 2, i10)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    public void l(int i10) {
        int[] iArr = this.f4727c;
        if (iArr == null) {
            this.f4727c = new int[Math.max(i10, 10)];
        } else if (iArr.length < i10) {
            this.f4727c = Arrays.copyOf(this.f4727c, Math.max(iArr.length * 2, i10));
        }
    }

    public void m(int i10) {
        long[] jArr = this.f4728d;
        if (jArr == null) {
            this.f4728d = new long[Math.max(i10, 10)];
        } else if (jArr.length < i10) {
            this.f4728d = Arrays.copyOf(this.f4728d, Math.max(jArr.length * 2, i10));
        }
    }

    public void n(int i10) {
        long[] jArr = this.f4729e;
        if (jArr == null) {
            this.f4729e = new long[Math.max(i10, 10)];
        } else if (jArr.length < i10) {
            this.f4729e = Arrays.copyOf(this.f4729e, Math.max(jArr.length * 2, i10));
        }
    }

    public final void o(CompoundButton compoundButton) {
        b bVar = (b) compoundButton.getLayoutParams();
        int G = bVar.G();
        int F = bVar.F();
        Drawable a10 = d.a(compoundButton);
        int minimumWidth = a10 == null ? 0 : a10.getMinimumWidth();
        int minimumHeight = a10 != null ? a10.getMinimumHeight() : 0;
        if (G == -1) {
            G = minimumWidth;
        }
        bVar.R(G);
        if (F == -1) {
            F = minimumHeight;
        }
        bVar.b(F);
    }

    public final void p(int i10, int i11, c cVar, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int i16;
        double d10;
        int i17;
        double d11;
        float f10 = cVar.f14979j;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || i12 < (i14 = cVar.f14974e)) {
            return;
        }
        float f12 = (i12 - i14) / f10;
        cVar.f14974e = i13 + cVar.f14975f;
        if (!z10) {
            cVar.f14976g = Integer.MIN_VALUE;
        }
        int i18 = 0;
        boolean z11 = false;
        int i19 = 0;
        float f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        while (i18 < cVar.f14977h) {
            int i20 = cVar.f14984o + i18;
            View k10 = this.f4725a.k(i20);
            if (k10 == null || k10.getVisibility() == 8) {
                i15 = i14;
            } else {
                b bVar = (b) k10.getLayoutParams();
                int e10 = this.f4725a.e();
                if (e10 != 0 && e10 != 1) {
                    int measuredHeight = k10.getMeasuredHeight();
                    long[] jArr = this.f4729e;
                    if (jArr != null) {
                        measuredHeight = q(jArr[i20]);
                    }
                    int measuredWidth = k10.getMeasuredWidth();
                    long[] jArr2 = this.f4729e;
                    if (jArr2 != null) {
                        measuredWidth = r(jArr2[i20]);
                    }
                    if (this.f4726b[i20] || bVar.d() <= f11) {
                        i17 = i14;
                    } else {
                        float d12 = measuredHeight + (bVar.d() * f12);
                        if (i18 == cVar.f14977h - 1) {
                            d12 += f13;
                            f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        }
                        int round = Math.round(d12);
                        if (round > bVar.N()) {
                            round = bVar.N();
                            this.f4726b[i20] = true;
                            cVar.f14979j -= bVar.d();
                            i17 = i14;
                            z11 = true;
                        } else {
                            f13 += d12 - round;
                            i17 = i14;
                            double d13 = f13;
                            if (d13 > 1.0d) {
                                round++;
                                Double.isNaN(d13);
                                d11 = d13 - 1.0d;
                            } else if (d13 < -1.0d) {
                                round--;
                                Double.isNaN(d13);
                                d11 = d13 + 1.0d;
                            }
                            f13 = (float) d11;
                        }
                        int t10 = t(i10, bVar, cVar.f14982m);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                        k10.measure(t10, makeMeasureSpec);
                        measuredWidth = k10.getMeasuredWidth();
                        int measuredHeight2 = k10.getMeasuredHeight();
                        Q(i20, t10, makeMeasureSpec, k10);
                        this.f4725a.n(i20, k10);
                        measuredHeight = measuredHeight2;
                    }
                    i16 = Math.max(i19, measuredWidth + bVar.V() + bVar.z() + this.f4725a.p(k10));
                    cVar.f14974e += measuredHeight + bVar.h0() + bVar.U();
                    i15 = i17;
                } else {
                    int i21 = i14;
                    int measuredWidth2 = k10.getMeasuredWidth();
                    long[] jArr3 = this.f4729e;
                    if (jArr3 != null) {
                        measuredWidth2 = r(jArr3[i20]);
                    }
                    int measuredHeight3 = k10.getMeasuredHeight();
                    long[] jArr4 = this.f4729e;
                    i15 = i21;
                    if (jArr4 != null) {
                        measuredHeight3 = q(jArr4[i20]);
                    }
                    if (!this.f4726b[i20] && bVar.d() > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        float d14 = measuredWidth2 + (bVar.d() * f12);
                        if (i18 == cVar.f14977h - 1) {
                            d14 += f13;
                            f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                        }
                        int round2 = Math.round(d14);
                        if (round2 > bVar.a0()) {
                            round2 = bVar.a0();
                            this.f4726b[i20] = true;
                            cVar.f14979j -= bVar.d();
                            z11 = true;
                        } else {
                            f13 += d14 - round2;
                            double d15 = f13;
                            if (d15 > 1.0d) {
                                round2++;
                                Double.isNaN(d15);
                                d10 = d15 - 1.0d;
                            } else if (d15 < -1.0d) {
                                round2--;
                                Double.isNaN(d15);
                                d10 = d15 + 1.0d;
                            }
                            f13 = (float) d10;
                        }
                        int s10 = s(i11, bVar, cVar.f14982m);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                        k10.measure(makeMeasureSpec2, s10);
                        int measuredWidth3 = k10.getMeasuredWidth();
                        int measuredHeight4 = k10.getMeasuredHeight();
                        Q(i20, makeMeasureSpec2, s10, k10);
                        this.f4725a.n(i20, k10);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int max = Math.max(i19, measuredHeight3 + bVar.h0() + bVar.U() + this.f4725a.p(k10));
                    cVar.f14974e += measuredWidth2 + bVar.V() + bVar.z();
                    i16 = max;
                }
                cVar.f14976g = Math.max(cVar.f14976g, i16);
                i19 = i16;
            }
            i18++;
            i14 = i15;
            f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        int i22 = i14;
        if (!z11 || i22 == cVar.f14974e) {
            return;
        }
        p(i10, i11, cVar, i12, i13, true);
    }

    public int q(long j10) {
        return (int) (j10 >> 32);
    }

    public int r(long j10) {
        return (int) j10;
    }

    public final int s(int i10, b bVar, int i11) {
        v9.a aVar = this.f4725a;
        int d10 = aVar.d(i10, aVar.getPaddingTop() + this.f4725a.getPaddingBottom() + bVar.h0() + bVar.U() + i11, bVar.getHeight());
        int size = View.MeasureSpec.getSize(d10);
        if (size > bVar.N()) {
            return View.MeasureSpec.makeMeasureSpec(bVar.N(), View.MeasureSpec.getMode(d10));
        }
        return size < bVar.F() ? View.MeasureSpec.makeMeasureSpec(bVar.F(), View.MeasureSpec.getMode(d10)) : d10;
    }

    public final int t(int i10, b bVar, int i11) {
        v9.a aVar = this.f4725a;
        int l10 = aVar.l(i10, aVar.getPaddingLeft() + this.f4725a.getPaddingRight() + bVar.V() + bVar.z() + i11, bVar.getWidth());
        int size = View.MeasureSpec.getSize(l10);
        if (size > bVar.a0()) {
            return View.MeasureSpec.makeMeasureSpec(bVar.a0(), View.MeasureSpec.getMode(l10));
        }
        return size < bVar.G() ? View.MeasureSpec.makeMeasureSpec(bVar.G(), View.MeasureSpec.getMode(l10)) : l10;
    }

    public final int u(b bVar, boolean z10) {
        if (z10) {
            return bVar.U();
        }
        return bVar.z();
    }

    public final int v(b bVar, boolean z10) {
        if (z10) {
            return bVar.z();
        }
        return bVar.U();
    }

    public final int w(b bVar, boolean z10) {
        if (z10) {
            return bVar.h0();
        }
        return bVar.V();
    }

    public final int x(b bVar, boolean z10) {
        if (z10) {
            return bVar.V();
        }
        return bVar.h0();
    }

    public final int y(b bVar, boolean z10) {
        if (z10) {
            return bVar.getHeight();
        }
        return bVar.getWidth();
    }

    public final int z(b bVar, boolean z10) {
        if (z10) {
            return bVar.getWidth();
        }
        return bVar.getHeight();
    }
}
