package y8;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import y8.j;

/* compiled from: DataSet.java */
/* loaded from: classes.dex */
public abstract class i<T extends j> extends f<T> {

    /* renamed from: s, reason: collision with root package name */
    public List<T> f16766s;

    /* renamed from: t, reason: collision with root package name */
    public float f16767t;

    /* renamed from: u, reason: collision with root package name */
    public float f16768u;

    /* renamed from: v, reason: collision with root package name */
    public float f16769v;

    /* renamed from: w, reason: collision with root package name */
    public float f16770w;

    /* compiled from: DataSet.java */
    /* loaded from: classes.dex */
    public enum a {
        UP,
        DOWN,
        CLOSEST
    }

    public i(List<T> list, String str) {
        super(str);
        this.f16766s = null;
        this.f16767t = -3.4028235E38f;
        this.f16768u = Float.MAX_VALUE;
        this.f16769v = -3.4028235E38f;
        this.f16770w = Float.MAX_VALUE;
        this.f16766s = list;
        if (list == null) {
            this.f16766s = new ArrayList();
        }
        y0();
    }

    @Override // c9.d
    public T A(float f10, float f11) {
        return B(f10, f11, a.CLOSEST);
    }

    public void A0(T t10) {
        if (t10.i() < this.f16770w) {
            this.f16770w = t10.i();
        }
        if (t10.i() > this.f16769v) {
            this.f16769v = t10.i();
        }
    }

    @Override // c9.d
    public T B(float f10, float f11, a aVar) {
        int C0 = C0(f10, f11, aVar);
        if (C0 > -1) {
            return this.f16766s.get(C0);
        }
        return null;
    }

    public void B0(T t10) {
        if (t10.e() < this.f16768u) {
            this.f16768u = t10.e();
        }
        if (t10.e() > this.f16767t) {
            this.f16767t = t10.e();
        }
    }

    public int C0(float f10, float f11, a aVar) {
        int i10;
        T t10;
        List<T> list = this.f16766s;
        if (list == null || list.isEmpty()) {
            return -1;
        }
        int i11 = 0;
        int size = this.f16766s.size() - 1;
        while (i11 < size) {
            int i12 = (i11 + size) / 2;
            float i13 = this.f16766s.get(i12).i() - f10;
            int i14 = i12 + 1;
            float i15 = this.f16766s.get(i14).i() - f10;
            float abs = Math.abs(i13);
            float abs2 = Math.abs(i15);
            if (abs2 >= abs) {
                if (abs >= abs2) {
                    double d10 = i13;
                    if (d10 < ShadowDrawableWrapper.COS_45) {
                        if (d10 < ShadowDrawableWrapper.COS_45) {
                        }
                    }
                }
                size = i12;
            }
            i11 = i14;
        }
        if (size == -1) {
            return size;
        }
        float i16 = this.f16766s.get(size).i();
        if (aVar == a.UP) {
            if (i16 < f10 && size < this.f16766s.size() - 1) {
                size++;
            }
        } else if (aVar == a.DOWN && i16 > f10 && size > 0) {
            size--;
        }
        if (Float.isNaN(f11)) {
            return size;
        }
        while (size > 0 && this.f16766s.get(size - 1).i() == i16) {
            size--;
        }
        float e10 = this.f16766s.get(size).e();
        loop2: while (true) {
            i10 = size;
            do {
                size++;
                if (size >= this.f16766s.size()) {
                    break loop2;
                }
                t10 = this.f16766s.get(size);
                if (t10.i() != i16) {
                    break loop2;
                }
            } while (Math.abs(t10.e() - f11) >= Math.abs(e10 - f11));
            e10 = f11;
        }
        return i10;
    }

    @Override // c9.d
    public void D(float f10, float f11) {
        List<T> list = this.f16766s;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f16767t = -3.4028235E38f;
        this.f16768u = Float.MAX_VALUE;
        int C0 = C0(f11, Float.NaN, a.UP);
        for (int C02 = C0(f10, Float.NaN, a.DOWN); C02 <= C0; C02++) {
            B0(this.f16766s.get(C02));
        }
    }

    public String D0() {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DataSet, label: ");
        sb2.append(M() == null ? "" : M());
        sb2.append(", entries: ");
        sb2.append(this.f16766s.size());
        sb2.append("\n");
        stringBuffer.append(sb2.toString());
        return stringBuffer.toString();
    }

    @Override // c9.d
    public List<T> H(float f10) {
        ArrayList arrayList = new ArrayList();
        int size = this.f16766s.size() - 1;
        int i10 = 0;
        while (true) {
            if (i10 > size) {
                break;
            }
            int i11 = (size + i10) / 2;
            T t10 = this.f16766s.get(i11);
            if (f10 == t10.i()) {
                while (i11 > 0 && this.f16766s.get(i11 - 1).i() == f10) {
                    i11--;
                }
                int size2 = this.f16766s.size();
                while (i11 < size2) {
                    T t11 = this.f16766s.get(i11);
                    if (t11.i() != f10) {
                        break;
                    }
                    arrayList.add(t11);
                    i11++;
                }
            } else if (f10 > t10.i()) {
                i10 = i11 + 1;
            } else {
                size = i11 - 1;
            }
        }
        return arrayList;
    }

    @Override // c9.d
    public float O() {
        return this.f16769v;
    }

    @Override // c9.d
    public float Q() {
        return this.f16768u;
    }

    @Override // c9.d
    public int e0() {
        return this.f16766s.size();
    }

    @Override // c9.d
    public T l0(int i10) {
        return this.f16766s.get(i10);
    }

    @Override // c9.d
    public float o() {
        return this.f16770w;
    }

    @Override // c9.d
    public float q() {
        return this.f16767t;
    }

    @Override // c9.d
    public int s0(j jVar) {
        return this.f16766s.indexOf(jVar);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(D0());
        for (int i10 = 0; i10 < this.f16766s.size(); i10++) {
            stringBuffer.append(this.f16766s.get(i10).toString() + " ");
        }
        return stringBuffer.toString();
    }

    public void y0() {
        List<T> list = this.f16766s;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f16767t = -3.4028235E38f;
        this.f16768u = Float.MAX_VALUE;
        this.f16769v = -3.4028235E38f;
        this.f16770w = Float.MAX_VALUE;
        Iterator<T> it2 = this.f16766s.iterator();
        while (it2.hasNext()) {
            z0(it2.next());
        }
    }

    public abstract void z0(T t10);
}
