package z;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.a;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: KeyCycle.java */
/* loaded from: classes.dex */
public class f extends d {

    /* renamed from: g, reason: collision with root package name */
    public String f16887g = null;

    /* renamed from: h, reason: collision with root package name */
    public int f16888h = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f16889i = -1;

    /* renamed from: j, reason: collision with root package name */
    public String f16890j = null;

    /* renamed from: k, reason: collision with root package name */
    public float f16891k = Float.NaN;

    /* renamed from: l, reason: collision with root package name */
    public float f16892l = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: m, reason: collision with root package name */
    public float f16893m = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* renamed from: n, reason: collision with root package name */
    public float f16894n = Float.NaN;

    /* renamed from: o, reason: collision with root package name */
    public int f16895o = -1;

    /* renamed from: p, reason: collision with root package name */
    public float f16896p = Float.NaN;

    /* renamed from: q, reason: collision with root package name */
    public float f16897q = Float.NaN;

    /* renamed from: r, reason: collision with root package name */
    public float f16898r = Float.NaN;

    /* renamed from: s, reason: collision with root package name */
    public float f16899s = Float.NaN;

    /* renamed from: t, reason: collision with root package name */
    public float f16900t = Float.NaN;

    /* renamed from: u, reason: collision with root package name */
    public float f16901u = Float.NaN;

    /* renamed from: v, reason: collision with root package name */
    public float f16902v = Float.NaN;

    /* renamed from: w, reason: collision with root package name */
    public float f16903w = Float.NaN;

    /* renamed from: x, reason: collision with root package name */
    public float f16904x = Float.NaN;

    /* renamed from: y, reason: collision with root package name */
    public float f16905y = Float.NaN;

    /* renamed from: z, reason: collision with root package name */
    public float f16906z = Float.NaN;

    /* compiled from: KeyCycle.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static SparseIntArray f16907a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f16907a = sparseIntArray;
            sparseIntArray.append(a0.d.f267v5, 1);
            f16907a.append(a0.d.f245t5, 2);
            f16907a.append(a0.d.f278w5, 3);
            f16907a.append(a0.d.f234s5, 4);
            f16907a.append(a0.d.B5, 5);
            f16907a.append(a0.d.f311z5, 6);
            f16907a.append(a0.d.f300y5, 7);
            f16907a.append(a0.d.C5, 8);
            f16907a.append(a0.d.f124i5, 9);
            f16907a.append(a0.d.f223r5, 10);
            f16907a.append(a0.d.f179n5, 11);
            f16907a.append(a0.d.f190o5, 12);
            f16907a.append(a0.d.f201p5, 13);
            f16907a.append(a0.d.f289x5, 14);
            f16907a.append(a0.d.f157l5, 15);
            f16907a.append(a0.d.f168m5, 16);
            f16907a.append(a0.d.f135j5, 17);
            f16907a.append(a0.d.f146k5, 18);
            f16907a.append(a0.d.f212q5, 19);
            f16907a.append(a0.d.f256u5, 20);
            f16907a.append(a0.d.A5, 21);
        }

        public static void b(f fVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f16907a.get(index)) {
                    case 1:
                        if (p.f17015z0) {
                            int resourceId = typedArray.getResourceId(index, fVar.f16865b);
                            fVar.f16865b = resourceId;
                            if (resourceId == -1) {
                                fVar.f16866c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            fVar.f16866c = typedArray.getString(index);
                            break;
                        } else {
                            fVar.f16865b = typedArray.getResourceId(index, fVar.f16865b);
                            break;
                        }
                    case 2:
                        fVar.f16864a = typedArray.getInt(index, fVar.f16864a);
                        break;
                    case 3:
                        fVar.f16887g = typedArray.getString(index);
                        break;
                    case 4:
                        fVar.f16888h = typedArray.getInteger(index, fVar.f16888h);
                        break;
                    case 5:
                        if (typedArray.peekValue(index).type == 3) {
                            fVar.f16890j = typedArray.getString(index);
                            fVar.f16889i = 7;
                            break;
                        } else {
                            fVar.f16889i = typedArray.getInt(index, fVar.f16889i);
                            break;
                        }
                    case 6:
                        fVar.f16891k = typedArray.getFloat(index, fVar.f16891k);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            fVar.f16892l = typedArray.getDimension(index, fVar.f16892l);
                            break;
                        } else {
                            fVar.f16892l = typedArray.getFloat(index, fVar.f16892l);
                            break;
                        }
                    case 8:
                        fVar.f16895o = typedArray.getInt(index, fVar.f16895o);
                        break;
                    case 9:
                        fVar.f16896p = typedArray.getFloat(index, fVar.f16896p);
                        break;
                    case 10:
                        fVar.f16897q = typedArray.getDimension(index, fVar.f16897q);
                        break;
                    case 11:
                        fVar.f16898r = typedArray.getFloat(index, fVar.f16898r);
                        break;
                    case 12:
                        fVar.f16900t = typedArray.getFloat(index, fVar.f16900t);
                        break;
                    case 13:
                        fVar.f16901u = typedArray.getFloat(index, fVar.f16901u);
                        break;
                    case 14:
                        fVar.f16899s = typedArray.getFloat(index, fVar.f16899s);
                        break;
                    case 15:
                        fVar.f16902v = typedArray.getFloat(index, fVar.f16902v);
                        break;
                    case 16:
                        fVar.f16903w = typedArray.getFloat(index, fVar.f16903w);
                        break;
                    case 17:
                        fVar.f16904x = typedArray.getDimension(index, fVar.f16904x);
                        break;
                    case 18:
                        fVar.f16905y = typedArray.getDimension(index, fVar.f16905y);
                        break;
                    case 19:
                        if (Build.VERSION.SDK_INT >= 21) {
                            fVar.f16906z = typedArray.getDimension(index, fVar.f16906z);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        fVar.f16894n = typedArray.getFloat(index, fVar.f16894n);
                        break;
                    case 21:
                        fVar.f16893m = typedArray.getFloat(index, fVar.f16893m) / 360.0f;
                        break;
                    default:
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("unused attribute 0x");
                        sb2.append(Integer.toHexString(index));
                        sb2.append("   ");
                        sb2.append(f16907a.get(index));
                        break;
                }
            }
        }
    }

    public f() {
        this.f16867d = 4;
        this.f16868e = new HashMap<>();
    }

    public void T(HashMap<String, y.b> hashMap) {
        y.b bVar;
        y.b bVar2;
        for (String str : hashMap.keySet()) {
            if (str.startsWith("CUSTOM")) {
                androidx.constraintlayout.widget.a aVar = this.f16868e.get(str.substring(7));
                if (aVar != null && aVar.d() == a.b.FLOAT_TYPE && (bVar = hashMap.get(str)) != null) {
                    bVar.d(this.f16864a, this.f16889i, this.f16890j, this.f16895o, this.f16891k, this.f16892l, this.f16893m, aVar.e(), aVar);
                }
            } else {
                float U = U(str);
                if (!Float.isNaN(U) && (bVar2 = hashMap.get(str)) != null) {
                    bVar2.c(this.f16864a, this.f16889i, this.f16890j, this.f16895o, this.f16891k, this.f16892l, this.f16893m, U);
                }
            }
        }
    }

    public float U(String str) {
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
            case -40300674:
                if (str.equals("rotation")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = 11;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 1530034690:
                if (str.equals("wavePhase")) {
                    c10 = '\r';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return this.f16900t;
            case 1:
                return this.f16901u;
            case 2:
                return this.f16904x;
            case 3:
                return this.f16905y;
            case 4:
                return this.f16906z;
            case 5:
                return this.f16894n;
            case 6:
                return this.f16902v;
            case 7:
                return this.f16903w;
            case '\b':
                return this.f16898r;
            case '\t':
                return this.f16897q;
            case '\n':
                return this.f16899s;
            case 11:
                return this.f16896p;
            case '\f':
                return this.f16892l;
            case '\r':
                return this.f16893m;
            default:
                if (str.startsWith("CUSTOM")) {
                    return Float.NaN;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("  UNKNOWN  ");
                sb2.append(str);
                return Float.NaN;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0045. Please report as an issue. */
    @Override // z.d
    public void a(HashMap<String, y.c> hashMap) {
        z.a.f("KeyCycle", "add " + hashMap.size() + " values", 2);
        for (String str : hashMap.keySet()) {
            y.c cVar = hashMap.get(str);
            if (cVar != null) {
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
                    case -40300674:
                        if (str.equals("rotation")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case -4379043:
                        if (str.equals("elevation")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case 37232917:
                        if (str.equals("transitionPathRotate")) {
                            c10 = '\n';
                            break;
                        }
                        break;
                    case 92909918:
                        if (str.equals("alpha")) {
                            c10 = 11;
                            break;
                        }
                        break;
                    case 156108012:
                        if (str.equals("waveOffset")) {
                            c10 = '\f';
                            break;
                        }
                        break;
                    case 1530034690:
                        if (str.equals("wavePhase")) {
                            c10 = '\r';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        cVar.b(this.f16864a, this.f16900t);
                        break;
                    case 1:
                        cVar.b(this.f16864a, this.f16901u);
                        break;
                    case 2:
                        cVar.b(this.f16864a, this.f16904x);
                        break;
                    case 3:
                        cVar.b(this.f16864a, this.f16905y);
                        break;
                    case 4:
                        cVar.b(this.f16864a, this.f16906z);
                        break;
                    case 5:
                        cVar.b(this.f16864a, this.f16894n);
                        break;
                    case 6:
                        cVar.b(this.f16864a, this.f16902v);
                        break;
                    case 7:
                        cVar.b(this.f16864a, this.f16903w);
                        break;
                    case '\b':
                        cVar.b(this.f16864a, this.f16898r);
                        break;
                    case '\t':
                        cVar.b(this.f16864a, this.f16897q);
                        break;
                    case '\n':
                        cVar.b(this.f16864a, this.f16899s);
                        break;
                    case 11:
                        cVar.b(this.f16864a, this.f16896p);
                        break;
                    case '\f':
                        cVar.b(this.f16864a, this.f16892l);
                        break;
                    case '\r':
                        cVar.b(this.f16864a, this.f16893m);
                        break;
                    default:
                        if (str.startsWith("CUSTOM")) {
                            break;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("  UNKNOWN  ");
                            sb2.append(str);
                            break;
                        }
                }
            }
        }
    }

    @Override // z.d
    /* renamed from: b */
    public d clone() {
        return new f().c(this);
    }

    @Override // z.d
    public d c(d dVar) {
        super.c(dVar);
        f fVar = (f) dVar;
        this.f16887g = fVar.f16887g;
        this.f16888h = fVar.f16888h;
        this.f16889i = fVar.f16889i;
        this.f16890j = fVar.f16890j;
        this.f16891k = fVar.f16891k;
        this.f16892l = fVar.f16892l;
        this.f16893m = fVar.f16893m;
        this.f16894n = fVar.f16894n;
        this.f16895o = fVar.f16895o;
        this.f16896p = fVar.f16896p;
        this.f16897q = fVar.f16897q;
        this.f16898r = fVar.f16898r;
        this.f16899s = fVar.f16899s;
        this.f16900t = fVar.f16900t;
        this.f16901u = fVar.f16901u;
        this.f16902v = fVar.f16902v;
        this.f16903w = fVar.f16903w;
        this.f16904x = fVar.f16904x;
        this.f16905y = fVar.f16905y;
        this.f16906z = fVar.f16906z;
        return this;
    }

    @Override // z.d
    public void d(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f16896p)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f16897q)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f16898r)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f16900t)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f16901u)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f16902v)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f16903w)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f16899s)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f16904x)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f16905y)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f16906z)) {
            hashSet.add("translationZ");
        }
        if (this.f16868e.size() > 0) {
            Iterator<String> it2 = this.f16868e.keySet().iterator();
            while (it2.hasNext()) {
                hashSet.add("CUSTOM," + it2.next());
            }
        }
    }

    @Override // z.d
    public void e(Context context, AttributeSet attributeSet) {
        a.b(this, context.obtainStyledAttributes(attributeSet, a0.d.f113h5));
    }
}
