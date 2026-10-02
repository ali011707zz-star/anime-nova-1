package z;

import android.os.Build;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import y.c;

/* compiled from: MotionConstrainedPoint.java */
/* loaded from: classes.dex */
public class l implements Comparable<l> {
    public static String[] H = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: h, reason: collision with root package name */
    public int f16966h;

    /* renamed from: v, reason: collision with root package name */
    public float f16980v;

    /* renamed from: w, reason: collision with root package name */
    public float f16981w;

    /* renamed from: x, reason: collision with root package name */
    public float f16982x;

    /* renamed from: y, reason: collision with root package name */
    public float f16983y;

    /* renamed from: z, reason: collision with root package name */
    public float f16984z;

    /* renamed from: f, reason: collision with root package name */
    public float f16964f = 1.0f;

    /* renamed from: g, reason: collision with root package name */
    public int f16965g = 0;

    /* renamed from: i, reason: collision with root package name */
    public boolean f16967i = false;

    /* renamed from: j, reason: collision with root package name */
    public float f16968j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: k, reason: collision with root package name */
    public float f16969k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: l, reason: collision with root package name */
    public float f16970l = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: m, reason: collision with root package name */
    public float f16971m = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: n, reason: collision with root package name */
    public float f16972n = 1.0f;

    /* renamed from: o, reason: collision with root package name */
    public float f16973o = 1.0f;

    /* renamed from: p, reason: collision with root package name */
    public float f16974p = Float.NaN;

    /* renamed from: q, reason: collision with root package name */
    public float f16975q = Float.NaN;

    /* renamed from: r, reason: collision with root package name */
    public float f16976r = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: s, reason: collision with root package name */
    public float f16977s = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: t, reason: collision with root package name */
    public float f16978t = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: u, reason: collision with root package name */
    public int f16979u = 0;
    public float A = Float.NaN;
    public float B = Float.NaN;
    public int C = -1;
    public LinkedHashMap<String, androidx.constraintlayout.widget.a> D = new LinkedHashMap<>();
    public int E = 0;
    public double[] F = new double[18];
    public double[] G = new double[18];

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0023. Please report as an issue. */
    public void a(HashMap<String, y.c> hashMap, int i10) {
        for (String str : hashMap.keySet()) {
            y.c cVar = hashMap.get(str);
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case -760884510:
                    if (str.equals("transformPivotX")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case -760884509:
                    if (str.equals("transformPivotY")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c10 = '\r';
                        break;
                    }
                    break;
            }
            float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            switch (c10) {
                case 0:
                    if (!Float.isNaN(this.f16970l)) {
                        f10 = this.f16970l;
                    }
                    cVar.b(i10, f10);
                    break;
                case 1:
                    if (!Float.isNaN(this.f16971m)) {
                        f10 = this.f16971m;
                    }
                    cVar.b(i10, f10);
                    break;
                case 2:
                    if (!Float.isNaN(this.f16976r)) {
                        f10 = this.f16976r;
                    }
                    cVar.b(i10, f10);
                    break;
                case 3:
                    if (!Float.isNaN(this.f16977s)) {
                        f10 = this.f16977s;
                    }
                    cVar.b(i10, f10);
                    break;
                case 4:
                    if (!Float.isNaN(this.f16978t)) {
                        f10 = this.f16978t;
                    }
                    cVar.b(i10, f10);
                    break;
                case 5:
                    if (!Float.isNaN(this.B)) {
                        f10 = this.B;
                    }
                    cVar.b(i10, f10);
                    break;
                case 6:
                    cVar.b(i10, Float.isNaN(this.f16972n) ? 1.0f : this.f16972n);
                    break;
                case 7:
                    cVar.b(i10, Float.isNaN(this.f16973o) ? 1.0f : this.f16973o);
                    break;
                case '\b':
                    if (!Float.isNaN(this.f16974p)) {
                        f10 = this.f16974p;
                    }
                    cVar.b(i10, f10);
                    break;
                case '\t':
                    if (!Float.isNaN(this.f16975q)) {
                        f10 = this.f16975q;
                    }
                    cVar.b(i10, f10);
                    break;
                case '\n':
                    if (!Float.isNaN(this.f16969k)) {
                        f10 = this.f16969k;
                    }
                    cVar.b(i10, f10);
                    break;
                case 11:
                    if (!Float.isNaN(this.f16968j)) {
                        f10 = this.f16968j;
                    }
                    cVar.b(i10, f10);
                    break;
                case '\f':
                    if (!Float.isNaN(this.A)) {
                        f10 = this.A;
                    }
                    cVar.b(i10, f10);
                    break;
                case '\r':
                    cVar.b(i10, Float.isNaN(this.f16964f) ? 1.0f : this.f16964f);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.D.containsKey(str2)) {
                            androidx.constraintlayout.widget.a aVar = this.D.get(str2);
                            if (cVar instanceof c.b) {
                                ((c.b) cVar).h(i10, aVar);
                                break;
                            } else {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(str);
                                sb2.append(" ViewSpline not a CustomSet frame = ");
                                sb2.append(i10);
                                sb2.append(", value");
                                sb2.append(aVar.e());
                                sb2.append(cVar);
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("UNKNOWN spline ");
                        sb3.append(str);
                        break;
                    }
            }
        }
    }

    public void b(View view) {
        this.f16966h = view.getVisibility();
        this.f16964f = view.getVisibility() != 0 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : view.getAlpha();
        this.f16967i = false;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            this.f16968j = view.getElevation();
        }
        this.f16969k = view.getRotation();
        this.f16970l = view.getRotationX();
        this.f16971m = view.getRotationY();
        this.f16972n = view.getScaleX();
        this.f16973o = view.getScaleY();
        this.f16974p = view.getPivotX();
        this.f16975q = view.getPivotY();
        this.f16976r = view.getTranslationX();
        this.f16977s = view.getTranslationY();
        if (i10 >= 21) {
            this.f16978t = view.getTranslationZ();
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(l lVar) {
        return Float.compare(this.f16980v, lVar.f16980v);
    }

    public final boolean d(float f10, float f11) {
        return (Float.isNaN(f10) || Float.isNaN(f11)) ? Float.isNaN(f10) != Float.isNaN(f11) : Math.abs(f10 - f11) > 1.0E-6f;
    }

    public void e(l lVar, HashSet<String> hashSet) {
        if (d(this.f16964f, lVar.f16964f)) {
            hashSet.add("alpha");
        }
        if (d(this.f16968j, lVar.f16968j)) {
            hashSet.add("elevation");
        }
        int i10 = this.f16966h;
        int i11 = lVar.f16966h;
        if (i10 != i11 && this.f16965g == 0 && (i10 == 0 || i11 == 0)) {
            hashSet.add("alpha");
        }
        if (d(this.f16969k, lVar.f16969k)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.A) || !Float.isNaN(lVar.A)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.B) || !Float.isNaN(lVar.B)) {
            hashSet.add("progress");
        }
        if (d(this.f16970l, lVar.f16970l)) {
            hashSet.add("rotationX");
        }
        if (d(this.f16971m, lVar.f16971m)) {
            hashSet.add("rotationY");
        }
        if (d(this.f16974p, lVar.f16974p)) {
            hashSet.add("transformPivotX");
        }
        if (d(this.f16975q, lVar.f16975q)) {
            hashSet.add("transformPivotY");
        }
        if (d(this.f16972n, lVar.f16972n)) {
            hashSet.add("scaleX");
        }
        if (d(this.f16973o, lVar.f16973o)) {
            hashSet.add("scaleY");
        }
        if (d(this.f16976r, lVar.f16976r)) {
            hashSet.add("translationX");
        }
        if (d(this.f16977s, lVar.f16977s)) {
            hashSet.add("translationY");
        }
        if (d(this.f16978t, lVar.f16978t)) {
            hashSet.add("translationZ");
        }
    }

    public void f(float f10, float f11, float f12, float f13) {
        this.f16981w = f10;
        this.f16982x = f11;
        this.f16983y = f12;
        this.f16984z = f13;
    }

    public void g(View view) {
        f(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        b(view);
    }
}
