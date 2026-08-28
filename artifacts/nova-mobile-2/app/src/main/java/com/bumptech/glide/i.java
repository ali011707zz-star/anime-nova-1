package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: RequestBuilder.java */
/* loaded from: classes.dex */
public class i<TranscodeType> extends h8.a<i<TranscodeType>> {
    public static final h8.h T = new h8.h().g(r7.j.f12974c).U(g.LOW).b0(true);
    public final Context F;
    public final j G;
    public final Class<TranscodeType> H;
    public final c I;
    public final e J;
    public k<?, ? super TranscodeType> K;
    public Object L;
    public List<h8.g<TranscodeType>> M;
    public i<TranscodeType> N;
    public i<TranscodeType> O;
    public Float P;
    public boolean Q = true;
    public boolean R;
    public boolean S;

    /* compiled from: RequestBuilder.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4570a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f4571b;

        static {
            int[] iArr = new int[g.values().length];
            f4571b = iArr;
            try {
                iArr[g.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4571b[g.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4571b[g.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4571b[g.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f4570a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4570a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4570a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4570a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4570a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f4570a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f4570a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f4570a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    @SuppressLint({"CheckResult"})
    public i(c cVar, j jVar, Class<TranscodeType> cls, Context context) {
        this.I = cVar;
        this.G = jVar;
        this.H = cls;
        this.F = context;
        this.K = jVar.q(cls);
        this.J = cVar.i();
        q0(jVar.o());
        a(jVar.p());
    }

    public final h8.d A0(Object obj, i8.i<TranscodeType> iVar, h8.g<TranscodeType> gVar, h8.a<?> aVar, h8.e eVar, k<?, ? super TranscodeType> kVar, g gVar2, int i10, int i11, Executor executor) {
        Context context = this.F;
        e eVar2 = this.J;
        return h8.j.x(context, eVar2, obj, this.L, this.H, aVar, i10, i11, gVar2, iVar, gVar, this.M, eVar, eVar2.f(), kVar.b(), executor);
    }

    public h8.c<TranscodeType> B0() {
        return C0(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public h8.c<TranscodeType> C0(int i10, int i11) {
        h8.f fVar = new h8.f(i10, i11);
        return (h8.c) t0(fVar, fVar, l8.e.a());
    }

    public i<TranscodeType> D0(k<?, ? super TranscodeType> kVar) {
        this.K = (k) l8.j.d(kVar);
        this.Q = false;
        return this;
    }

    public i<TranscodeType> j0(h8.g<TranscodeType> gVar) {
        if (gVar != null) {
            if (this.M == null) {
                this.M = new ArrayList();
            }
            this.M.add(gVar);
        }
        return this;
    }

    @Override // h8.a
    /* renamed from: k0, reason: merged with bridge method [inline-methods] */
    public i<TranscodeType> a(h8.a<?> aVar) {
        l8.j.d(aVar);
        return (i) super.a(aVar);
    }

    public final h8.d l0(i8.i<TranscodeType> iVar, h8.g<TranscodeType> gVar, h8.a<?> aVar, Executor executor) {
        return m0(new Object(), iVar, gVar, null, this.K, aVar.v(), aVar.s(), aVar.r(), aVar, executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final h8.d m0(Object obj, i8.i<TranscodeType> iVar, h8.g<TranscodeType> gVar, h8.e eVar, k<?, ? super TranscodeType> kVar, g gVar2, int i10, int i11, h8.a<?> aVar, Executor executor) {
        h8.e eVar2;
        h8.e eVar3;
        if (this.O != null) {
            eVar3 = new h8.b(obj, eVar);
            eVar2 = eVar3;
        } else {
            eVar2 = null;
            eVar3 = eVar;
        }
        h8.d n02 = n0(obj, iVar, gVar, eVar3, kVar, gVar2, i10, i11, aVar, executor);
        if (eVar2 == null) {
            return n02;
        }
        int s10 = this.O.s();
        int r10 = this.O.r();
        if (l8.k.s(i10, i11) && !this.O.L()) {
            s10 = aVar.s();
            r10 = aVar.r();
        }
        i<TranscodeType> iVar2 = this.O;
        h8.b bVar = eVar2;
        bVar.p(n02, iVar2.m0(obj, iVar, gVar, bVar, iVar2.K, iVar2.v(), s10, r10, this.O, executor));
        return bVar;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [h8.a] */
    public final h8.d n0(Object obj, i8.i<TranscodeType> iVar, h8.g<TranscodeType> gVar, h8.e eVar, k<?, ? super TranscodeType> kVar, g gVar2, int i10, int i11, h8.a<?> aVar, Executor executor) {
        g p02;
        i<TranscodeType> iVar2 = this.N;
        if (iVar2 != null) {
            if (!this.S) {
                k<?, ? super TranscodeType> kVar2 = iVar2.Q ? kVar : iVar2.K;
                if (iVar2.E()) {
                    p02 = this.N.v();
                } else {
                    p02 = p0(gVar2);
                }
                g gVar3 = p02;
                int s10 = this.N.s();
                int r10 = this.N.r();
                if (l8.k.s(i10, i11) && !this.N.L()) {
                    s10 = aVar.s();
                    r10 = aVar.r();
                }
                h8.k kVar3 = new h8.k(obj, eVar);
                h8.d A0 = A0(obj, iVar, gVar, aVar, kVar3, kVar, gVar2, i10, i11, executor);
                this.S = true;
                i<TranscodeType> iVar3 = this.N;
                h8.d m02 = iVar3.m0(obj, iVar, gVar, kVar3, kVar2, gVar3, s10, r10, iVar3, executor);
                this.S = false;
                kVar3.o(A0, m02);
                return kVar3;
            }
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        }
        if (this.P != null) {
            h8.k kVar4 = new h8.k(obj, eVar);
            kVar4.o(A0(obj, iVar, gVar, aVar, kVar4, kVar, gVar2, i10, i11, executor), A0(obj, iVar, gVar, aVar.clone().a0(this.P.floatValue()), kVar4, kVar, p0(gVar2), i10, i11, executor));
            return kVar4;
        }
        return A0(obj, iVar, gVar, aVar, eVar, kVar, gVar2, i10, i11, executor);
    }

    @Override // h8.a
    /* renamed from: o0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public i<TranscodeType> clone() {
        i<TranscodeType> iVar = (i) super.clone();
        iVar.K = (k<?, ? super TranscodeType>) iVar.K.clone();
        return iVar;
    }

    public final g p0(g gVar) {
        int i10 = a.f4571b[gVar.ordinal()];
        if (i10 == 1) {
            return g.NORMAL;
        }
        if (i10 == 2) {
            return g.HIGH;
        }
        if (i10 != 3 && i10 != 4) {
            throw new IllegalArgumentException("unknown priority: " + v());
        }
        return g.IMMEDIATE;
    }

    @SuppressLint({"CheckResult"})
    public final void q0(List<h8.g<Object>> list) {
        Iterator<h8.g<Object>> it2 = list.iterator();
        while (it2.hasNext()) {
            j0((h8.g) it2.next());
        }
    }

    public <Y extends i8.i<TranscodeType>> Y r0(Y y10) {
        return (Y) t0(y10, null, l8.e.b());
    }

    public final <Y extends i8.i<TranscodeType>> Y s0(Y y10, h8.g<TranscodeType> gVar, h8.a<?> aVar, Executor executor) {
        l8.j.d(y10);
        if (this.R) {
            h8.d l02 = l0(y10, gVar, aVar, executor);
            h8.d j10 = y10.j();
            if (l02.k(j10) && !v0(aVar, j10)) {
                if (!((h8.d) l8.j.d(j10)).isRunning()) {
                    j10.j();
                }
                return y10;
            }
            this.G.n(y10);
            y10.b(l02);
            this.G.y(y10, l02);
            return y10;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    public <Y extends i8.i<TranscodeType>> Y t0(Y y10, h8.g<TranscodeType> gVar, Executor executor) {
        return (Y) s0(y10, gVar, this, executor);
    }

    public i8.j<ImageView, TranscodeType> u0(ImageView imageView) {
        i<TranscodeType> iVar;
        l8.k.b();
        l8.j.d(imageView);
        if (!K() && I() && imageView.getScaleType() != null) {
            switch (a.f4570a[imageView.getScaleType().ordinal()]) {
                case 1:
                    iVar = clone().N();
                    break;
                case 2:
                    iVar = clone().O();
                    break;
                case 3:
                case 4:
                case 5:
                    iVar = clone().P();
                    break;
                case 6:
                    iVar = clone().O();
                    break;
            }
            return (i8.j) s0(this.J.a(imageView, this.H), null, iVar, l8.e.b());
        }
        iVar = this;
        return (i8.j) s0(this.J.a(imageView, this.H), null, iVar, l8.e.b());
    }

    public final boolean v0(h8.a<?> aVar, h8.d dVar) {
        return !aVar.D() && dVar.isComplete();
    }

    public i<TranscodeType> w0(Integer num) {
        return z0(num).a(h8.h.o0(k8.a.c(this.F)));
    }

    public i<TranscodeType> x0(Object obj) {
        return z0(obj);
    }

    public i<TranscodeType> y0(String str) {
        return z0(str);
    }

    public final i<TranscodeType> z0(Object obj) {
        this.L = obj;
        this.R = true;
        return this;
    }
}
