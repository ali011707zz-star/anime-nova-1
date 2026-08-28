package z;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import y.c;

/* compiled from: KeyAttributes.java */
/* loaded from: classes.dex */
public class e extends d {

    /* renamed from: g, reason: collision with root package name */
    public String f16869g;

    /* renamed from: h, reason: collision with root package name */
    public int f16870h = -1;

    /* renamed from: i, reason: collision with root package name */
    public boolean f16871i = false;

    /* renamed from: j, reason: collision with root package name */
    public float f16872j = Float.NaN;

    /* renamed from: k, reason: collision with root package name */
    public float f16873k = Float.NaN;

    /* renamed from: l, reason: collision with root package name */
    public float f16874l = Float.NaN;

    /* renamed from: m, reason: collision with root package name */
    public float f16875m = Float.NaN;

    /* renamed from: n, reason: collision with root package name */
    public float f16876n = Float.NaN;

    /* renamed from: o, reason: collision with root package name */
    public float f16877o = Float.NaN;

    /* renamed from: p, reason: collision with root package name */
    public float f16878p = Float.NaN;

    /* renamed from: q, reason: collision with root package name */
    public float f16879q = Float.NaN;

    /* renamed from: r, reason: collision with root package name */
    public float f16880r = Float.NaN;

    /* renamed from: s, reason: collision with root package name */
    public float f16881s = Float.NaN;

    /* renamed from: t, reason: collision with root package name */
    public float f16882t = Float.NaN;

    /* renamed from: u, reason: collision with root package name */
    public float f16883u = Float.NaN;

    /* renamed from: v, reason: collision with root package name */
    public float f16884v = Float.NaN;

    /* renamed from: w, reason: collision with root package name */
    public float f16885w = Float.NaN;

    /* compiled from: KeyAttributes.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static SparseIntArray f16886a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f16886a = sparseIntArray;
            sparseIntArray.append(a0.d.P4, 1);
            f16886a.append(a0.d.f32a5, 2);
            f16886a.append(a0.d.W4, 4);
            f16886a.append(a0.d.X4, 5);
            f16886a.append(a0.d.Y4, 6);
            f16886a.append(a0.d.Q4, 19);
            f16886a.append(a0.d.R4, 20);
            f16886a.append(a0.d.U4, 7);
            f16886a.append(a0.d.f102g5, 8);
            f16886a.append(a0.d.f91f5, 9);
            f16886a.append(a0.d.f80e5, 10);
            f16886a.append(a0.d.f56c5, 12);
            f16886a.append(a0.d.f44b5, 13);
            f16886a.append(a0.d.V4, 14);
            f16886a.append(a0.d.S4, 15);
            f16886a.append(a0.d.T4, 16);
            f16886a.append(a0.d.Z4, 17);
            f16886a.append(a0.d.f68d5, 18);
        }

        public static void a(e eVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f16886a.get(index)) {
                    case 1:
                        eVar.f16872j = typedArray.getFloat(index, eVar.f16872j);
                        break;
                    case 2:
                        eVar.f16873k = typedArray.getDimension(index, eVar.f16873k);
                        break;
                    case 3:
                    case 11:
                    default:
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("unused attribute 0x");
                        sb2.append(Integer.toHexString(index));
                        sb2.append("   ");
                        sb2.append(f16886a.get(index));
                        break;
                    case 4:
                        eVar.f16874l = typedArray.getFloat(index, eVar.f16874l);
                        break;
                    case 5:
                        eVar.f16875m = typedArray.getFloat(index, eVar.f16875m);
                        break;
                    case 6:
                        eVar.f16876n = typedArray.getFloat(index, eVar.f16876n);
                        break;
                    case 7:
                        eVar.f16880r = typedArray.getFloat(index, eVar.f16880r);
                        break;
                    case 8:
                        eVar.f16879q = typedArray.getFloat(index, eVar.f16879q);
                        break;
                    case 9:
                        eVar.f16869g = typedArray.getString(index);
                        break;
                    case 10:
                        if (p.f17015z0) {
                            int resourceId = typedArray.getResourceId(index, eVar.f16865b);
                            eVar.f16865b = resourceId;
                            if (resourceId == -1) {
                                eVar.f16866c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            eVar.f16866c = typedArray.getString(index);
                            break;
                        } else {
                            eVar.f16865b = typedArray.getResourceId(index, eVar.f16865b);
                            break;
                        }
                    case 12:
                        eVar.f16864a = typedArray.getInt(index, eVar.f16864a);
                        break;
                    case 13:
                        eVar.f16870h = typedArray.getInteger(index, eVar.f16870h);
                        break;
                    case 14:
                        eVar.f16881s = typedArray.getFloat(index, eVar.f16881s);
                        break;
                    case 15:
                        eVar.f16882t = typedArray.getDimension(index, eVar.f16882t);
                        break;
                    case 16:
                        eVar.f16883u = typedArray.getDimension(index, eVar.f16883u);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            eVar.f16884v = typedArray.getDimension(index, eVar.f16884v);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        eVar.f16885w = typedArray.getFloat(index, eVar.f16885w);
                        break;
                    case 19:
                        eVar.f16877o = typedArray.getDimension(index, eVar.f16877o);
                        break;
                    case 20:
                        eVar.f16878p = typedArray.getDimension(index, eVar.f16878p);
                        break;
                }
            }
        }
    }

    public e() {
        this.f16867d = 1;
        this.f16868e = new HashMap<>();
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x009a, code lost:
    
        if (r1.equals("scaleY") == false) goto L15;
     */
    @Override // z.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(HashMap<String, y.c> hashMap) {
        Iterator<String> it2 = hashMap.keySet().iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            y.c cVar = hashMap.get(next);
            if (cVar != null) {
                char c10 = 7;
                if (next.startsWith("CUSTOM")) {
                    androidx.constraintlayout.widget.a aVar = this.f16868e.get(next.substring(7));
                    if (aVar != null) {
                        ((c.b) cVar).h(this.f16864a, aVar);
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
                        case -760884510:
                            if (next.equals("transformPivotX")) {
                                c10 = '\b';
                                break;
                            }
                            break;
                        case -760884509:
                            if (next.equals("transformPivotY")) {
                                c10 = '\t';
                                break;
                            }
                            break;
                        case -40300674:
                            if (next.equals("rotation")) {
                                c10 = '\n';
                                break;
                            }
                            break;
                        case -4379043:
                            if (next.equals("elevation")) {
                                c10 = 11;
                                break;
                            }
                            break;
                        case 37232917:
                            if (next.equals("transitionPathRotate")) {
                                c10 = '\f';
                                break;
                            }
                            break;
                        case 92909918:
                            if (next.equals("alpha")) {
                                c10 = '\r';
                                break;
                            }
                            break;
                    }
                    c10 = 65535;
                    switch (c10) {
                        case 0:
                            if (!Float.isNaN(this.f16875m)) {
                                cVar.b(this.f16864a, this.f16875m);
                                break;
                            } else {
                                break;
                            }
                        case 1:
                            if (!Float.isNaN(this.f16876n)) {
                                cVar.b(this.f16864a, this.f16876n);
                                break;
                            } else {
                                break;
                            }
                        case 2:
                            if (!Float.isNaN(this.f16882t)) {
                                cVar.b(this.f16864a, this.f16882t);
                                break;
                            } else {
                                break;
                            }
                        case 3:
                            if (!Float.isNaN(this.f16883u)) {
                                cVar.b(this.f16864a, this.f16883u);
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            if (!Float.isNaN(this.f16884v)) {
                                cVar.b(this.f16864a, this.f16884v);
                                break;
                            } else {
                                break;
                            }
                        case 5:
                            if (!Float.isNaN(this.f16885w)) {
                                cVar.b(this.f16864a, this.f16885w);
                                break;
                            } else {
                                break;
                            }
                        case 6:
                            if (!Float.isNaN(this.f16880r)) {
                                cVar.b(this.f16864a, this.f16880r);
                                break;
                            } else {
                                break;
                            }
                        case 7:
                            if (!Float.isNaN(this.f16881s)) {
                                cVar.b(this.f16864a, this.f16881s);
                                break;
                            } else {
                                break;
                            }
                        case '\b':
                            if (!Float.isNaN(this.f16875m)) {
                                cVar.b(this.f16864a, this.f16877o);
                                break;
                            } else {
                                break;
                            }
                        case '\t':
                            if (!Float.isNaN(this.f16876n)) {
                                cVar.b(this.f16864a, this.f16878p);
                                break;
                            } else {
                                break;
                            }
                        case '\n':
                            if (!Float.isNaN(this.f16874l)) {
                                cVar.b(this.f16864a, this.f16874l);
                                break;
                            } else {
                                break;
                            }
                        case 11:
                            if (!Float.isNaN(this.f16873k)) {
                                cVar.b(this.f16864a, this.f16873k);
                                break;
                            } else {
                                break;
                            }
                        case '\f':
                            if (!Float.isNaN(this.f16879q)) {
                                cVar.b(this.f16864a, this.f16879q);
                                break;
                            } else {
                                break;
                            }
                        case '\r':
                            if (!Float.isNaN(this.f16872j)) {
                                cVar.b(this.f16864a, this.f16872j);
                                break;
                            } else {
                                break;
                            }
                    }
                }
            }
        }
    }

    @Override // z.d
    /* renamed from: b */
    public d clone() {
        return new e().c(this);
    }

    @Override // z.d
    public d c(d dVar) {
        super.c(dVar);
        e eVar = (e) dVar;
        this.f16870h = eVar.f16870h;
        this.f16871i = eVar.f16871i;
        this.f16872j = eVar.f16872j;
        this.f16873k = eVar.f16873k;
        this.f16874l = eVar.f16874l;
        this.f16875m = eVar.f16875m;
        this.f16876n = eVar.f16876n;
        this.f16877o = eVar.f16877o;
        this.f16878p = eVar.f16878p;
        this.f16879q = eVar.f16879q;
        this.f16880r = eVar.f16880r;
        this.f16881s = eVar.f16881s;
        this.f16882t = eVar.f16882t;
        this.f16883u = eVar.f16883u;
        this.f16884v = eVar.f16884v;
        this.f16885w = eVar.f16885w;
        return this;
    }

    @Override // z.d
    public void d(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f16872j)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f16873k)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f16874l)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f16875m)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f16876n)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f16877o)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.f16878p)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.f16882t)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f16883u)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f16884v)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f16879q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f16880r)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f16881s)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f16885w)) {
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
        a.a(this, context.obtainStyledAttributes(attributeSet, a0.d.O4));
    }

    @Override // z.d
    public void f(HashMap<String, Integer> hashMap) {
        if (this.f16870h == -1) {
            return;
        }
        if (!Float.isNaN(this.f16872j)) {
            hashMap.put("alpha", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16873k)) {
            hashMap.put("elevation", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16874l)) {
            hashMap.put("rotation", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16875m)) {
            hashMap.put("rotationX", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16876n)) {
            hashMap.put("rotationY", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16877o)) {
            hashMap.put("transformPivotX", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16878p)) {
            hashMap.put("transformPivotY", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16882t)) {
            hashMap.put("translationX", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16883u)) {
            hashMap.put("translationY", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16884v)) {
            hashMap.put("translationZ", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16879q)) {
            hashMap.put("transitionPathRotate", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16880r)) {
            hashMap.put("scaleX", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16881s)) {
            hashMap.put("scaleY", Integer.valueOf(this.f16870h));
        }
        if (!Float.isNaN(this.f16885w)) {
            hashMap.put("progress", Integer.valueOf(this.f16870h));
        }
        if (this.f16868e.size() > 0) {
            Iterator<String> it2 = this.f16868e.keySet().iterator();
            while (it2.hasNext()) {
                hashMap.put("CUSTOM," + it2.next(), Integer.valueOf(this.f16870h));
            }
        }
    }
}
