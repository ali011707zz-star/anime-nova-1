package o1;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: RoomSQLiteQuery.java */
/* loaded from: classes.dex */
public class s0 implements r1.j, r1.i {

    /* renamed from: n, reason: collision with root package name */
    public static final TreeMap<Integer, s0> f11605n = new TreeMap<>();

    /* renamed from: f, reason: collision with root package name */
    public volatile String f11606f;

    /* renamed from: g, reason: collision with root package name */
    public final long[] f11607g;

    /* renamed from: h, reason: collision with root package name */
    public final double[] f11608h;

    /* renamed from: i, reason: collision with root package name */
    public final String[] f11609i;

    /* renamed from: j, reason: collision with root package name */
    public final byte[][] f11610j;

    /* renamed from: k, reason: collision with root package name */
    public final int[] f11611k;

    /* renamed from: l, reason: collision with root package name */
    public final int f11612l;

    /* renamed from: m, reason: collision with root package name */
    public int f11613m;

    public s0(int i10) {
        this.f11612l = i10;
        int i11 = i10 + 1;
        this.f11611k = new int[i11];
        this.f11607g = new long[i11];
        this.f11608h = new double[i11];
        this.f11609i = new String[i11];
        this.f11610j = new byte[i11];
    }

    public static s0 h(String str, int i10) {
        TreeMap<Integer, s0> treeMap = f11605n;
        synchronized (treeMap) {
            Map.Entry<Integer, s0> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i10));
            if (ceilingEntry != null) {
                treeMap.remove(ceilingEntry.getKey());
                s0 value = ceilingEntry.getValue();
                value.k(str, i10);
                return value;
            }
            s0 s0Var = new s0(i10);
            s0Var.k(str, i10);
            return s0Var;
        }
    }

    public static void x() {
        TreeMap<Integer, s0> treeMap = f11605n;
        if (treeMap.size() <= 15) {
            return;
        }
        int size = treeMap.size() - 10;
        Iterator<Integer> it2 = treeMap.descendingKeySet().iterator();
        while (true) {
            int i10 = size - 1;
            if (size <= 0) {
                return;
            }
            it2.next();
            it2.remove();
            size = i10;
        }
    }

    @Override // r1.i
    public void H(int i10) {
        this.f11611k[i10] = 1;
    }

    @Override // r1.i
    public void J(int i10, double d10) {
        this.f11611k[i10] = 3;
        this.f11608h[i10] = d10;
    }

    @Override // r1.j
    public String b() {
        return this.f11606f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // r1.j
    public void d(r1.i iVar) {
        for (int i10 = 1; i10 <= this.f11613m; i10++) {
            int i11 = this.f11611k[i10];
            if (i11 == 1) {
                iVar.H(i10);
            } else if (i11 == 2) {
                iVar.f0(i10, this.f11607g[i10]);
            } else if (i11 == 3) {
                iVar.J(i10, this.f11608h[i10]);
            } else if (i11 == 4) {
                iVar.u(i10, this.f11609i[i10]);
            } else if (i11 == 5) {
                iVar.n0(i10, this.f11610j[i10]);
            }
        }
    }

    @Override // r1.i
    public void f0(int i10, long j10) {
        this.f11611k[i10] = 2;
        this.f11607g[i10] = j10;
    }

    public void k(String str, int i10) {
        this.f11606f = str;
        this.f11613m = i10;
    }

    @Override // r1.i
    public void n0(int i10, byte[] bArr) {
        this.f11611k[i10] = 5;
        this.f11610j[i10] = bArr;
    }

    public void release() {
        TreeMap<Integer, s0> treeMap = f11605n;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f11612l), this);
            x();
        }
    }

    @Override // r1.i
    public void u(int i10, String str) {
        this.f11611k[i10] = 4;
        this.f11609i[i10] = str;
    }
}
