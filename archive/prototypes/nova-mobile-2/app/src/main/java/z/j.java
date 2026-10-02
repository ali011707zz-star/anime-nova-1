package z;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import y.d;

/* compiled from: KeyTimeCycle.java */
/* loaded from: classes.dex */
public class j extends d {

    /* renamed from: g, reason: collision with root package name */
    public String f16924g;

    /* renamed from: h, reason: collision with root package name */
    public int f16925h = -1;

    /* renamed from: i, reason: collision with root package name */
    public float f16926i = Float.NaN;

    /* renamed from: j, reason: collision with root package name */
    public float f16927j = Float.NaN;

    /* renamed from: k, reason: collision with root package name */
    public float f16928k = Float.NaN;

    /* renamed from: l, reason: collision with root package name */
    public float f16929l = Float.NaN;

    /* renamed from: m, reason: collision with root package name */
    public float f16930m = Float.NaN;

    /* renamed from: n, reason: collision with root package name */
    public float f16931n = Float.NaN;

    /* renamed from: o, reason: collision with root package name */
    public float f16932o = Float.NaN;

    /* renamed from: p, reason: collision with root package name */
    public float f16933p = Float.NaN;

    /* renamed from: q, reason: collision with root package name */
    public float f16934q = Float.NaN;

    /* renamed from: r, reason: collision with root package name */
    public float f16935r = Float.NaN;

    /* renamed from: s, reason: collision with root package name */
    public float f16936s = Float.NaN;

    /* renamed from: t, reason: collision with root package name */
    public float f16937t = Float.NaN;

    /* renamed from: u, reason: collision with root package name */
    public int f16938u = 0;

    /* renamed from: v, reason: collision with root package name */
    public String f16939v = null;

    /* renamed from: w, reason: collision with root package name */
    public float f16940w = Float.NaN;

    /* renamed from: x, reason: collision with root package name */
    public float f16941x = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

    /* compiled from: KeyTimeCycle.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static SparseIntArray f16942a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f16942a = sparseIntArray;
            sparseIntArray.append(a0.d.U5, 1);
            f16942a.append(a0.d.f69d6, 2);
            f16942a.append(a0.d.Z5, 4);
            f16942a.append(a0.d.f33a6, 5);
            f16942a.append(a0.d.f45b6, 6);
            f16942a.append(a0.d.X5, 7);
            f16942a.append(a0.d.f136j6, 8);
            f16942a.append(a0.d.f125i6, 9);
            f16942a.append(a0.d.f114h6, 10);
            f16942a.append(a0.d.f92f6, 12);
            f16942a.append(a0.d.f81e6, 13);
            f16942a.append(a0.d.Y5, 14);
            f16942a.append(a0.d.V5, 15);
            f16942a.append(a0.d.W5, 16);
            f16942a.append(a0.d.f57c6, 17);
            f16942a.append(a0.d.f103g6, 18);
            f16942a.append(a0.d.f158l6, 20);
            f16942a.append(a0.d.f147k6, 21);
            f16942a.append(a0.d.f169m6, 19);
        }

        public static void a(j jVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f16942a.get(index)) {
                    case 1:
                        jVar.f16926i = typedArray.getFloat(index, jVar.f16926i);
                        break;
                    case 2:
                        jVar.f16927j = typedArray.getDimension(index, jVar.f16927j);
                        break;
                    case 3:
                    case 11:
                    default:
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("unused attribute 0x");
                        sb2.append(Integer.toHexString(index));
                        sb2.append("   ");
                        sb2.append(f16942a.get(index));
                        break;
                    case 4:
                        jVar.f16928k = typedArray.getFloat(index, jVar.f16928k);
                        break;
                    case 5:
                        jVar.f16929l = typedArray.getFloat(index, jVar.f16929l);
                        break;
                    case 6:
                        jVar.f16930m = typedArray.getFloat(index, jVar.f16930m);
                        break;
                    case 7:
                        jVar.f16932o = typedArray.getFloat(index, jVar.f16932o);
                        break;
                    case 8:
                        jVar.f16931n = typedArray.getFloat(index, jVar.f16931n);
                        break;
                    case 9:
                        jVar.f16924g = typedArray.getString(index);
                        break;
                    case 10:
                        if (p.f17015z0) {
                            int resourceId = typedArray.getResourceId(index, jVar.f16865b);
                            jVar.f16865b = resourceId;
                            if (resourceId == -1) {
                                jVar.f16866c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            jVar.f16866c = typedArray.getString(index);
                            break;
                        } else {
                            jVar.f16865b = typedArray.getResourceId(index, jVar.f16865b);
                            break;
                        }
                    case 12:
                        jVar.f16864a = typedArray.getInt(index, jVar.f16864a);
                        break;
                    case 13:
                        jVar.f16925h = typedArray.getInteger(index, jVar.f16925h);
                        break;
                    case 14:
                        jVar.f16933p = typedArray.getFloat(index, jVar.f16933p);
                        break;
                    case 15:
                        jVar.f16934q = typedArray.getDimension(index, jVar.f16934q);
                        break;
                    case 16:
                        jVar.f16935r = typedArray.getDimension(index, jVar.f16935r);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            jVar.f16936s = typedArray.getDimension(index, jVar.f16936s);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        jVar.f16937t = typedArray.getFloat(index, jVar.f16937t);
                        break;
                    case 19:
                        if (typedArray.peekValue(index).type == 3) {
                            jVar.f16939v = typedArray.getString(index);
                            jVar.f16938u = 7;
                            break;
                        } else {
                            jVar.f16938u = typedArray.getInt(index, jVar.f16938u);
                            break;
                        }
                    case 20:
                        jVar.f16940w = typedArray.getFloat(index, jVar.f16940w);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            jVar.f16941x = typedArray.getDimension(index, jVar.f16941x);
                            break;
                        } else {
                            jVar.f16941x = typedArray.getFloat(index, jVar.f16941x);
                            break;
                        }
                }
            }
        }
    }

    public j() {
        this.f16867d = 3;
        this.f16868e = new HashMap<>();
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0089, code lost:
    
        if (r1.equals("scaleY") == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void P(HashMap<String, y.d> hashMap) {
        Iterator<String> it2 = hashMap.keySet().iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            y.d dVar = hashMap.get(next);
            if (dVar != null) {
                char c10 = 7;
                if (next.startsWith("CUSTOM")) {
                    androidx.constraintlayout.widget.a aVar = this.f16868e.get(next.substring(7));
                    if (aVar != null) {
                        ((d.b) dVar).j(this.f16864a, aVar, this.f16940w, this.f16938u, this.f16941x);
                    }
                } else {
                    switch (next.hashCode()) {
                        case -1249320806:
                            if (next.equals("rotationX")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case -1249320805:
                            if (next.equals("rotationY")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case -1225497657:
                            if (next.equals("translationX")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case -1225497656:
                            if (next.equals("translationY")) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case -1225497655:
                            if (next.equals("translationZ")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case -1001078227:
                            if (next.equals("progress")) {
                                c10 = 5;
                                break;
                            }
                            break;
                        case -908189618:
                            if (next.equals("scaleX")) {
                                c10 = 6;
                                break;
                            }
                            break;
                        case -908189617:
                            break;
                        case -40300674:
                            if (next.equals("rotation")) {
                                c10 = '\b';
                                break;
                            }
                            break;
                        case -4379043:
                            if (next.equals("elevation")) {
                                c10 = '\t';
                                break;
                            }
                            break;
                        case 37232917:
                            if (next.equals("transitionPathRotate")) {
                                c10 = '\n';
                                break;
                            }
                            break;
                        case 92909918:
                            if (next.equals("alpha")) {
                                c10 = 11;
                                break;
                            }
                            break;
                    }
                    c10 = 65535;
                    switch (c10) {
                        case 0:
                            if (!Float.isNaN(this.f16929l)) {
                                dVar.b(this.f16864a, this.f16929l, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case 1:
                            if (!Float.isNaN(this.f16930m)) {
                                dVar.b(this.f16864a, this.f16930m, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case 2:
                            if (!Float.isNaN(this.f16934q)) {
                                dVar.b(this.f16864a, this.f16934q, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case 3:
                            if (!Float.isNaN(this.f16935r)) {
                                dVar.b(this.f16864a, this.f16935r, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            if (!Float.isNaN(this.f16936s)) {
                                dVar.b(this.f16864a, this.f16936s, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case 5:
                            if (!Float.isNaN(this.f16937t)) {
                                dVar.b(this.f16864a, this.f16937t, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case 6:
                            if (!Float.isNaN(this.f16932o)) {
                                dVar.b(this.f16864a, this.f16932o, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case 7:
                            if (!Float.isNaN(this.f16933p)) {
                                dVar.b(this.f16864a, this.f16933p, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case '\b':
                            if (!Float.isNaN(this.f16928k)) {
                                dVar.b(this.f16864a, this.f16928k, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case '\t':
                            if (!Float.isNaN(this.f16927j)) {
                                dVar.b(this.f16864a, this.f16927j, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case '\n':
                            if (!Float.isNaN(this.f16931n)) {
                                dVar.b(this.f16864a, this.f16931n, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        case 11:
                            if (!Float.isNaN(this.f16926i)) {
                                dVar.b(this.f16864a, this.f16926i, this.f16940w, this.f16938u, this.f16941x);
                                break;
                            } else {
                                break;
                            }
                        default:
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("UNKNOWN addValues \"");
                            sb2.append(next);
                            sb2.append("\"");
                            break;
                    }
                }
            }
        }
    }

    @Override // z.d
    public void a(HashMap<String, y.c> hashMap) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // z.d
    /* renamed from: b */
    public d clone() {
        return new j().c(this);
    }

    @Override // z.d
    public d c(d dVar) {
        super.c(dVar);
        j jVar = (j) dVar;
        this.f16924g = jVar.f16924g;
        this.f16925h = jVar.f16925h;
        this.f16938u = jVar.f16938u;
        this.f16940w = jVar.f16940w;
        this.f16941x = jVar.f16941x;
        this.f16937t = jVar.f16937t;
        this.f16926i = jVar.f16926i;
        this.f16927j = jVar.f16927j;
        this.f16928k = jVar.f16928k;
        this.f16931n = jVar.f16931n;
        this.f16929l = jVar.f16929l;
        this.f16930m = jVar.f16930m;
        this.f16932o = jVar.f16932o;
        this.f16933p = jVar.f16933p;
        this.f16934q = jVar.f16934q;
        this.f16935r = jVar.f16935r;
        this.f16936s = jVar.f16936s;
        return this;
    }

    @Override // z.d
    public void d(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f16926i)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f16927j)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f16928k)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f16929l)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f16930m)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f16934q)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f16935r)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f16936s)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f16931n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f16932o)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f16933p)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f16937t)) {
            hashSet.add("progress");
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
        a.a(this, context.obtainStyledAttributes(attributeSet, a0.d.T5));
    }

    @Override // z.d
    public void f(HashMap<String, Integer> hashMap) {
        if (this.f16925h == -1) {
            return;
        }
        if (!Float.isNaN(this.f16926i)) {
            hashMap.put("alpha", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16927j)) {
            hashMap.put("elevation", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16928k)) {
            hashMap.put("rotation", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16929l)) {
            hashMap.put("rotationX", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16930m)) {
            hashMap.put("rotationY", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16934q)) {
            hashMap.put("translationX", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16935r)) {
            hashMap.put("translationY", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16936s)) {
            hashMap.put("translationZ", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16931n)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16932o)) {
            hashMap.put("scaleX", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16932o)) {
            hashMap.put("scaleY", Integer.valueOf(this.f16925h));
        }
        if (!Float.isNaN(this.f16937t)) {
            hashMap.put("progress", Integer.valueOf(this.f16925h));
        }
        if (this.f16868e.size() > 0) {
            Iterator<String> it2 = this.f16868e.keySet().iterator();
            while (it2.hasNext()) {
                hashMap.put("CUSTOM," + it2.next(), Integer.valueOf(this.f16925h));
            }
        }
    }
}
