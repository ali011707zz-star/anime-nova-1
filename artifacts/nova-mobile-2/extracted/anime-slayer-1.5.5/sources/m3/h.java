package m3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import h3.o;
import h3.q;
import j3.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import k3.k;

/* compiled from: TextLayer.java */
/* loaded from: classes.dex */
public class h extends m3.a {
    public final StringBuilder B;
    public final RectF C;
    public final Matrix D;
    public final Paint E;
    public final Paint F;
    public final Map<j3.d, List<g3.d>> G;
    public final s.d<String> H;
    public final o I;
    public final e3.f J;
    public final e3.d K;
    public h3.a<Integer, Integer> L;
    public h3.a<Integer, Integer> M;
    public h3.a<Integer, Integer> N;
    public h3.a<Integer, Integer> O;
    public h3.a<Float, Float> P;
    public h3.a<Float, Float> Q;
    public h3.a<Float, Float> R;
    public h3.a<Float, Float> S;
    public h3.a<Float, Float> T;
    public h3.a<Float, Float> U;
    public h3.a<Typeface, Typeface> V;

    /* compiled from: TextLayer.java */
    /* loaded from: classes.dex */
    public class a extends Paint {
        public a(int i10) {
            super(i10);
            setStyle(Paint.Style.FILL);
        }
    }

    /* compiled from: TextLayer.java */
    /* loaded from: classes.dex */
    public class b extends Paint {
        public b(int i10) {
            super(i10);
            setStyle(Paint.Style.STROKE);
        }
    }

    /* compiled from: TextLayer.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class c {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10952a;

        static {
            int[] iArr = new int[b.a.values().length];
            f10952a = iArr;
            try {
                iArr[b.a.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10952a[b.a.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10952a[b.a.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public h(e3.f fVar, d dVar) {
        super(fVar, dVar);
        k3.b bVar;
        k3.b bVar2;
        k3.a aVar;
        k3.a aVar2;
        this.B = new StringBuilder(2);
        this.C = new RectF();
        this.D = new Matrix();
        this.E = new a(1);
        this.F = new b(1);
        this.G = new HashMap();
        this.H = new s.d<>();
        this.J = fVar;
        this.K = dVar.b();
        o a10 = dVar.s().a();
        this.I = a10;
        a10.a(this);
        i(a10);
        k t10 = dVar.t();
        if (t10 != null && (aVar2 = t10.f9889a) != null) {
            h3.a<Integer, Integer> a11 = aVar2.a();
            this.L = a11;
            a11.a(this);
            i(this.L);
        }
        if (t10 != null && (aVar = t10.f9890b) != null) {
            h3.a<Integer, Integer> a12 = aVar.a();
            this.N = a12;
            a12.a(this);
            i(this.N);
        }
        if (t10 != null && (bVar2 = t10.f9891c) != null) {
            h3.a<Float, Float> a13 = bVar2.a();
            this.P = a13;
            a13.a(this);
            i(this.P);
        }
        if (t10 == null || (bVar = t10.f9892d) == null) {
            return;
        }
        h3.a<Float, Float> a14 = bVar.a();
        this.R = a14;
        a14.a(this);
        i(this.R);
    }

    public final void N(b.a aVar, Canvas canvas, float f10) {
        int i10 = c.f10952a[aVar.ordinal()];
        if (i10 == 2) {
            canvas.translate(-f10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        } else {
            if (i10 != 3) {
                return;
            }
            canvas.translate((-f10) / 2.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
    }

    public final String O(String str, int i10) {
        int codePointAt = str.codePointAt(i10);
        int charCount = Character.charCount(codePointAt) + i10;
        while (charCount < str.length()) {
            int codePointAt2 = str.codePointAt(charCount);
            if (!b0(codePointAt2)) {
                break;
            }
            charCount += Character.charCount(codePointAt2);
            codePointAt = (codePointAt * 31) + codePointAt2;
        }
        long j10 = codePointAt;
        if (this.H.d(j10)) {
            return this.H.f(j10);
        }
        this.B.setLength(0);
        while (i10 < charCount) {
            int codePointAt3 = str.codePointAt(i10);
            this.B.appendCodePoint(codePointAt3);
            i10 += Character.charCount(codePointAt3);
        }
        String sb2 = this.B.toString();
        this.H.j(j10, sb2);
        return sb2;
    }

    public final void P(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return;
        }
        canvas.drawText(str, 0, str.length(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, paint);
    }

    public final void Q(j3.d dVar, Matrix matrix, float f10, j3.b bVar, Canvas canvas) {
        List<g3.d> X = X(dVar);
        for (int i10 = 0; i10 < X.size(); i10++) {
            Path path = X.get(i10).getPath();
            path.computeBounds(this.C, false);
            this.D.set(matrix);
            this.D.preTranslate(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (-bVar.f8084g) * q3.h.e());
            this.D.preScale(f10, f10);
            path.transform(this.D);
            if (bVar.f8088k) {
                T(path, this.E, canvas);
                T(path, this.F, canvas);
            } else {
                T(path, this.F, canvas);
                T(path, this.E, canvas);
            }
        }
    }

    public final void R(String str, j3.b bVar, Canvas canvas) {
        if (bVar.f8088k) {
            P(str, this.E, canvas);
            P(str, this.F, canvas);
        } else {
            P(str, this.F, canvas);
            P(str, this.E, canvas);
        }
    }

    public final void S(String str, j3.b bVar, Canvas canvas, float f10) {
        int i10 = 0;
        while (i10 < str.length()) {
            String O = O(str, i10);
            i10 += O.length();
            R(O, bVar, canvas);
            canvas.translate(this.E.measureText(O) + f10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
    }

    public final void T(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    public final void U(String str, j3.b bVar, Matrix matrix, j3.c cVar, Canvas canvas, float f10, float f11) {
        float floatValue;
        for (int i10 = 0; i10 < str.length(); i10++) {
            j3.d e10 = this.K.c().e(j3.d.c(str.charAt(i10), cVar.a(), cVar.c()));
            if (e10 != null) {
                Q(e10, matrix, f11, bVar, canvas);
                float b10 = ((float) e10.b()) * f11 * q3.h.e() * f10;
                float f12 = bVar.f8082e / 10.0f;
                h3.a<Float, Float> aVar = this.S;
                if (aVar != null) {
                    floatValue = aVar.h().floatValue();
                } else {
                    h3.a<Float, Float> aVar2 = this.R;
                    if (aVar2 != null) {
                        floatValue = aVar2.h().floatValue();
                    }
                    canvas.translate(b10 + (f12 * f10), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                }
                f12 += floatValue;
                canvas.translate(b10 + (f12 * f10), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
        }
    }

    public final void V(j3.b bVar, Matrix matrix, j3.c cVar, Canvas canvas) {
        float f10;
        h3.a<Float, Float> aVar = this.U;
        if (aVar != null) {
            f10 = aVar.h().floatValue();
        } else {
            h3.a<Float, Float> aVar2 = this.T;
            if (aVar2 != null) {
                f10 = aVar2.h().floatValue();
            } else {
                f10 = bVar.f8080c;
            }
        }
        float f11 = f10 / 100.0f;
        float g10 = q3.h.g(matrix);
        String str = bVar.f8078a;
        float e10 = bVar.f8083f * q3.h.e();
        List<String> Z = Z(str);
        int size = Z.size();
        for (int i10 = 0; i10 < size; i10++) {
            String str2 = Z.get(i10);
            float Y = Y(str2, cVar, f11, g10);
            canvas.save();
            N(bVar.f8081d, canvas, Y);
            canvas.translate(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (i10 * e10) - (((size - 1) * e10) / 2.0f));
            U(str2, bVar, matrix, cVar, canvas, g10, f11);
            canvas.restore();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0097 A[LOOP:0: B:13:0x0095->B:14:0x0097, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void W(j3.b bVar, j3.c cVar, Matrix matrix, Canvas canvas) {
        float f10;
        float floatValue;
        int size;
        int i10;
        Typeface a02 = a0(cVar);
        if (a02 == null) {
            return;
        }
        String str = bVar.f8078a;
        this.J.F();
        this.E.setTypeface(a02);
        h3.a<Float, Float> aVar = this.U;
        if (aVar != null) {
            f10 = aVar.h().floatValue();
        } else {
            h3.a<Float, Float> aVar2 = this.T;
            if (aVar2 != null) {
                f10 = aVar2.h().floatValue();
            } else {
                f10 = bVar.f8080c;
            }
        }
        this.E.setTextSize(q3.h.e() * f10);
        this.F.setTypeface(this.E.getTypeface());
        this.F.setTextSize(this.E.getTextSize());
        float e10 = bVar.f8083f * q3.h.e();
        float f11 = bVar.f8082e / 10.0f;
        h3.a<Float, Float> aVar3 = this.S;
        if (aVar3 != null) {
            floatValue = aVar3.h().floatValue();
        } else {
            h3.a<Float, Float> aVar4 = this.R;
            if (aVar4 != null) {
                floatValue = aVar4.h().floatValue();
            }
            float e11 = ((f11 * q3.h.e()) * f10) / 100.0f;
            List<String> Z = Z(str);
            size = Z.size();
            for (i10 = 0; i10 < size; i10++) {
                String str2 = Z.get(i10);
                float measureText = this.F.measureText(str2) + ((str2.length() - 1) * e11);
                canvas.save();
                N(bVar.f8081d, canvas, measureText);
                canvas.translate(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (i10 * e10) - (((size - 1) * e10) / 2.0f));
                S(str2, bVar, canvas, e11);
                canvas.restore();
            }
        }
        f11 += floatValue;
        float e112 = ((f11 * q3.h.e()) * f10) / 100.0f;
        List<String> Z2 = Z(str);
        size = Z2.size();
        while (i10 < size) {
        }
    }

    public final List<g3.d> X(j3.d dVar) {
        if (this.G.containsKey(dVar)) {
            return this.G.get(dVar);
        }
        List<l3.o> a10 = dVar.a();
        int size = a10.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(new g3.d(this.J, this, a10.get(i10)));
        }
        this.G.put(dVar, arrayList);
        return arrayList;
    }

    public final float Y(String str, j3.c cVar, float f10, float f11) {
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (int i10 = 0; i10 < str.length(); i10++) {
            j3.d e10 = this.K.c().e(j3.d.c(str.charAt(i10), cVar.a(), cVar.c()));
            if (e10 != null) {
                double d10 = f12;
                double b10 = e10.b();
                double d11 = f10;
                Double.isNaN(d11);
                double d12 = b10 * d11;
                double e11 = q3.h.e();
                Double.isNaN(e11);
                double d13 = d12 * e11;
                double d14 = f11;
                Double.isNaN(d14);
                Double.isNaN(d10);
                f12 = (float) (d10 + (d13 * d14));
            }
        }
        return f12;
    }

    public final List<String> Z(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
    }

    @Override // m3.a, g3.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        super.a(rectF, matrix, z10);
        rectF.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.K.b().width(), this.K.b().height());
    }

    public final Typeface a0(j3.c cVar) {
        Typeface h10;
        h3.a<Typeface, Typeface> aVar = this.V;
        if (aVar != null && (h10 = aVar.h()) != null) {
            return h10;
        }
        Typeface G = this.J.G(cVar.a(), cVar.c());
        return G != null ? G : cVar.d();
    }

    public final boolean b0(int i10) {
        return Character.getType(i10) == 16 || Character.getType(i10) == 27 || Character.getType(i10) == 6 || Character.getType(i10) == 28 || Character.getType(i10) == 19;
    }

    @Override // m3.a, j3.f
    public <T> void e(T t10, r3.c<T> cVar) {
        super.e(t10, cVar);
        if (t10 == e3.k.f6105a) {
            h3.a<Integer, Integer> aVar = this.M;
            if (aVar != null) {
                F(aVar);
            }
            if (cVar == null) {
                this.M = null;
                return;
            }
            q qVar = new q(cVar);
            this.M = qVar;
            qVar.a(this);
            i(this.M);
            return;
        }
        if (t10 == e3.k.f6106b) {
            h3.a<Integer, Integer> aVar2 = this.O;
            if (aVar2 != null) {
                F(aVar2);
            }
            if (cVar == null) {
                this.O = null;
                return;
            }
            q qVar2 = new q(cVar);
            this.O = qVar2;
            qVar2.a(this);
            i(this.O);
            return;
        }
        if (t10 == e3.k.f6123s) {
            h3.a<Float, Float> aVar3 = this.Q;
            if (aVar3 != null) {
                F(aVar3);
            }
            if (cVar == null) {
                this.Q = null;
                return;
            }
            q qVar3 = new q(cVar);
            this.Q = qVar3;
            qVar3.a(this);
            i(this.Q);
            return;
        }
        if (t10 == e3.k.f6124t) {
            h3.a<Float, Float> aVar4 = this.S;
            if (aVar4 != null) {
                F(aVar4);
            }
            if (cVar == null) {
                this.S = null;
                return;
            }
            q qVar4 = new q(cVar);
            this.S = qVar4;
            qVar4.a(this);
            i(this.S);
            return;
        }
        if (t10 == e3.k.F) {
            h3.a<Float, Float> aVar5 = this.U;
            if (aVar5 != null) {
                F(aVar5);
            }
            if (cVar == null) {
                this.U = null;
                return;
            }
            q qVar5 = new q(cVar);
            this.U = qVar5;
            qVar5.a(this);
            i(this.U);
            return;
        }
        if (t10 == e3.k.M) {
            h3.a<Typeface, Typeface> aVar6 = this.V;
            if (aVar6 != null) {
                F(aVar6);
            }
            if (cVar == null) {
                this.V = null;
                return;
            }
            q qVar6 = new q(cVar);
            this.V = qVar6;
            qVar6.a(this);
            i(this.V);
        }
    }

    @Override // m3.a
    public void t(Canvas canvas, Matrix matrix, int i10) {
        canvas.save();
        if (!this.J.m0()) {
            canvas.concat(matrix);
        }
        j3.b h10 = this.I.h();
        j3.c cVar = this.K.g().get(h10.f8079b);
        if (cVar == null) {
            canvas.restore();
            return;
        }
        h3.a<Integer, Integer> aVar = this.M;
        if (aVar != null) {
            this.E.setColor(aVar.h().intValue());
        } else {
            h3.a<Integer, Integer> aVar2 = this.L;
            if (aVar2 != null) {
                this.E.setColor(aVar2.h().intValue());
            } else {
                this.E.setColor(h10.f8085h);
            }
        }
        h3.a<Integer, Integer> aVar3 = this.O;
        if (aVar3 != null) {
            this.F.setColor(aVar3.h().intValue());
        } else {
            h3.a<Integer, Integer> aVar4 = this.N;
            if (aVar4 != null) {
                this.F.setColor(aVar4.h().intValue());
            } else {
                this.F.setColor(h10.f8086i);
            }
        }
        int intValue = ((this.f10902v.h() == null ? 100 : this.f10902v.h().h().intValue()) * BaseProgressIndicator.MAX_ALPHA) / 100;
        this.E.setAlpha(intValue);
        this.F.setAlpha(intValue);
        h3.a<Float, Float> aVar5 = this.Q;
        if (aVar5 != null) {
            this.F.setStrokeWidth(aVar5.h().floatValue());
        } else {
            h3.a<Float, Float> aVar6 = this.P;
            if (aVar6 != null) {
                this.F.setStrokeWidth(aVar6.h().floatValue());
            } else {
                this.F.setStrokeWidth(h10.f8087j * q3.h.e() * q3.h.g(matrix));
            }
        }
        if (this.J.m0()) {
            V(h10, matrix, cVar, canvas);
        } else {
            W(h10, cVar, matrix, canvas);
        }
        canvas.restore();
    }
}
