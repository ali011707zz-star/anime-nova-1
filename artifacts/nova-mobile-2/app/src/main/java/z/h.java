package z;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import java.util.HashMap;

/* compiled from: KeyPosition.java */
/* loaded from: classes.dex */
public class h extends i {

    /* renamed from: h, reason: collision with root package name */
    public String f16910h = null;

    /* renamed from: i, reason: collision with root package name */
    public int f16911i = d.f16863f;

    /* renamed from: j, reason: collision with root package name */
    public int f16912j = 0;

    /* renamed from: k, reason: collision with root package name */
    public float f16913k = Float.NaN;

    /* renamed from: l, reason: collision with root package name */
    public float f16914l = Float.NaN;

    /* renamed from: m, reason: collision with root package name */
    public float f16915m = Float.NaN;

    /* renamed from: n, reason: collision with root package name */
    public float f16916n = Float.NaN;

    /* renamed from: o, reason: collision with root package name */
    public float f16917o = Float.NaN;

    /* renamed from: p, reason: collision with root package name */
    public float f16918p = Float.NaN;

    /* renamed from: q, reason: collision with root package name */
    public int f16919q = 0;

    /* renamed from: r, reason: collision with root package name */
    public float f16920r = Float.NaN;

    /* renamed from: s, reason: collision with root package name */
    public float f16921s = Float.NaN;

    /* compiled from: KeyPosition.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static SparseIntArray f16922a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f16922a = sparseIntArray;
            sparseIntArray.append(a0.d.L5, 1);
            f16922a.append(a0.d.J5, 2);
            f16922a.append(a0.d.S5, 3);
            f16922a.append(a0.d.H5, 4);
            f16922a.append(a0.d.I5, 5);
            f16922a.append(a0.d.P5, 6);
            f16922a.append(a0.d.Q5, 7);
            f16922a.append(a0.d.K5, 9);
            f16922a.append(a0.d.R5, 8);
            f16922a.append(a0.d.O5, 11);
            f16922a.append(a0.d.N5, 12);
            f16922a.append(a0.d.M5, 10);
        }

        public static void b(h hVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f16922a.get(index)) {
                    case 1:
                        if (p.f17015z0) {
                            int resourceId = typedArray.getResourceId(index, hVar.f16865b);
                            hVar.f16865b = resourceId;
                            if (resourceId == -1) {
                                hVar.f16866c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            hVar.f16866c = typedArray.getString(index);
                            break;
                        } else {
                            hVar.f16865b = typedArray.getResourceId(index, hVar.f16865b);
                            break;
                        }
                    case 2:
                        hVar.f16864a = typedArray.getInt(index, hVar.f16864a);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            hVar.f16910h = typedArray.getString(index);
                            break;
                        } else {
                            hVar.f16910h = u.c.f14201c[typedArray.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        hVar.f16923g = typedArray.getInteger(index, hVar.f16923g);
                        break;
                    case 5:
                        hVar.f16912j = typedArray.getInt(index, hVar.f16912j);
                        break;
                    case 6:
                        hVar.f16915m = typedArray.getFloat(index, hVar.f16915m);
                        break;
                    case 7:
                        hVar.f16916n = typedArray.getFloat(index, hVar.f16916n);
                        break;
                    case 8:
                        float f10 = typedArray.getFloat(index, hVar.f16914l);
                        hVar.f16913k = f10;
                        hVar.f16914l = f10;
                        break;
                    case 9:
                        hVar.f16919q = typedArray.getInt(index, hVar.f16919q);
                        break;
                    case 10:
                        hVar.f16911i = typedArray.getInt(index, hVar.f16911i);
                        break;
                    case 11:
                        hVar.f16913k = typedArray.getFloat(index, hVar.f16913k);
                        break;
                    case 12:
                        hVar.f16914l = typedArray.getFloat(index, hVar.f16914l);
                        break;
                    default:
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("unused attribute 0x");
                        sb2.append(Integer.toHexString(index));
                        sb2.append("   ");
                        sb2.append(f16922a.get(index));
                        break;
                }
            }
            int i11 = hVar.f16864a;
        }
    }

    public h() {
        this.f16867d = 2;
    }

    @Override // z.d
    public void a(HashMap<String, y.c> hashMap) {
    }

    @Override // z.d
    /* renamed from: b */
    public d clone() {
        return new h().c(this);
    }

    @Override // z.d
    public d c(d dVar) {
        super.c(dVar);
        h hVar = (h) dVar;
        this.f16910h = hVar.f16910h;
        this.f16911i = hVar.f16911i;
        this.f16912j = hVar.f16912j;
        this.f16913k = hVar.f16913k;
        this.f16914l = Float.NaN;
        this.f16915m = hVar.f16915m;
        this.f16916n = hVar.f16916n;
        this.f16917o = hVar.f16917o;
        this.f16918p = hVar.f16918p;
        this.f16920r = hVar.f16920r;
        this.f16921s = hVar.f16921s;
        return this;
    }

    @Override // z.d
    public void e(Context context, AttributeSet attributeSet) {
        a.b(this, context.obtainStyledAttributes(attributeSet, a0.d.G5));
    }
}
