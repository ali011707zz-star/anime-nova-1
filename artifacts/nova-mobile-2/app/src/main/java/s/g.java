package s;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* compiled from: SimpleArrayMap.java */
/* loaded from: classes.dex */
public class g<K, V> {

    /* renamed from: i, reason: collision with root package name */
    public static Object[] f13593i;

    /* renamed from: j, reason: collision with root package name */
    public static int f13594j;

    /* renamed from: k, reason: collision with root package name */
    public static Object[] f13595k;

    /* renamed from: l, reason: collision with root package name */
    public static int f13596l;

    /* renamed from: f, reason: collision with root package name */
    public int[] f13597f;

    /* renamed from: g, reason: collision with root package name */
    public Object[] f13598g;

    /* renamed from: h, reason: collision with root package name */
    public int f13599h;

    public g() {
        this.f13597f = c.f13570a;
        this.f13598g = c.f13572c;
        this.f13599h = 0;
    }

    private void a(int i10) {
        if (i10 == 8) {
            synchronized (g.class) {
                Object[] objArr = f13595k;
                if (objArr != null) {
                    this.f13598g = objArr;
                    f13595k = (Object[]) objArr[0];
                    this.f13597f = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f13596l--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (g.class) {
                Object[] objArr2 = f13593i;
                if (objArr2 != null) {
                    this.f13598g = objArr2;
                    f13593i = (Object[]) objArr2[0];
                    this.f13597f = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f13594j--;
                    return;
                }
            }
        }
        this.f13597f = new int[i10];
        this.f13598g = new Object[i10 << 1];
    }

    public static int b(int[] iArr, int i10, int i11) {
        try {
            return c.a(iArr, i10, i11);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static void d(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (g.class) {
                if (f13596l < 10) {
                    objArr[0] = f13595k;
                    objArr[1] = iArr;
                    for (int i11 = (i10 << 1) - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    f13595k = objArr;
                    f13596l++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (g.class) {
                if (f13594j < 10) {
                    objArr[0] = f13593i;
                    objArr[1] = iArr;
                    for (int i12 = (i10 << 1) - 1; i12 >= 2; i12--) {
                        objArr[i12] = null;
                    }
                    f13593i = objArr;
                    f13594j++;
                }
            }
        }
    }

    public void c(int i10) {
        int i11 = this.f13599h;
        int[] iArr = this.f13597f;
        if (iArr.length < i10) {
            Object[] objArr = this.f13598g;
            a(i10);
            if (this.f13599h > 0) {
                System.arraycopy(iArr, 0, this.f13597f, 0, i11);
                System.arraycopy(objArr, 0, this.f13598g, 0, i11 << 1);
            }
            d(iArr, objArr, i11);
        }
        if (this.f13599h != i11) {
            throw new ConcurrentModificationException();
        }
    }

    public void clear() {
        int i10 = this.f13599h;
        if (i10 > 0) {
            int[] iArr = this.f13597f;
            Object[] objArr = this.f13598g;
            this.f13597f = c.f13570a;
            this.f13598g = c.f13572c;
            this.f13599h = 0;
            d(iArr, objArr, i10);
        }
        if (this.f13599h > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return f(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return h(obj) >= 0;
    }

    public int e(Object obj, int i10) {
        int i11 = this.f13599h;
        if (i11 == 0) {
            return -1;
        }
        int b10 = b(this.f13597f, i11, i10);
        if (b10 < 0 || obj.equals(this.f13598g[b10 << 1])) {
            return b10;
        }
        int i12 = b10 + 1;
        while (i12 < i11 && this.f13597f[i12] == i10) {
            if (obj.equals(this.f13598g[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = b10 - 1; i13 >= 0 && this.f13597f[i13] == i10; i13--) {
            if (obj.equals(this.f13598g[i13 << 1])) {
                return i13;
            }
        }
        return i12 ^ (-1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (size() != gVar.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.f13599h; i10++) {
                try {
                    K i11 = i(i10);
                    V m10 = m(i10);
                    Object obj2 = gVar.get(i11);
                    if (m10 == null) {
                        if (obj2 != null || !gVar.containsKey(i11)) {
                            return false;
                        }
                    } else if (!m10.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i12 = 0; i12 < this.f13599h; i12++) {
                try {
                    K i13 = i(i12);
                    V m11 = m(i12);
                    Object obj3 = map.get(i13);
                    if (m11 == null) {
                        if (obj3 != null || !map.containsKey(i13)) {
                            return false;
                        }
                    } else if (!m11.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public int f(Object obj) {
        return obj == null ? g() : e(obj, obj.hashCode());
    }

    public int g() {
        int i10 = this.f13599h;
        if (i10 == 0) {
            return -1;
        }
        int b10 = b(this.f13597f, i10, 0);
        if (b10 < 0 || this.f13598g[b10 << 1] == null) {
            return b10;
        }
        int i11 = b10 + 1;
        while (i11 < i10 && this.f13597f[i11] == 0) {
            if (this.f13598g[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = b10 - 1; i12 >= 0 && this.f13597f[i12] == 0; i12--) {
            if (this.f13598g[i12 << 1] == null) {
                return i12;
            }
        }
        return i11 ^ (-1);
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v10) {
        int f10 = f(obj);
        return f10 >= 0 ? (V) this.f13598g[(f10 << 1) + 1] : v10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h(Object obj) {
        int i10 = this.f13599h * 2;
        Object[] objArr = this.f13598g;
        if (obj == null) {
            for (int i11 = 1; i11 < i10; i11 += 2) {
                if (objArr[i11] == null) {
                    return i11 >> 1;
                }
            }
            return -1;
        }
        for (int i12 = 1; i12 < i10; i12 += 2) {
            if (obj.equals(objArr[i12])) {
                return i12 >> 1;
            }
        }
        return -1;
    }

    public int hashCode() {
        int[] iArr = this.f13597f;
        Object[] objArr = this.f13598g;
        int i10 = this.f13599h;
        int i11 = 1;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            Object obj = objArr[i11];
            i13 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i12];
            i12++;
            i11 += 2;
        }
        return i13;
    }

    public K i(int i10) {
        return (K) this.f13598g[i10 << 1];
    }

    public boolean isEmpty() {
        return this.f13599h <= 0;
    }

    public void j(g<? extends K, ? extends V> gVar) {
        int i10 = gVar.f13599h;
        c(this.f13599h + i10);
        if (this.f13599h != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                put(gVar.i(i11), gVar.m(i11));
            }
        } else if (i10 > 0) {
            System.arraycopy(gVar.f13597f, 0, this.f13597f, 0, i10);
            System.arraycopy(gVar.f13598g, 0, this.f13598g, 0, i10 << 1);
            this.f13599h = i10;
        }
    }

    public V k(int i10) {
        Object[] objArr = this.f13598g;
        int i11 = i10 << 1;
        V v10 = (V) objArr[i11 + 1];
        int i12 = this.f13599h;
        int i13 = 0;
        if (i12 <= 1) {
            d(this.f13597f, objArr, i12);
            this.f13597f = c.f13570a;
            this.f13598g = c.f13572c;
        } else {
            int i14 = i12 - 1;
            int[] iArr = this.f13597f;
            if (iArr.length > 8 && i12 < iArr.length / 3) {
                a(i12 > 8 ? i12 + (i12 >> 1) : 8);
                if (i12 != this.f13599h) {
                    throw new ConcurrentModificationException();
                }
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.f13597f, 0, i10);
                    System.arraycopy(objArr, 0, this.f13598g, 0, i11);
                }
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    int i16 = i14 - i10;
                    System.arraycopy(iArr, i15, this.f13597f, i10, i16);
                    System.arraycopy(objArr, i15 << 1, this.f13598g, i11, i16 << 1);
                }
            } else {
                if (i10 < i14) {
                    int i17 = i10 + 1;
                    int i18 = i14 - i10;
                    System.arraycopy(iArr, i17, iArr, i10, i18);
                    Object[] objArr2 = this.f13598g;
                    System.arraycopy(objArr2, i17 << 1, objArr2, i11, i18 << 1);
                }
                Object[] objArr3 = this.f13598g;
                int i19 = i14 << 1;
                objArr3[i19] = null;
                objArr3[i19 + 1] = null;
            }
            i13 = i14;
        }
        if (i12 == this.f13599h) {
            this.f13599h = i13;
            return v10;
        }
        throw new ConcurrentModificationException();
    }

    public V l(int i10, V v10) {
        int i11 = (i10 << 1) + 1;
        Object[] objArr = this.f13598g;
        V v11 = (V) objArr[i11];
        objArr[i11] = v10;
        return v11;
    }

    public V m(int i10) {
        return (V) this.f13598g[(i10 << 1) + 1];
    }

    public V put(K k10, V v10) {
        int i10;
        int e10;
        int i11 = this.f13599h;
        if (k10 == null) {
            e10 = g();
            i10 = 0;
        } else {
            int hashCode = k10.hashCode();
            i10 = hashCode;
            e10 = e(k10, hashCode);
        }
        if (e10 >= 0) {
            int i12 = (e10 << 1) + 1;
            Object[] objArr = this.f13598g;
            V v11 = (V) objArr[i12];
            objArr[i12] = v10;
            return v11;
        }
        int i13 = e10 ^ (-1);
        int[] iArr = this.f13597f;
        if (i11 >= iArr.length) {
            int i14 = 4;
            if (i11 >= 8) {
                i14 = (i11 >> 1) + i11;
            } else if (i11 >= 4) {
                i14 = 8;
            }
            Object[] objArr2 = this.f13598g;
            a(i14);
            if (i11 == this.f13599h) {
                int[] iArr2 = this.f13597f;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.f13598g, 0, objArr2.length);
                }
                d(iArr, objArr2, i11);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i13 < i11) {
            int[] iArr3 = this.f13597f;
            int i15 = i13 + 1;
            System.arraycopy(iArr3, i13, iArr3, i15, i11 - i13);
            Object[] objArr3 = this.f13598g;
            System.arraycopy(objArr3, i13 << 1, objArr3, i15 << 1, (this.f13599h - i13) << 1);
        }
        int i16 = this.f13599h;
        if (i11 == i16) {
            int[] iArr4 = this.f13597f;
            if (i13 < iArr4.length) {
                iArr4[i13] = i10;
                Object[] objArr4 = this.f13598g;
                int i17 = i13 << 1;
                objArr4[i17] = k10;
                objArr4[i17 + 1] = v10;
                this.f13599h = i16 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V putIfAbsent(K k10, V v10) {
        V v11 = get(k10);
        return v11 == null ? put(k10, v10) : v11;
    }

    public V remove(Object obj) {
        int f10 = f(obj);
        if (f10 >= 0) {
            return k(f10);
        }
        return null;
    }

    public V replace(K k10, V v10) {
        int f10 = f(k10);
        if (f10 >= 0) {
            return l(f10, v10);
        }
        return null;
    }

    public int size() {
        return this.f13599h;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f13599h * 28);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f13599h; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            K i11 = i(i10);
            if (i11 != this) {
                sb2.append(i11);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            V m10 = m(i10);
            if (m10 != this) {
                sb2.append(m10);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public boolean remove(Object obj, Object obj2) {
        int f10 = f(obj);
        if (f10 < 0) {
            return false;
        }
        V m10 = m(f10);
        if (obj2 != m10 && (obj2 == null || !obj2.equals(m10))) {
            return false;
        }
        k(f10);
        return true;
    }

    public boolean replace(K k10, V v10, V v11) {
        int f10 = f(k10);
        if (f10 < 0) {
            return false;
        }
        V m10 = m(f10);
        if (m10 != v10 && (v10 == null || !v10.equals(m10))) {
            return false;
        }
        l(f10, v11);
        return true;
    }

    public g(int i10) {
        if (i10 == 0) {
            this.f13597f = c.f13570a;
            this.f13598g = c.f13572c;
        } else {
            a(i10);
        }
        this.f13599h = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(g<K, V> gVar) {
        this();
        if (gVar != 0) {
            j(gVar);
        }
    }
}
