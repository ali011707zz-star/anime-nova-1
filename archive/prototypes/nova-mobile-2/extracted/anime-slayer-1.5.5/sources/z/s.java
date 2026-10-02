package z;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import org.xmlpull.v1.XmlPullParser;
import z.p;

/* compiled from: TouchResponse.java */
/* loaded from: classes.dex */
public class s {
    public static final float[][] G = {new float[]{0.5f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD}, new float[]{StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0.5f}, new float[]{1.0f, 0.5f}};
    public static final float[][] H = {new float[]{StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, -1.0f}, new float[]{StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f}, new float[]{-1.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD}, new float[]{1.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD}, new float[]{-1.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD}, new float[]{1.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD}};

    /* renamed from: r, reason: collision with root package name */
    public float f17184r;

    /* renamed from: s, reason: collision with root package name */
    public float f17185s;

    /* renamed from: t, reason: collision with root package name */
    public final p f17186t;

    /* renamed from: a, reason: collision with root package name */
    public int f17167a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f17168b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f17169c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f17170d = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f17171e = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f17172f = -1;

    /* renamed from: g, reason: collision with root package name */
    public float f17173g = 0.5f;

    /* renamed from: h, reason: collision with root package name */
    public float f17174h = 0.5f;

    /* renamed from: i, reason: collision with root package name */
    public float f17175i = 0.5f;

    /* renamed from: j, reason: collision with root package name */
    public float f17176j = 0.5f;

    /* renamed from: k, reason: collision with root package name */
    public int f17177k = -1;

    /* renamed from: l, reason: collision with root package name */
    public boolean f17178l = false;

    /* renamed from: m, reason: collision with root package name */
    public float f17179m = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: n, reason: collision with root package name */
    public float f17180n = 1.0f;

    /* renamed from: o, reason: collision with root package name */
    public boolean f17181o = false;

    /* renamed from: p, reason: collision with root package name */
    public float[] f17182p = new float[2];

    /* renamed from: q, reason: collision with root package name */
    public int[] f17183q = new int[2];

    /* renamed from: u, reason: collision with root package name */
    public float f17187u = 4.0f;

    /* renamed from: v, reason: collision with root package name */
    public float f17188v = 1.2f;

    /* renamed from: w, reason: collision with root package name */
    public boolean f17189w = true;

    /* renamed from: x, reason: collision with root package name */
    public float f17190x = 1.0f;

    /* renamed from: y, reason: collision with root package name */
    public int f17191y = 0;

    /* renamed from: z, reason: collision with root package name */
    public float f17192z = 10.0f;
    public float A = 10.0f;
    public float B = 1.0f;
    public float C = Float.NaN;
    public float D = Float.NaN;
    public int E = 0;
    public int F = 0;

    /* compiled from: TouchResponse.java */
    /* loaded from: classes.dex */
    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    /* compiled from: TouchResponse.java */
    /* loaded from: classes.dex */
    public class b implements NestedScrollView.b {
        public b() {
        }

        @Override // androidx.core.widget.NestedScrollView.b
        public void a(NestedScrollView nestedScrollView, int i10, int i11, int i12, int i13) {
        }
    }

    public s(Context context, p pVar, XmlPullParser xmlPullParser) {
        this.f17186t = pVar;
        c(context, Xml.asAttributeSet(xmlPullParser));
    }

    public float a(float f10, float f11) {
        return (f10 * this.f17179m) + (f11 * this.f17180n);
    }

    public final void b(TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            if (index == a0.d.G8) {
                this.f17170d = typedArray.getResourceId(index, this.f17170d);
            } else if (index == a0.d.H8) {
                int i11 = typedArray.getInt(index, this.f17167a);
                this.f17167a = i11;
                float[][] fArr = G;
                this.f17174h = fArr[i11][0];
                this.f17173g = fArr[i11][1];
            } else if (index == a0.d.f226r8) {
                int i12 = typedArray.getInt(index, this.f17168b);
                this.f17168b = i12;
                float[][] fArr2 = H;
                if (i12 < fArr2.length) {
                    this.f17179m = fArr2[i12][0];
                    this.f17180n = fArr2[i12][1];
                } else {
                    this.f17180n = Float.NaN;
                    this.f17179m = Float.NaN;
                    this.f17178l = true;
                }
            } else if (index == a0.d.f281w8) {
                this.f17187u = typedArray.getFloat(index, this.f17187u);
            } else if (index == a0.d.f270v8) {
                this.f17188v = typedArray.getFloat(index, this.f17188v);
            } else if (index == a0.d.f292x8) {
                this.f17189w = typedArray.getBoolean(index, this.f17189w);
            } else if (index == a0.d.f237s8) {
                this.f17190x = typedArray.getFloat(index, this.f17190x);
            } else if (index == a0.d.f248t8) {
                this.f17192z = typedArray.getFloat(index, this.f17192z);
            } else if (index == a0.d.I8) {
                this.f17171e = typedArray.getResourceId(index, this.f17171e);
            } else if (index == a0.d.f314z8) {
                this.f17169c = typedArray.getInt(index, this.f17169c);
            } else if (index == a0.d.f303y8) {
                this.f17191y = typedArray.getInteger(index, 0);
            } else if (index == a0.d.f259u8) {
                this.f17172f = typedArray.getResourceId(index, 0);
            } else if (index == a0.d.A8) {
                this.f17177k = typedArray.getResourceId(index, this.f17177k);
            } else if (index == a0.d.C8) {
                this.A = typedArray.getFloat(index, this.A);
            } else if (index == a0.d.D8) {
                this.B = typedArray.getFloat(index, this.B);
            } else if (index == a0.d.E8) {
                this.C = typedArray.getFloat(index, this.C);
            } else if (index == a0.d.F8) {
                this.D = typedArray.getFloat(index, this.D);
            } else if (index == a0.d.B8) {
                this.E = typedArray.getInt(index, this.E);
            } else if (index == a0.d.f215q8) {
                this.F = typedArray.getInt(index, this.F);
            }
        }
    }

    public final void c(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.d.f204p8);
        b(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public int d() {
        return this.F;
    }

    public int e() {
        return this.f17191y;
    }

    public RectF f(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i10 = this.f17172f;
        if (i10 == -1 || (findViewById = viewGroup.findViewById(i10)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    public float g() {
        return this.f17188v;
    }

    public float h() {
        return this.f17187u;
    }

    public boolean i() {
        return this.f17189w;
    }

    public float j(float f10, float f11) {
        this.f17186t.l(this.f17170d, this.f17186t.getProgress(), this.f17174h, this.f17173g, this.f17182p);
        float f12 = this.f17179m;
        if (f12 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            float[] fArr = this.f17182p;
            if (fArr[0] == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                fArr[0] = 1.0E-7f;
            }
            return (f10 * f12) / fArr[0];
        }
        float[] fArr2 = this.f17182p;
        if (fArr2[1] == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            fArr2[1] = 1.0E-7f;
        }
        return (f11 * this.f17180n) / fArr2[1];
    }

    public int k() {
        return this.E;
    }

    public float l() {
        return this.A;
    }

    public float m() {
        return this.B;
    }

    public float n() {
        return this.C;
    }

    public float o() {
        return this.D;
    }

    public RectF p(ViewGroup viewGroup, RectF rectF) {
        View findViewById;
        int i10 = this.f17171e;
        if (i10 == -1 || (findViewById = viewGroup.findViewById(i10)) == null) {
            return null;
        }
        rectF.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rectF;
    }

    public int q() {
        return this.f17171e;
    }

    public void r(MotionEvent motionEvent, p.f fVar, int i10, r rVar) {
        float f10;
        int i11;
        float f11;
        if (this.f17178l) {
            s(motionEvent, fVar, i10, rVar);
            return;
        }
        fVar.a(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f17184r = motionEvent.getRawX();
            this.f17185s = motionEvent.getRawY();
            this.f17181o = false;
            return;
        }
        if (action == 1) {
            this.f17181o = false;
            fVar.e(1000);
            float d10 = fVar.d();
            float c10 = fVar.c();
            float progress = this.f17186t.getProgress();
            int i12 = this.f17170d;
            if (i12 != -1) {
                this.f17186t.l(i12, progress, this.f17174h, this.f17173g, this.f17182p);
            } else {
                float min = Math.min(this.f17186t.getWidth(), this.f17186t.getHeight());
                float[] fArr = this.f17182p;
                fArr[1] = this.f17180n * min;
                fArr[0] = min * this.f17179m;
            }
            float f12 = this.f17179m;
            float[] fArr2 = this.f17182p;
            float f13 = fArr2[0];
            float f14 = fArr2[1];
            if (f12 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                f10 = d10 / fArr2[0];
            } else {
                f10 = c10 / fArr2[1];
            }
            float f15 = !Float.isNaN(f10) ? (f10 / 3.0f) + progress : progress;
            if (f15 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f15 == 1.0f || (i11 = this.f17169c) == 3) {
                if (StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD >= f15 || 1.0f <= f15) {
                    this.f17186t.setState(p.j.FINISHED);
                    return;
                }
                return;
            }
            float f16 = ((double) f15) < 0.5d ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : 1.0f;
            if (i11 == 6) {
                if (progress + f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    f10 = Math.abs(f10);
                }
                f16 = 1.0f;
            }
            if (this.f17169c == 7) {
                if (progress + f10 > 1.0f) {
                    f10 = -Math.abs(f10);
                }
                f16 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
            this.f17186t.x(this.f17169c, f16, f10);
            if (StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD >= progress || 1.0f <= progress) {
                this.f17186t.setState(p.j.FINISHED);
                return;
            }
            return;
        }
        if (action != 2) {
            return;
        }
        float rawY = motionEvent.getRawY() - this.f17185s;
        float rawX = motionEvent.getRawX() - this.f17184r;
        if (Math.abs((this.f17179m * rawX) + (this.f17180n * rawY)) > this.f17192z || this.f17181o) {
            float progress2 = this.f17186t.getProgress();
            if (!this.f17181o) {
                this.f17181o = true;
                this.f17186t.setProgress(progress2);
            }
            int i13 = this.f17170d;
            if (i13 != -1) {
                this.f17186t.l(i13, progress2, this.f17174h, this.f17173g, this.f17182p);
            } else {
                float min2 = Math.min(this.f17186t.getWidth(), this.f17186t.getHeight());
                float[] fArr3 = this.f17182p;
                fArr3[1] = this.f17180n * min2;
                fArr3[0] = min2 * this.f17179m;
            }
            float f17 = this.f17179m;
            float[] fArr4 = this.f17182p;
            if (Math.abs(((f17 * fArr4[0]) + (this.f17180n * fArr4[1])) * this.f17190x) < 0.01d) {
                float[] fArr5 = this.f17182p;
                fArr5[0] = 0.01f;
                fArr5[1] = 0.01f;
            }
            if (this.f17179m != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                f11 = rawX / this.f17182p[0];
            } else {
                f11 = rawY / this.f17182p[1];
            }
            float max = Math.max(Math.min(progress2 + f11, 1.0f), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            if (this.f17169c == 6) {
                max = Math.max(max, 0.01f);
            }
            if (this.f17169c == 7) {
                max = Math.min(max, 0.99f);
            }
            float progress3 = this.f17186t.getProgress();
            if (max != progress3) {
                if (progress3 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || progress3 == 1.0f) {
                    this.f17186t.f(progress3 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                }
                this.f17186t.setProgress(max);
                fVar.e(1000);
                this.f17186t.f17027i = this.f17179m != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? fVar.d() / this.f17182p[0] : fVar.c() / this.f17182p[1];
            } else {
                this.f17186t.f17027i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
            this.f17184r = motionEvent.getRawX();
            this.f17185s = motionEvent.getRawY();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0292  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void s(MotionEvent motionEvent, p.f fVar, int i10, r rVar) {
        float left;
        float f10;
        int top;
        int bottom;
        int i11;
        float f11;
        int i12;
        fVar.a(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f17184r = motionEvent.getRawX();
            this.f17185s = motionEvent.getRawY();
            this.f17181o = false;
            return;
        }
        if (action != 1) {
            if (action != 2) {
                return;
            }
            motionEvent.getRawY();
            motionEvent.getRawX();
            float width = this.f17186t.getWidth() / 2.0f;
            float height = this.f17186t.getHeight() / 2.0f;
            int i13 = this.f17177k;
            if (i13 != -1) {
                View findViewById = this.f17186t.findViewById(i13);
                this.f17186t.getLocationOnScreen(this.f17183q);
                height = ((findViewById.getTop() + findViewById.getBottom()) / 2.0f) + this.f17183q[1];
                width = this.f17183q[0] + ((findViewById.getLeft() + findViewById.getRight()) / 2.0f);
            } else {
                int i14 = this.f17170d;
                if (i14 != -1) {
                    if (this.f17186t.findViewById(this.f17186t.n(i14).g()) != null) {
                        this.f17186t.getLocationOnScreen(this.f17183q);
                        width = this.f17183q[0] + ((r12.getLeft() + r12.getRight()) / 2.0f);
                        height = this.f17183q[1] + ((r12.getTop() + r12.getBottom()) / 2.0f);
                    }
                }
            }
            float rawX = motionEvent.getRawX() - width;
            float rawY = motionEvent.getRawY() - height;
            float atan2 = (float) (((Math.atan2(motionEvent.getRawY() - height, motionEvent.getRawX() - width) - Math.atan2(this.f17185s - height, this.f17184r - width)) * 180.0d) / 3.141592653589793d);
            if (atan2 > 330.0f) {
                atan2 -= 360.0f;
            } else if (atan2 < -330.0f) {
                atan2 += 360.0f;
            }
            if (Math.abs(atan2) > 0.01d || this.f17181o) {
                float progress = this.f17186t.getProgress();
                if (!this.f17181o) {
                    this.f17181o = true;
                    this.f17186t.setProgress(progress);
                }
                int i15 = this.f17170d;
                if (i15 != -1) {
                    this.f17186t.l(i15, progress, this.f17174h, this.f17173g, this.f17182p);
                    this.f17182p[1] = (float) Math.toDegrees(r3[1]);
                } else {
                    this.f17182p[1] = 360.0f;
                }
                float max = Math.max(Math.min(progress + ((atan2 * this.f17190x) / this.f17182p[1]), 1.0f), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                float progress2 = this.f17186t.getProgress();
                if (max != progress2) {
                    if (progress2 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || progress2 == 1.0f) {
                        this.f17186t.f(progress2 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    }
                    this.f17186t.setProgress(max);
                    fVar.e(1000);
                    float d10 = fVar.d();
                    double c10 = fVar.c();
                    double d11 = d10;
                    this.f17186t.f17027i = (float) Math.toDegrees((float) ((Math.hypot(c10, d11) * Math.sin(Math.atan2(c10, d11) - r8)) / Math.hypot(rawX, rawY)));
                } else {
                    this.f17186t.f17027i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
                this.f17184r = motionEvent.getRawX();
                this.f17185s = motionEvent.getRawY();
                return;
            }
            return;
        }
        this.f17181o = false;
        fVar.e(16);
        float d12 = fVar.d();
        float c11 = fVar.c();
        float progress3 = this.f17186t.getProgress();
        float width2 = this.f17186t.getWidth() / 2.0f;
        float height2 = this.f17186t.getHeight() / 2.0f;
        int i16 = this.f17177k;
        if (i16 != -1) {
            View findViewById2 = this.f17186t.findViewById(i16);
            this.f17186t.getLocationOnScreen(this.f17183q);
            left = this.f17183q[0] + ((findViewById2.getLeft() + findViewById2.getRight()) / 2.0f);
            f10 = this.f17183q[1];
            top = findViewById2.getTop();
            bottom = findViewById2.getBottom();
        } else {
            int i17 = this.f17170d;
            if (i17 != -1) {
                View findViewById3 = this.f17186t.findViewById(this.f17186t.n(i17).g());
                this.f17186t.getLocationOnScreen(this.f17183q);
                left = this.f17183q[0] + ((findViewById3.getLeft() + findViewById3.getRight()) / 2.0f);
                f10 = this.f17183q[1];
                top = findViewById3.getTop();
                bottom = findViewById3.getBottom();
            }
            float rawX2 = motionEvent.getRawX() - width2;
            double degrees = Math.toDegrees(Math.atan2(motionEvent.getRawY() - height2, rawX2));
            i11 = this.f17170d;
            if (i11 == -1) {
                this.f17186t.l(i11, progress3, this.f17174h, this.f17173g, this.f17182p);
                this.f17182p[1] = (float) Math.toDegrees(r3[1]);
            } else {
                this.f17182p[1] = 360.0f;
            }
            float degrees2 = ((float) (Math.toDegrees(Math.atan2(c11 + r2, d12 + rawX2)) - degrees)) * 62.5f;
            f11 = Float.isNaN(degrees2) ? (((degrees2 * 3.0f) * this.f17190x) / this.f17182p[1]) + progress3 : progress3;
            if (f11 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f11 == 1.0f || (i12 = this.f17169c) == 3) {
                if (StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD < f11 || 1.0f <= f11) {
                    this.f17186t.setState(p.j.FINISHED);
                }
                return;
            }
            float f12 = (degrees2 * this.f17190x) / this.f17182p[1];
            float f13 = ((double) f11) < 0.5d ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : 1.0f;
            if (i12 == 6) {
                if (progress3 + f12 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    f12 = Math.abs(f12);
                }
                f13 = 1.0f;
            }
            if (this.f17169c == 7) {
                if (progress3 + f12 > 1.0f) {
                    f12 = -Math.abs(f12);
                }
                f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
            this.f17186t.x(this.f17169c, f13, f12 * 3.0f);
            if (StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD >= progress3 || 1.0f <= progress3) {
                this.f17186t.setState(p.j.FINISHED);
                return;
            }
            return;
        }
        height2 = f10 + ((top + bottom) / 2.0f);
        width2 = left;
        float rawX22 = motionEvent.getRawX() - width2;
        double degrees3 = Math.toDegrees(Math.atan2(motionEvent.getRawY() - height2, rawX22));
        i11 = this.f17170d;
        if (i11 == -1) {
        }
        float degrees22 = ((float) (Math.toDegrees(Math.atan2(c11 + r2, d12 + rawX22)) - degrees3)) * 62.5f;
        if (Float.isNaN(degrees22)) {
        }
        if (f11 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
        }
        if (StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD < f11) {
        }
        this.f17186t.setState(p.j.FINISHED);
    }

    public void t(float f10, float f11) {
        float f12;
        float progress = this.f17186t.getProgress();
        if (!this.f17181o) {
            this.f17181o = true;
            this.f17186t.setProgress(progress);
        }
        this.f17186t.l(this.f17170d, progress, this.f17174h, this.f17173g, this.f17182p);
        float f13 = this.f17179m;
        float[] fArr = this.f17182p;
        if (Math.abs((f13 * fArr[0]) + (this.f17180n * fArr[1])) < 0.01d) {
            float[] fArr2 = this.f17182p;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f14 = this.f17179m;
        if (f14 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f12 = (f10 * f14) / this.f17182p[0];
        } else {
            f12 = (f11 * this.f17180n) / this.f17182p[1];
        }
        float max = Math.max(Math.min(progress + f12, 1.0f), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        if (max != this.f17186t.getProgress()) {
            this.f17186t.setProgress(max);
        }
    }

    public String toString() {
        if (Float.isNaN(this.f17179m)) {
            return "rotation";
        }
        return this.f17179m + " , " + this.f17180n;
    }

    public void u(float f10, float f11) {
        float f12;
        this.f17181o = false;
        float progress = this.f17186t.getProgress();
        this.f17186t.l(this.f17170d, progress, this.f17174h, this.f17173g, this.f17182p);
        float f13 = this.f17179m;
        float[] fArr = this.f17182p;
        float f14 = fArr[0];
        float f15 = this.f17180n;
        float f16 = fArr[1];
        float f17 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (f13 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f12 = (f10 * f13) / fArr[0];
        } else {
            f12 = (f11 * f15) / fArr[1];
        }
        if (!Float.isNaN(f12)) {
            progress += f12 / 3.0f;
        }
        if (progress != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            boolean z10 = progress != 1.0f;
            int i10 = this.f17169c;
            if ((i10 != 3) && z10) {
                p pVar = this.f17186t;
                if (progress >= 0.5d) {
                    f17 = 1.0f;
                }
                pVar.x(i10, f17, f12);
            }
        }
    }

    public void v(float f10, float f11) {
        this.f17184r = f10;
        this.f17185s = f11;
    }

    public void w(boolean z10) {
        if (z10) {
            float[][] fArr = H;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = G;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = H;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = G;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[][] fArr5 = G;
        int i10 = this.f17167a;
        this.f17174h = fArr5[i10][0];
        this.f17173g = fArr5[i10][1];
        int i11 = this.f17168b;
        float[][] fArr6 = H;
        if (i11 >= fArr6.length) {
            return;
        }
        this.f17179m = fArr6[i11][0];
        this.f17180n = fArr6[i11][1];
    }

    public void x(float f10, float f11) {
        this.f17184r = f10;
        this.f17185s = f11;
        this.f17181o = false;
    }

    public void y() {
        View view;
        int i10 = this.f17170d;
        if (i10 != -1) {
            view = this.f17186t.findViewById(i10);
            if (view == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("cannot find TouchAnchorId @id/");
                sb2.append(z.a.b(this.f17186t.getContext(), this.f17170d));
            }
        } else {
            view = null;
        }
        if (view instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            nestedScrollView.setOnTouchListener(new a());
            nestedScrollView.setOnScrollChangeListener(new b());
        }
    }
}
