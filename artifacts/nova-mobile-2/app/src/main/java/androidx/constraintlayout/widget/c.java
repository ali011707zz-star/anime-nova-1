package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.d;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import z.p;

/* compiled from: ConstraintSet.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f1693h = {0, 4, 8};

    /* renamed from: i, reason: collision with root package name */
    public static SparseIntArray f1694i = new SparseIntArray();

    /* renamed from: j, reason: collision with root package name */
    public static SparseIntArray f1695j = new SparseIntArray();

    /* renamed from: a, reason: collision with root package name */
    public boolean f1696a;

    /* renamed from: b, reason: collision with root package name */
    public String f1697b;

    /* renamed from: c, reason: collision with root package name */
    public String f1698c = "";

    /* renamed from: d, reason: collision with root package name */
    public int f1699d = 0;

    /* renamed from: e, reason: collision with root package name */
    public HashMap<String, androidx.constraintlayout.widget.a> f1700e = new HashMap<>();

    /* renamed from: f, reason: collision with root package name */
    public boolean f1701f = true;

    /* renamed from: g, reason: collision with root package name */
    public HashMap<Integer, a> f1702g = new HashMap<>();

    /* compiled from: ConstraintSet.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public int f1703a;

        /* renamed from: b, reason: collision with root package name */
        public String f1704b;

        /* renamed from: c, reason: collision with root package name */
        public final d f1705c = new d();

        /* renamed from: d, reason: collision with root package name */
        public final C0033c f1706d = new C0033c();

        /* renamed from: e, reason: collision with root package name */
        public final b f1707e = new b();

        /* renamed from: f, reason: collision with root package name */
        public final e f1708f = new e();

        /* renamed from: g, reason: collision with root package name */
        public HashMap<String, androidx.constraintlayout.widget.a> f1709g = new HashMap<>();

        /* renamed from: h, reason: collision with root package name */
        public C0032a f1710h;

        /* compiled from: ConstraintSet.java */
        /* renamed from: androidx.constraintlayout.widget.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0032a {

            /* renamed from: a, reason: collision with root package name */
            public int[] f1711a = new int[10];

            /* renamed from: b, reason: collision with root package name */
            public int[] f1712b = new int[10];

            /* renamed from: c, reason: collision with root package name */
            public int f1713c = 0;

            /* renamed from: d, reason: collision with root package name */
            public int[] f1714d = new int[10];

            /* renamed from: e, reason: collision with root package name */
            public float[] f1715e = new float[10];

            /* renamed from: f, reason: collision with root package name */
            public int f1716f = 0;

            /* renamed from: g, reason: collision with root package name */
            public int[] f1717g = new int[5];

            /* renamed from: h, reason: collision with root package name */
            public String[] f1718h = new String[5];

            /* renamed from: i, reason: collision with root package name */
            public int f1719i = 0;

            /* renamed from: j, reason: collision with root package name */
            public int[] f1720j = new int[4];

            /* renamed from: k, reason: collision with root package name */
            public boolean[] f1721k = new boolean[4];

            /* renamed from: l, reason: collision with root package name */
            public int f1722l = 0;

            public void a(int i10, float f10) {
                int i11 = this.f1716f;
                int[] iArr = this.f1714d;
                if (i11 >= iArr.length) {
                    this.f1714d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f1715e;
                    this.f1715e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.f1714d;
                int i12 = this.f1716f;
                iArr2[i12] = i10;
                float[] fArr2 = this.f1715e;
                this.f1716f = i12 + 1;
                fArr2[i12] = f10;
            }

            public void b(int i10, int i11) {
                int i12 = this.f1713c;
                int[] iArr = this.f1711a;
                if (i12 >= iArr.length) {
                    this.f1711a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.f1712b;
                    this.f1712b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f1711a;
                int i13 = this.f1713c;
                iArr3[i13] = i10;
                int[] iArr4 = this.f1712b;
                this.f1713c = i13 + 1;
                iArr4[i13] = i11;
            }

            public void c(int i10, String str) {
                int i11 = this.f1719i;
                int[] iArr = this.f1717g;
                if (i11 >= iArr.length) {
                    this.f1717g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f1718h;
                    this.f1718h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.f1717g;
                int i12 = this.f1719i;
                iArr2[i12] = i10;
                String[] strArr2 = this.f1718h;
                this.f1719i = i12 + 1;
                strArr2[i12] = str;
            }

            public void d(int i10, boolean z10) {
                int i11 = this.f1722l;
                int[] iArr = this.f1720j;
                if (i11 >= iArr.length) {
                    this.f1720j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.f1721k;
                    this.f1721k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.f1720j;
                int i12 = this.f1722l;
                iArr2[i12] = i10;
                boolean[] zArr2 = this.f1721k;
                this.f1722l = i12 + 1;
                zArr2[i12] = z10;
            }

            public void e(a aVar) {
                for (int i10 = 0; i10 < this.f1713c; i10++) {
                    c.G(aVar, this.f1711a[i10], this.f1712b[i10]);
                }
                for (int i11 = 0; i11 < this.f1716f; i11++) {
                    c.F(aVar, this.f1714d[i11], this.f1715e[i11]);
                }
                for (int i12 = 0; i12 < this.f1719i; i12++) {
                    c.H(aVar, this.f1717g[i12], this.f1718h[i12]);
                }
                for (int i13 = 0; i13 < this.f1722l; i13++) {
                    c.I(aVar, this.f1720j[i13], this.f1721k[i13]);
                }
            }
        }

        public void d(a aVar) {
            C0032a c0032a = this.f1710h;
            if (c0032a != null) {
                c0032a.e(aVar);
            }
        }

        public void e(ConstraintLayout.b bVar) {
            b bVar2 = this.f1707e;
            bVar.f1615d = bVar2.f1740i;
            bVar.f1617e = bVar2.f1742j;
            bVar.f1619f = bVar2.f1744k;
            bVar.f1621g = bVar2.f1746l;
            bVar.f1623h = bVar2.f1748m;
            bVar.f1625i = bVar2.f1750n;
            bVar.f1627j = bVar2.f1752o;
            bVar.f1629k = bVar2.f1754p;
            bVar.f1631l = bVar2.f1756q;
            bVar.f1633m = bVar2.f1757r;
            bVar.f1635n = bVar2.f1758s;
            bVar.f1643r = bVar2.f1759t;
            bVar.f1645s = bVar2.f1760u;
            bVar.f1647t = bVar2.f1761v;
            bVar.f1649u = bVar2.f1762w;
            ((ViewGroup.MarginLayoutParams) bVar).leftMargin = bVar2.G;
            ((ViewGroup.MarginLayoutParams) bVar).rightMargin = bVar2.H;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = bVar2.I;
            ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = bVar2.J;
            bVar.f1656z = bVar2.S;
            bVar.A = bVar2.R;
            bVar.f1653w = bVar2.O;
            bVar.f1655y = bVar2.Q;
            bVar.F = bVar2.f1763x;
            bVar.G = bVar2.f1764y;
            bVar.f1637o = bVar2.A;
            bVar.f1639p = bVar2.B;
            bVar.f1641q = bVar2.C;
            bVar.H = bVar2.f1765z;
            bVar.W = bVar2.D;
            bVar.X = bVar2.E;
            bVar.L = bVar2.U;
            bVar.K = bVar2.V;
            bVar.N = bVar2.X;
            bVar.M = bVar2.W;
            bVar.Z = bVar2.f1749m0;
            bVar.f1610a0 = bVar2.f1751n0;
            bVar.O = bVar2.Y;
            bVar.P = bVar2.Z;
            bVar.S = bVar2.f1725a0;
            bVar.T = bVar2.f1727b0;
            bVar.Q = bVar2.f1729c0;
            bVar.R = bVar2.f1731d0;
            bVar.U = bVar2.f1733e0;
            bVar.V = bVar2.f1735f0;
            bVar.Y = bVar2.F;
            bVar.f1613c = bVar2.f1738h;
            bVar.f1609a = bVar2.f1734f;
            bVar.f1611b = bVar2.f1736g;
            ((ViewGroup.MarginLayoutParams) bVar).width = bVar2.f1730d;
            ((ViewGroup.MarginLayoutParams) bVar).height = bVar2.f1732e;
            String str = bVar2.f1747l0;
            if (str != null) {
                bVar.f1612b0 = str;
            }
            bVar.f1614c0 = bVar2.f1755p0;
            if (Build.VERSION.SDK_INT >= 17) {
                bVar.setMarginStart(bVar2.L);
                bVar.setMarginEnd(this.f1707e.K);
            }
            bVar.b();
        }

        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public a clone() {
            a aVar = new a();
            aVar.f1707e.a(this.f1707e);
            aVar.f1706d.a(this.f1706d);
            aVar.f1705c.a(this.f1705c);
            aVar.f1708f.a(this.f1708f);
            aVar.f1703a = this.f1703a;
            aVar.f1710h = this.f1710h;
            return aVar;
        }

        public final void g(int i10, ConstraintLayout.b bVar) {
            this.f1703a = i10;
            b bVar2 = this.f1707e;
            bVar2.f1740i = bVar.f1615d;
            bVar2.f1742j = bVar.f1617e;
            bVar2.f1744k = bVar.f1619f;
            bVar2.f1746l = bVar.f1621g;
            bVar2.f1748m = bVar.f1623h;
            bVar2.f1750n = bVar.f1625i;
            bVar2.f1752o = bVar.f1627j;
            bVar2.f1754p = bVar.f1629k;
            bVar2.f1756q = bVar.f1631l;
            bVar2.f1757r = bVar.f1633m;
            bVar2.f1758s = bVar.f1635n;
            bVar2.f1759t = bVar.f1643r;
            bVar2.f1760u = bVar.f1645s;
            bVar2.f1761v = bVar.f1647t;
            bVar2.f1762w = bVar.f1649u;
            bVar2.f1763x = bVar.F;
            bVar2.f1764y = bVar.G;
            bVar2.f1765z = bVar.H;
            bVar2.A = bVar.f1637o;
            bVar2.B = bVar.f1639p;
            bVar2.C = bVar.f1641q;
            bVar2.D = bVar.W;
            bVar2.E = bVar.X;
            bVar2.F = bVar.Y;
            bVar2.f1738h = bVar.f1613c;
            bVar2.f1734f = bVar.f1609a;
            bVar2.f1736g = bVar.f1611b;
            bVar2.f1730d = ((ViewGroup.MarginLayoutParams) bVar).width;
            bVar2.f1732e = ((ViewGroup.MarginLayoutParams) bVar).height;
            bVar2.G = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
            bVar2.H = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
            bVar2.I = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
            bVar2.J = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
            bVar2.M = bVar.C;
            bVar2.U = bVar.L;
            bVar2.V = bVar.K;
            bVar2.X = bVar.N;
            bVar2.W = bVar.M;
            bVar2.f1749m0 = bVar.Z;
            bVar2.f1751n0 = bVar.f1610a0;
            bVar2.Y = bVar.O;
            bVar2.Z = bVar.P;
            bVar2.f1725a0 = bVar.S;
            bVar2.f1727b0 = bVar.T;
            bVar2.f1729c0 = bVar.Q;
            bVar2.f1731d0 = bVar.R;
            bVar2.f1733e0 = bVar.U;
            bVar2.f1735f0 = bVar.V;
            bVar2.f1747l0 = bVar.f1612b0;
            bVar2.O = bVar.f1653w;
            bVar2.Q = bVar.f1655y;
            bVar2.N = bVar.f1651v;
            bVar2.P = bVar.f1654x;
            bVar2.S = bVar.f1656z;
            bVar2.R = bVar.A;
            bVar2.T = bVar.B;
            bVar2.f1755p0 = bVar.f1614c0;
            if (Build.VERSION.SDK_INT >= 17) {
                bVar2.K = bVar.getMarginEnd();
                this.f1707e.L = bVar.getMarginStart();
            }
        }

        public final void h(int i10, d.a aVar) {
            g(i10, aVar);
            this.f1705c.f1784d = aVar.f1802w0;
            e eVar = this.f1708f;
            eVar.f1788b = aVar.f1805z0;
            eVar.f1789c = aVar.A0;
            eVar.f1790d = aVar.B0;
            eVar.f1791e = aVar.C0;
            eVar.f1792f = aVar.D0;
            eVar.f1793g = aVar.E0;
            eVar.f1794h = aVar.F0;
            eVar.f1796j = aVar.G0;
            eVar.f1797k = aVar.H0;
            eVar.f1798l = aVar.I0;
            eVar.f1800n = aVar.f1804y0;
            eVar.f1799m = aVar.f1803x0;
        }

        public final void i(androidx.constraintlayout.widget.b bVar, int i10, d.a aVar) {
            h(i10, aVar);
            if (bVar instanceof Barrier) {
                b bVar2 = this.f1707e;
                bVar2.f1741i0 = 1;
                Barrier barrier = (Barrier) bVar;
                bVar2.f1737g0 = barrier.getType();
                this.f1707e.f1743j0 = barrier.getReferencedIds();
                this.f1707e.f1739h0 = barrier.getMargin();
            }
        }
    }

    /* compiled from: ConstraintSet.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: q0, reason: collision with root package name */
        public static SparseIntArray f1723q0;

        /* renamed from: d, reason: collision with root package name */
        public int f1730d;

        /* renamed from: e, reason: collision with root package name */
        public int f1732e;

        /* renamed from: j0, reason: collision with root package name */
        public int[] f1743j0;

        /* renamed from: k0, reason: collision with root package name */
        public String f1745k0;

        /* renamed from: l0, reason: collision with root package name */
        public String f1747l0;

        /* renamed from: a, reason: collision with root package name */
        public boolean f1724a = false;

        /* renamed from: b, reason: collision with root package name */
        public boolean f1726b = false;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1728c = false;

        /* renamed from: f, reason: collision with root package name */
        public int f1734f = -1;

        /* renamed from: g, reason: collision with root package name */
        public int f1736g = -1;

        /* renamed from: h, reason: collision with root package name */
        public float f1738h = -1.0f;

        /* renamed from: i, reason: collision with root package name */
        public int f1740i = -1;

        /* renamed from: j, reason: collision with root package name */
        public int f1742j = -1;

        /* renamed from: k, reason: collision with root package name */
        public int f1744k = -1;

        /* renamed from: l, reason: collision with root package name */
        public int f1746l = -1;

        /* renamed from: m, reason: collision with root package name */
        public int f1748m = -1;

        /* renamed from: n, reason: collision with root package name */
        public int f1750n = -1;

        /* renamed from: o, reason: collision with root package name */
        public int f1752o = -1;

        /* renamed from: p, reason: collision with root package name */
        public int f1754p = -1;

        /* renamed from: q, reason: collision with root package name */
        public int f1756q = -1;

        /* renamed from: r, reason: collision with root package name */
        public int f1757r = -1;

        /* renamed from: s, reason: collision with root package name */
        public int f1758s = -1;

        /* renamed from: t, reason: collision with root package name */
        public int f1759t = -1;

        /* renamed from: u, reason: collision with root package name */
        public int f1760u = -1;

        /* renamed from: v, reason: collision with root package name */
        public int f1761v = -1;

        /* renamed from: w, reason: collision with root package name */
        public int f1762w = -1;

        /* renamed from: x, reason: collision with root package name */
        public float f1763x = 0.5f;

        /* renamed from: y, reason: collision with root package name */
        public float f1764y = 0.5f;

        /* renamed from: z, reason: collision with root package name */
        public String f1765z = null;
        public int A = -1;
        public int B = 0;
        public float C = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        public int D = -1;
        public int E = -1;
        public int F = -1;
        public int G = 0;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = 0;
        public int N = Integer.MIN_VALUE;
        public int O = Integer.MIN_VALUE;
        public int P = Integer.MIN_VALUE;
        public int Q = Integer.MIN_VALUE;
        public int R = Integer.MIN_VALUE;
        public int S = Integer.MIN_VALUE;
        public int T = Integer.MIN_VALUE;
        public float U = -1.0f;
        public float V = -1.0f;
        public int W = 0;
        public int X = 0;
        public int Y = 0;
        public int Z = 0;

        /* renamed from: a0, reason: collision with root package name */
        public int f1725a0 = -1;

        /* renamed from: b0, reason: collision with root package name */
        public int f1727b0 = -1;

        /* renamed from: c0, reason: collision with root package name */
        public int f1729c0 = -1;

        /* renamed from: d0, reason: collision with root package name */
        public int f1731d0 = -1;

        /* renamed from: e0, reason: collision with root package name */
        public float f1733e0 = 1.0f;

        /* renamed from: f0, reason: collision with root package name */
        public float f1735f0 = 1.0f;

        /* renamed from: g0, reason: collision with root package name */
        public int f1737g0 = -1;

        /* renamed from: h0, reason: collision with root package name */
        public int f1739h0 = 0;

        /* renamed from: i0, reason: collision with root package name */
        public int f1741i0 = -1;

        /* renamed from: m0, reason: collision with root package name */
        public boolean f1749m0 = false;

        /* renamed from: n0, reason: collision with root package name */
        public boolean f1751n0 = false;

        /* renamed from: o0, reason: collision with root package name */
        public boolean f1753o0 = true;

        /* renamed from: p0, reason: collision with root package name */
        public int f1755p0 = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1723q0 = sparseIntArray;
            sparseIntArray.append(a0.d.f170m7, 24);
            f1723q0.append(a0.d.f181n7, 25);
            f1723q0.append(a0.d.f203p7, 28);
            f1723q0.append(a0.d.f214q7, 29);
            f1723q0.append(a0.d.f269v7, 35);
            f1723q0.append(a0.d.f258u7, 34);
            f1723q0.append(a0.d.W6, 4);
            f1723q0.append(a0.d.V6, 3);
            f1723q0.append(a0.d.T6, 1);
            f1723q0.append(a0.d.B7, 6);
            f1723q0.append(a0.d.C7, 7);
            f1723q0.append(a0.d.f70d7, 17);
            f1723q0.append(a0.d.f82e7, 18);
            f1723q0.append(a0.d.f93f7, 19);
            f1723q0.append(a0.d.C6, 26);
            f1723q0.append(a0.d.f225r7, 31);
            f1723q0.append(a0.d.f236s7, 32);
            f1723q0.append(a0.d.f58c7, 10);
            f1723q0.append(a0.d.f46b7, 9);
            f1723q0.append(a0.d.F7, 13);
            f1723q0.append(a0.d.I7, 16);
            f1723q0.append(a0.d.G7, 14);
            f1723q0.append(a0.d.D7, 11);
            f1723q0.append(a0.d.H7, 15);
            f1723q0.append(a0.d.E7, 12);
            f1723q0.append(a0.d.f302y7, 38);
            f1723q0.append(a0.d.f148k7, 37);
            f1723q0.append(a0.d.f137j7, 39);
            f1723q0.append(a0.d.f291x7, 40);
            f1723q0.append(a0.d.f126i7, 20);
            f1723q0.append(a0.d.f280w7, 36);
            f1723q0.append(a0.d.f34a7, 5);
            f1723q0.append(a0.d.f159l7, 76);
            f1723q0.append(a0.d.f247t7, 76);
            f1723q0.append(a0.d.f192o7, 76);
            f1723q0.append(a0.d.U6, 76);
            f1723q0.append(a0.d.S6, 76);
            f1723q0.append(a0.d.F6, 23);
            f1723q0.append(a0.d.H6, 27);
            f1723q0.append(a0.d.J6, 30);
            f1723q0.append(a0.d.K6, 8);
            f1723q0.append(a0.d.G6, 33);
            f1723q0.append(a0.d.I6, 2);
            f1723q0.append(a0.d.D6, 22);
            f1723q0.append(a0.d.E6, 21);
            f1723q0.append(a0.d.f313z7, 41);
            f1723q0.append(a0.d.f104g7, 42);
            f1723q0.append(a0.d.R6, 41);
            f1723q0.append(a0.d.Q6, 42);
            f1723q0.append(a0.d.J7, 97);
            f1723q0.append(a0.d.X6, 61);
            f1723q0.append(a0.d.Z6, 62);
            f1723q0.append(a0.d.Y6, 63);
            f1723q0.append(a0.d.A7, 69);
            f1723q0.append(a0.d.f115h7, 70);
            f1723q0.append(a0.d.O6, 71);
            f1723q0.append(a0.d.M6, 72);
            f1723q0.append(a0.d.N6, 73);
            f1723q0.append(a0.d.P6, 74);
            f1723q0.append(a0.d.L6, 75);
        }

        public void a(b bVar) {
            this.f1724a = bVar.f1724a;
            this.f1730d = bVar.f1730d;
            this.f1726b = bVar.f1726b;
            this.f1732e = bVar.f1732e;
            this.f1734f = bVar.f1734f;
            this.f1736g = bVar.f1736g;
            this.f1738h = bVar.f1738h;
            this.f1740i = bVar.f1740i;
            this.f1742j = bVar.f1742j;
            this.f1744k = bVar.f1744k;
            this.f1746l = bVar.f1746l;
            this.f1748m = bVar.f1748m;
            this.f1750n = bVar.f1750n;
            this.f1752o = bVar.f1752o;
            this.f1754p = bVar.f1754p;
            this.f1756q = bVar.f1756q;
            this.f1757r = bVar.f1757r;
            this.f1758s = bVar.f1758s;
            this.f1759t = bVar.f1759t;
            this.f1760u = bVar.f1760u;
            this.f1761v = bVar.f1761v;
            this.f1762w = bVar.f1762w;
            this.f1763x = bVar.f1763x;
            this.f1764y = bVar.f1764y;
            this.f1765z = bVar.f1765z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            this.H = bVar.H;
            this.I = bVar.I;
            this.J = bVar.J;
            this.K = bVar.K;
            this.L = bVar.L;
            this.M = bVar.M;
            this.N = bVar.N;
            this.O = bVar.O;
            this.P = bVar.P;
            this.Q = bVar.Q;
            this.R = bVar.R;
            this.S = bVar.S;
            this.T = bVar.T;
            this.U = bVar.U;
            this.V = bVar.V;
            this.W = bVar.W;
            this.X = bVar.X;
            this.Y = bVar.Y;
            this.Z = bVar.Z;
            this.f1725a0 = bVar.f1725a0;
            this.f1727b0 = bVar.f1727b0;
            this.f1729c0 = bVar.f1729c0;
            this.f1731d0 = bVar.f1731d0;
            this.f1733e0 = bVar.f1733e0;
            this.f1735f0 = bVar.f1735f0;
            this.f1737g0 = bVar.f1737g0;
            this.f1739h0 = bVar.f1739h0;
            this.f1741i0 = bVar.f1741i0;
            this.f1747l0 = bVar.f1747l0;
            int[] iArr = bVar.f1743j0;
            if (iArr != null && bVar.f1745k0 == null) {
                this.f1743j0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f1743j0 = null;
            }
            this.f1745k0 = bVar.f1745k0;
            this.f1749m0 = bVar.f1749m0;
            this.f1751n0 = bVar.f1751n0;
            this.f1753o0 = bVar.f1753o0;
            this.f1755p0 = bVar.f1755p0;
        }

        public void b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.d.B6);
            this.f1726b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                int i11 = f1723q0.get(index);
                if (i11 == 80) {
                    this.f1749m0 = obtainStyledAttributes.getBoolean(index, this.f1749m0);
                } else if (i11 == 81) {
                    this.f1751n0 = obtainStyledAttributes.getBoolean(index, this.f1751n0);
                } else if (i11 != 97) {
                    switch (i11) {
                        case 1:
                            this.f1756q = c.x(obtainStyledAttributes, index, this.f1756q);
                            break;
                        case 2:
                            this.J = obtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            break;
                        case 3:
                            this.f1754p = c.x(obtainStyledAttributes, index, this.f1754p);
                            break;
                        case 4:
                            this.f1752o = c.x(obtainStyledAttributes, index, this.f1752o);
                            break;
                        case 5:
                            this.f1765z = obtainStyledAttributes.getString(index);
                            break;
                        case 6:
                            this.D = obtainStyledAttributes.getDimensionPixelOffset(index, this.D);
                            break;
                        case 7:
                            this.E = obtainStyledAttributes.getDimensionPixelOffset(index, this.E);
                            break;
                        case 8:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                                break;
                            } else {
                                break;
                            }
                        case 9:
                            this.f1762w = c.x(obtainStyledAttributes, index, this.f1762w);
                            break;
                        case 10:
                            this.f1761v = c.x(obtainStyledAttributes, index, this.f1761v);
                            break;
                        case 11:
                            this.Q = obtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                            break;
                        case 12:
                            this.R = obtainStyledAttributes.getDimensionPixelSize(index, this.R);
                            break;
                        case 13:
                            this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                            break;
                        case 14:
                            this.P = obtainStyledAttributes.getDimensionPixelSize(index, this.P);
                            break;
                        case 15:
                            this.S = obtainStyledAttributes.getDimensionPixelSize(index, this.S);
                            break;
                        case 16:
                            this.O = obtainStyledAttributes.getDimensionPixelSize(index, this.O);
                            break;
                        case 17:
                            this.f1734f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1734f);
                            break;
                        case 18:
                            this.f1736g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1736g);
                            break;
                        case 19:
                            this.f1738h = obtainStyledAttributes.getFloat(index, this.f1738h);
                            break;
                        case 20:
                            this.f1763x = obtainStyledAttributes.getFloat(index, this.f1763x);
                            break;
                        case 21:
                            this.f1732e = obtainStyledAttributes.getLayoutDimension(index, this.f1732e);
                            break;
                        case 22:
                            this.f1730d = obtainStyledAttributes.getLayoutDimension(index, this.f1730d);
                            break;
                        case 23:
                            this.G = obtainStyledAttributes.getDimensionPixelSize(index, this.G);
                            break;
                        case 24:
                            this.f1740i = c.x(obtainStyledAttributes, index, this.f1740i);
                            break;
                        case 25:
                            this.f1742j = c.x(obtainStyledAttributes, index, this.f1742j);
                            break;
                        case 26:
                            this.F = obtainStyledAttributes.getInt(index, this.F);
                            break;
                        case 27:
                            this.H = obtainStyledAttributes.getDimensionPixelSize(index, this.H);
                            break;
                        case 28:
                            this.f1744k = c.x(obtainStyledAttributes, index, this.f1744k);
                            break;
                        case 29:
                            this.f1746l = c.x(obtainStyledAttributes, index, this.f1746l);
                            break;
                        case 30:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                                break;
                            } else {
                                break;
                            }
                        case 31:
                            this.f1759t = c.x(obtainStyledAttributes, index, this.f1759t);
                            break;
                        case 32:
                            this.f1760u = c.x(obtainStyledAttributes, index, this.f1760u);
                            break;
                        case 33:
                            this.I = obtainStyledAttributes.getDimensionPixelSize(index, this.I);
                            break;
                        case 34:
                            this.f1750n = c.x(obtainStyledAttributes, index, this.f1750n);
                            break;
                        case 35:
                            this.f1748m = c.x(obtainStyledAttributes, index, this.f1748m);
                            break;
                        case 36:
                            this.f1764y = obtainStyledAttributes.getFloat(index, this.f1764y);
                            break;
                        case 37:
                            this.V = obtainStyledAttributes.getFloat(index, this.V);
                            break;
                        case 38:
                            this.U = obtainStyledAttributes.getFloat(index, this.U);
                            break;
                        case 39:
                            this.W = obtainStyledAttributes.getInt(index, this.W);
                            break;
                        case 40:
                            this.X = obtainStyledAttributes.getInt(index, this.X);
                            break;
                        case 41:
                            c.y(this, obtainStyledAttributes, index, 0);
                            break;
                        case 42:
                            c.y(this, obtainStyledAttributes, index, 1);
                            break;
                        default:
                            switch (i11) {
                                case 54:
                                    this.Y = obtainStyledAttributes.getInt(index, this.Y);
                                    break;
                                case 55:
                                    this.Z = obtainStyledAttributes.getInt(index, this.Z);
                                    break;
                                case 56:
                                    this.f1725a0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1725a0);
                                    break;
                                case 57:
                                    this.f1727b0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1727b0);
                                    break;
                                case 58:
                                    this.f1729c0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1729c0);
                                    break;
                                case 59:
                                    this.f1731d0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1731d0);
                                    break;
                                default:
                                    switch (i11) {
                                        case 61:
                                            this.A = c.x(obtainStyledAttributes, index, this.A);
                                            break;
                                        case 62:
                                            this.B = obtainStyledAttributes.getDimensionPixelSize(index, this.B);
                                            break;
                                        case 63:
                                            this.C = obtainStyledAttributes.getFloat(index, this.C);
                                            break;
                                        default:
                                            switch (i11) {
                                                case 69:
                                                    this.f1733e0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 70:
                                                    this.f1735f0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 71:
                                                    break;
                                                case 72:
                                                    this.f1737g0 = obtainStyledAttributes.getInt(index, this.f1737g0);
                                                    break;
                                                case 73:
                                                    this.f1739h0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1739h0);
                                                    break;
                                                case 74:
                                                    this.f1745k0 = obtainStyledAttributes.getString(index);
                                                    break;
                                                case 75:
                                                    this.f1753o0 = obtainStyledAttributes.getBoolean(index, this.f1753o0);
                                                    break;
                                                case 76:
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append("unused attribute 0x");
                                                    sb2.append(Integer.toHexString(index));
                                                    sb2.append("   ");
                                                    sb2.append(f1723q0.get(index));
                                                    break;
                                                case 77:
                                                    this.f1747l0 = obtainStyledAttributes.getString(index);
                                                    break;
                                                default:
                                                    switch (i11) {
                                                        case 91:
                                                            this.f1757r = c.x(obtainStyledAttributes, index, this.f1757r);
                                                            break;
                                                        case 92:
                                                            this.f1758s = c.x(obtainStyledAttributes, index, this.f1758s);
                                                            break;
                                                        case 93:
                                                            this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                                                            break;
                                                        case 94:
                                                            this.T = obtainStyledAttributes.getDimensionPixelSize(index, this.T);
                                                            break;
                                                        default:
                                                            StringBuilder sb3 = new StringBuilder();
                                                            sb3.append("Unknown attribute 0x");
                                                            sb3.append(Integer.toHexString(index));
                                                            sb3.append("   ");
                                                            sb3.append(f1723q0.get(index));
                                                            break;
                                                    }
                                            }
                                    }
                            }
                    }
                } else {
                    this.f1755p0 = obtainStyledAttributes.getInt(index, this.f1755p0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: ConstraintSet.java */
    /* renamed from: androidx.constraintlayout.widget.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0033c {

        /* renamed from: o, reason: collision with root package name */
        public static SparseIntArray f1766o;

        /* renamed from: a, reason: collision with root package name */
        public boolean f1767a = false;

        /* renamed from: b, reason: collision with root package name */
        public int f1768b = -1;

        /* renamed from: c, reason: collision with root package name */
        public int f1769c = 0;

        /* renamed from: d, reason: collision with root package name */
        public String f1770d = null;

        /* renamed from: e, reason: collision with root package name */
        public int f1771e = -1;

        /* renamed from: f, reason: collision with root package name */
        public int f1772f = 0;

        /* renamed from: g, reason: collision with root package name */
        public float f1773g = Float.NaN;

        /* renamed from: h, reason: collision with root package name */
        public int f1774h = -1;

        /* renamed from: i, reason: collision with root package name */
        public float f1775i = Float.NaN;

        /* renamed from: j, reason: collision with root package name */
        public float f1776j = Float.NaN;

        /* renamed from: k, reason: collision with root package name */
        public int f1777k = -1;

        /* renamed from: l, reason: collision with root package name */
        public String f1778l = null;

        /* renamed from: m, reason: collision with root package name */
        public int f1779m = -3;

        /* renamed from: n, reason: collision with root package name */
        public int f1780n = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1766o = sparseIntArray;
            sparseIntArray.append(a0.d.V7, 1);
            f1766o.append(a0.d.X7, 2);
            f1766o.append(a0.d.f47b8, 3);
            f1766o.append(a0.d.U7, 4);
            f1766o.append(a0.d.T7, 5);
            f1766o.append(a0.d.S7, 6);
            f1766o.append(a0.d.W7, 7);
            f1766o.append(a0.d.f35a8, 8);
            f1766o.append(a0.d.Z7, 9);
            f1766o.append(a0.d.Y7, 10);
        }

        public void a(C0033c c0033c) {
            this.f1767a = c0033c.f1767a;
            this.f1768b = c0033c.f1768b;
            this.f1770d = c0033c.f1770d;
            this.f1771e = c0033c.f1771e;
            this.f1772f = c0033c.f1772f;
            this.f1775i = c0033c.f1775i;
            this.f1773g = c0033c.f1773g;
            this.f1774h = c0033c.f1774h;
        }

        public void b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.d.R7);
            this.f1767a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                switch (f1766o.get(index)) {
                    case 1:
                        this.f1775i = obtainStyledAttributes.getFloat(index, this.f1775i);
                        break;
                    case 2:
                        this.f1771e = obtainStyledAttributes.getInt(index, this.f1771e);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.f1770d = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.f1770d = u.c.f14201c[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.f1772f = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f1768b = c.x(obtainStyledAttributes, index, this.f1768b);
                        break;
                    case 6:
                        this.f1769c = obtainStyledAttributes.getInteger(index, this.f1769c);
                        break;
                    case 7:
                        this.f1773g = obtainStyledAttributes.getFloat(index, this.f1773g);
                        break;
                    case 8:
                        this.f1777k = obtainStyledAttributes.getInteger(index, this.f1777k);
                        break;
                    case 9:
                        this.f1776j = obtainStyledAttributes.getFloat(index, this.f1776j);
                        break;
                    case 10:
                        int i11 = obtainStyledAttributes.peekValue(index).type;
                        if (i11 == 1) {
                            int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                            this.f1780n = resourceId;
                            if (resourceId != -1) {
                                this.f1779m = -2;
                                break;
                            } else {
                                break;
                            }
                        } else if (i11 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            this.f1778l = string;
                            if (string.indexOf("/") > 0) {
                                this.f1780n = obtainStyledAttributes.getResourceId(index, -1);
                                this.f1779m = -2;
                                break;
                            } else {
                                this.f1779m = -1;
                                break;
                            }
                        } else {
                            this.f1779m = obtainStyledAttributes.getInteger(index, this.f1780n);
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: ConstraintSet.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1781a = false;

        /* renamed from: b, reason: collision with root package name */
        public int f1782b = 0;

        /* renamed from: c, reason: collision with root package name */
        public int f1783c = 0;

        /* renamed from: d, reason: collision with root package name */
        public float f1784d = 1.0f;

        /* renamed from: e, reason: collision with root package name */
        public float f1785e = Float.NaN;

        public void a(d dVar) {
            this.f1781a = dVar.f1781a;
            this.f1782b = dVar.f1782b;
            this.f1784d = dVar.f1784d;
            this.f1785e = dVar.f1785e;
            this.f1783c = dVar.f1783c;
        }

        public void b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.d.L8);
            this.f1781a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == a0.d.N8) {
                    this.f1784d = obtainStyledAttributes.getFloat(index, this.f1784d);
                } else if (index == a0.d.M8) {
                    this.f1782b = obtainStyledAttributes.getInt(index, this.f1782b);
                    this.f1782b = c.f1693h[this.f1782b];
                } else if (index == a0.d.P8) {
                    this.f1783c = obtainStyledAttributes.getInt(index, this.f1783c);
                } else if (index == a0.d.O8) {
                    this.f1785e = obtainStyledAttributes.getFloat(index, this.f1785e);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: ConstraintSet.java */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: o, reason: collision with root package name */
        public static SparseIntArray f1786o;

        /* renamed from: a, reason: collision with root package name */
        public boolean f1787a = false;

        /* renamed from: b, reason: collision with root package name */
        public float f1788b = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

        /* renamed from: c, reason: collision with root package name */
        public float f1789c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

        /* renamed from: d, reason: collision with root package name */
        public float f1790d = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

        /* renamed from: e, reason: collision with root package name */
        public float f1791e = 1.0f;

        /* renamed from: f, reason: collision with root package name */
        public float f1792f = 1.0f;

        /* renamed from: g, reason: collision with root package name */
        public float f1793g = Float.NaN;

        /* renamed from: h, reason: collision with root package name */
        public float f1794h = Float.NaN;

        /* renamed from: i, reason: collision with root package name */
        public int f1795i = -1;

        /* renamed from: j, reason: collision with root package name */
        public float f1796j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

        /* renamed from: k, reason: collision with root package name */
        public float f1797k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

        /* renamed from: l, reason: collision with root package name */
        public float f1798l = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

        /* renamed from: m, reason: collision with root package name */
        public boolean f1799m = false;

        /* renamed from: n, reason: collision with root package name */
        public float f1800n = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1786o = sparseIntArray;
            sparseIntArray.append(a0.d.f161l9, 1);
            f1786o.append(a0.d.f172m9, 2);
            f1786o.append(a0.d.f183n9, 3);
            f1786o.append(a0.d.f139j9, 4);
            f1786o.append(a0.d.f150k9, 5);
            f1786o.append(a0.d.f95f9, 6);
            f1786o.append(a0.d.f106g9, 7);
            f1786o.append(a0.d.f117h9, 8);
            f1786o.append(a0.d.f128i9, 9);
            f1786o.append(a0.d.f194o9, 10);
            f1786o.append(a0.d.f205p9, 11);
            f1786o.append(a0.d.f216q9, 12);
        }

        public void a(e eVar) {
            this.f1787a = eVar.f1787a;
            this.f1788b = eVar.f1788b;
            this.f1789c = eVar.f1789c;
            this.f1790d = eVar.f1790d;
            this.f1791e = eVar.f1791e;
            this.f1792f = eVar.f1792f;
            this.f1793g = eVar.f1793g;
            this.f1794h = eVar.f1794h;
            this.f1795i = eVar.f1795i;
            this.f1796j = eVar.f1796j;
            this.f1797k = eVar.f1797k;
            this.f1798l = eVar.f1798l;
            this.f1799m = eVar.f1799m;
            this.f1800n = eVar.f1800n;
        }

        public void b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.d.f84e9);
            this.f1787a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                switch (f1786o.get(index)) {
                    case 1:
                        this.f1788b = obtainStyledAttributes.getFloat(index, this.f1788b);
                        break;
                    case 2:
                        this.f1789c = obtainStyledAttributes.getFloat(index, this.f1789c);
                        break;
                    case 3:
                        this.f1790d = obtainStyledAttributes.getFloat(index, this.f1790d);
                        break;
                    case 4:
                        this.f1791e = obtainStyledAttributes.getFloat(index, this.f1791e);
                        break;
                    case 5:
                        this.f1792f = obtainStyledAttributes.getFloat(index, this.f1792f);
                        break;
                    case 6:
                        this.f1793g = obtainStyledAttributes.getDimension(index, this.f1793g);
                        break;
                    case 7:
                        this.f1794h = obtainStyledAttributes.getDimension(index, this.f1794h);
                        break;
                    case 8:
                        this.f1796j = obtainStyledAttributes.getDimension(index, this.f1796j);
                        break;
                    case 9:
                        this.f1797k = obtainStyledAttributes.getDimension(index, this.f1797k);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f1798l = obtainStyledAttributes.getDimension(index, this.f1798l);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f1799m = true;
                            this.f1800n = obtainStyledAttributes.getDimension(index, this.f1800n);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        this.f1795i = c.x(obtainStyledAttributes, index, this.f1795i);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    static {
        f1694i.append(a0.d.f306z0, 25);
        f1694i.append(a0.d.A0, 26);
        f1694i.append(a0.d.C0, 29);
        f1694i.append(a0.d.D0, 30);
        f1694i.append(a0.d.J0, 36);
        f1694i.append(a0.d.I0, 35);
        f1694i.append(a0.d.f97g0, 4);
        f1694i.append(a0.d.f86f0, 3);
        f1694i.append(a0.d.f39b0, 1);
        f1694i.append(a0.d.f63d0, 91);
        f1694i.append(a0.d.f51c0, 92);
        f1694i.append(a0.d.S0, 6);
        f1694i.append(a0.d.T0, 7);
        f1694i.append(a0.d.f174n0, 17);
        f1694i.append(a0.d.f185o0, 18);
        f1694i.append(a0.d.f196p0, 19);
        f1694i.append(a0.d.f250u, 27);
        f1694i.append(a0.d.E0, 32);
        f1694i.append(a0.d.F0, 33);
        f1694i.append(a0.d.f163m0, 10);
        f1694i.append(a0.d.f152l0, 9);
        f1694i.append(a0.d.W0, 13);
        f1694i.append(a0.d.Z0, 16);
        f1694i.append(a0.d.X0, 14);
        f1694i.append(a0.d.U0, 11);
        f1694i.append(a0.d.Y0, 15);
        f1694i.append(a0.d.V0, 12);
        f1694i.append(a0.d.M0, 40);
        f1694i.append(a0.d.f284x0, 39);
        f1694i.append(a0.d.f273w0, 41);
        f1694i.append(a0.d.L0, 42);
        f1694i.append(a0.d.f262v0, 20);
        f1694i.append(a0.d.K0, 37);
        f1694i.append(a0.d.f141k0, 5);
        f1694i.append(a0.d.f295y0, 87);
        f1694i.append(a0.d.H0, 87);
        f1694i.append(a0.d.B0, 87);
        f1694i.append(a0.d.f75e0, 87);
        f1694i.append(a0.d.f27a0, 87);
        f1694i.append(a0.d.f305z, 24);
        f1694i.append(a0.d.B, 28);
        f1694i.append(a0.d.N, 31);
        f1694i.append(a0.d.O, 8);
        f1694i.append(a0.d.A, 34);
        f1694i.append(a0.d.C, 2);
        f1694i.append(a0.d.f283x, 23);
        f1694i.append(a0.d.f294y, 21);
        f1694i.append(a0.d.N0, 95);
        f1694i.append(a0.d.f207q0, 96);
        f1694i.append(a0.d.f272w, 22);
        f1694i.append(a0.d.D, 43);
        f1694i.append(a0.d.Q, 44);
        f1694i.append(a0.d.L, 45);
        f1694i.append(a0.d.M, 46);
        f1694i.append(a0.d.K, 60);
        f1694i.append(a0.d.I, 47);
        f1694i.append(a0.d.J, 48);
        f1694i.append(a0.d.E, 49);
        f1694i.append(a0.d.F, 50);
        f1694i.append(a0.d.G, 51);
        f1694i.append(a0.d.H, 52);
        f1694i.append(a0.d.P, 53);
        f1694i.append(a0.d.O0, 54);
        f1694i.append(a0.d.f218r0, 55);
        f1694i.append(a0.d.P0, 56);
        f1694i.append(a0.d.f229s0, 57);
        f1694i.append(a0.d.Q0, 58);
        f1694i.append(a0.d.f240t0, 59);
        f1694i.append(a0.d.f108h0, 61);
        f1694i.append(a0.d.f130j0, 62);
        f1694i.append(a0.d.f119i0, 63);
        f1694i.append(a0.d.R, 64);
        f1694i.append(a0.d.f131j1, 65);
        f1694i.append(a0.d.X, 66);
        f1694i.append(a0.d.f142k1, 67);
        f1694i.append(a0.d.f52c1, 79);
        f1694i.append(a0.d.f261v, 38);
        f1694i.append(a0.d.f40b1, 68);
        f1694i.append(a0.d.R0, 69);
        f1694i.append(a0.d.f251u0, 70);
        f1694i.append(a0.d.f28a1, 97);
        f1694i.append(a0.d.V, 71);
        f1694i.append(a0.d.T, 72);
        f1694i.append(a0.d.U, 73);
        f1694i.append(a0.d.W, 74);
        f1694i.append(a0.d.S, 75);
        f1694i.append(a0.d.f64d1, 76);
        f1694i.append(a0.d.G0, 77);
        f1694i.append(a0.d.f153l1, 78);
        f1694i.append(a0.d.Z, 80);
        f1694i.append(a0.d.Y, 81);
        f1694i.append(a0.d.f76e1, 82);
        f1694i.append(a0.d.f120i1, 83);
        f1694i.append(a0.d.f109h1, 84);
        f1694i.append(a0.d.f98g1, 85);
        f1694i.append(a0.d.f87f1, 86);
        SparseIntArray sparseIntArray = f1695j;
        int i10 = a0.d.P3;
        sparseIntArray.append(i10, 6);
        f1695j.append(i10, 7);
        f1695j.append(a0.d.K2, 27);
        f1695j.append(a0.d.S3, 13);
        f1695j.append(a0.d.V3, 16);
        f1695j.append(a0.d.T3, 14);
        f1695j.append(a0.d.Q3, 11);
        f1695j.append(a0.d.U3, 15);
        f1695j.append(a0.d.R3, 12);
        f1695j.append(a0.d.J3, 40);
        f1695j.append(a0.d.C3, 39);
        f1695j.append(a0.d.B3, 41);
        f1695j.append(a0.d.I3, 42);
        f1695j.append(a0.d.A3, 20);
        f1695j.append(a0.d.H3, 37);
        f1695j.append(a0.d.f254u3, 5);
        f1695j.append(a0.d.D3, 87);
        f1695j.append(a0.d.G3, 87);
        f1695j.append(a0.d.E3, 87);
        f1695j.append(a0.d.f221r3, 87);
        f1695j.append(a0.d.f210q3, 87);
        f1695j.append(a0.d.P2, 24);
        f1695j.append(a0.d.R2, 28);
        f1695j.append(a0.d.f66d3, 31);
        f1695j.append(a0.d.f78e3, 8);
        f1695j.append(a0.d.Q2, 34);
        f1695j.append(a0.d.S2, 2);
        f1695j.append(a0.d.N2, 23);
        f1695j.append(a0.d.O2, 21);
        f1695j.append(a0.d.K3, 95);
        f1695j.append(a0.d.f265v3, 96);
        f1695j.append(a0.d.M2, 22);
        f1695j.append(a0.d.T2, 43);
        f1695j.append(a0.d.f100g3, 44);
        f1695j.append(a0.d.f42b3, 45);
        f1695j.append(a0.d.f54c3, 46);
        f1695j.append(a0.d.f30a3, 60);
        f1695j.append(a0.d.Y2, 47);
        f1695j.append(a0.d.Z2, 48);
        f1695j.append(a0.d.U2, 49);
        f1695j.append(a0.d.V2, 50);
        f1695j.append(a0.d.W2, 51);
        f1695j.append(a0.d.X2, 52);
        f1695j.append(a0.d.f89f3, 53);
        f1695j.append(a0.d.L3, 54);
        f1695j.append(a0.d.f276w3, 55);
        f1695j.append(a0.d.M3, 56);
        f1695j.append(a0.d.f287x3, 57);
        f1695j.append(a0.d.N3, 58);
        f1695j.append(a0.d.f298y3, 59);
        f1695j.append(a0.d.f243t3, 62);
        f1695j.append(a0.d.f232s3, 63);
        f1695j.append(a0.d.f111h3, 64);
        f1695j.append(a0.d.f101g4, 65);
        f1695j.append(a0.d.f177n3, 66);
        f1695j.append(a0.d.f112h4, 67);
        f1695j.append(a0.d.Y3, 79);
        f1695j.append(a0.d.L2, 38);
        f1695j.append(a0.d.Z3, 98);
        f1695j.append(a0.d.X3, 68);
        f1695j.append(a0.d.O3, 69);
        f1695j.append(a0.d.f309z3, 70);
        f1695j.append(a0.d.f155l3, 71);
        f1695j.append(a0.d.f133j3, 72);
        f1695j.append(a0.d.f144k3, 73);
        f1695j.append(a0.d.f166m3, 74);
        f1695j.append(a0.d.f122i3, 75);
        f1695j.append(a0.d.f31a4, 76);
        f1695j.append(a0.d.F3, 77);
        f1695j.append(a0.d.f123i4, 78);
        f1695j.append(a0.d.f199p3, 80);
        f1695j.append(a0.d.f188o3, 81);
        f1695j.append(a0.d.f43b4, 82);
        f1695j.append(a0.d.f90f4, 83);
        f1695j.append(a0.d.f79e4, 84);
        f1695j.append(a0.d.f67d4, 85);
        f1695j.append(a0.d.f55c4, 86);
        f1695j.append(a0.d.W3, 97);
    }

    public static void A(ConstraintLayout.b bVar, String str) {
        float f10 = Float.NaN;
        int i10 = -1;
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i11 = 0;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (substring.equalsIgnoreCase("W")) {
                    i10 = 0;
                } else if (substring.equalsIgnoreCase("H")) {
                    i10 = 1;
                }
                i11 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 >= 0 && indexOf2 < length - 1) {
                    String substring2 = str.substring(i11, indexOf2);
                    String substring3 = str.substring(indexOf2 + 1);
                    if (substring2.length() > 0 && substring3.length() > 0) {
                        float parseFloat = Float.parseFloat(substring2);
                        float parseFloat2 = Float.parseFloat(substring3);
                        if (parseFloat > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && parseFloat2 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            if (i10 == 1) {
                                f10 = Math.abs(parseFloat2 / parseFloat);
                            } else {
                                f10 = Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                } else {
                    String substring4 = str.substring(i11);
                    if (substring4.length() > 0) {
                        f10 = Float.parseFloat(substring4);
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        bVar.H = str;
        bVar.I = f10;
        bVar.J = i10;
    }

    public static void C(Context context, a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        a.C0032a c0032a = new a.C0032a();
        aVar.f1710h = c0032a;
        aVar.f1706d.f1767a = false;
        aVar.f1707e.f1726b = false;
        aVar.f1705c.f1781a = false;
        aVar.f1708f.f1787a = false;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            switch (f1695j.get(index)) {
                case 2:
                    c0032a.b(2, typedArray.getDimensionPixelSize(index, aVar.f1707e.J));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case 29:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case 61:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                default:
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unknown attribute 0x");
                    sb2.append(Integer.toHexString(index));
                    sb2.append("   ");
                    sb2.append(f1694i.get(index));
                    break;
                case 5:
                    c0032a.c(5, typedArray.getString(index));
                    break;
                case 6:
                    c0032a.b(6, typedArray.getDimensionPixelOffset(index, aVar.f1707e.D));
                    break;
                case 7:
                    c0032a.b(7, typedArray.getDimensionPixelOffset(index, aVar.f1707e.E));
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        c0032a.b(8, typedArray.getDimensionPixelSize(index, aVar.f1707e.K));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    c0032a.b(11, typedArray.getDimensionPixelSize(index, aVar.f1707e.Q));
                    break;
                case 12:
                    c0032a.b(12, typedArray.getDimensionPixelSize(index, aVar.f1707e.R));
                    break;
                case 13:
                    c0032a.b(13, typedArray.getDimensionPixelSize(index, aVar.f1707e.N));
                    break;
                case 14:
                    c0032a.b(14, typedArray.getDimensionPixelSize(index, aVar.f1707e.P));
                    break;
                case 15:
                    c0032a.b(15, typedArray.getDimensionPixelSize(index, aVar.f1707e.S));
                    break;
                case 16:
                    c0032a.b(16, typedArray.getDimensionPixelSize(index, aVar.f1707e.O));
                    break;
                case 17:
                    c0032a.b(17, typedArray.getDimensionPixelOffset(index, aVar.f1707e.f1734f));
                    break;
                case 18:
                    c0032a.b(18, typedArray.getDimensionPixelOffset(index, aVar.f1707e.f1736g));
                    break;
                case 19:
                    c0032a.a(19, typedArray.getFloat(index, aVar.f1707e.f1738h));
                    break;
                case 20:
                    c0032a.a(20, typedArray.getFloat(index, aVar.f1707e.f1763x));
                    break;
                case 21:
                    c0032a.b(21, typedArray.getLayoutDimension(index, aVar.f1707e.f1732e));
                    break;
                case 22:
                    c0032a.b(22, f1693h[typedArray.getInt(index, aVar.f1705c.f1782b)]);
                    break;
                case 23:
                    c0032a.b(23, typedArray.getLayoutDimension(index, aVar.f1707e.f1730d));
                    break;
                case 24:
                    c0032a.b(24, typedArray.getDimensionPixelSize(index, aVar.f1707e.G));
                    break;
                case 27:
                    c0032a.b(27, typedArray.getInt(index, aVar.f1707e.F));
                    break;
                case 28:
                    c0032a.b(28, typedArray.getDimensionPixelSize(index, aVar.f1707e.H));
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        c0032a.b(31, typedArray.getDimensionPixelSize(index, aVar.f1707e.L));
                        break;
                    } else {
                        break;
                    }
                case 34:
                    c0032a.b(34, typedArray.getDimensionPixelSize(index, aVar.f1707e.I));
                    break;
                case 37:
                    c0032a.a(37, typedArray.getFloat(index, aVar.f1707e.f1764y));
                    break;
                case 38:
                    int resourceId = typedArray.getResourceId(index, aVar.f1703a);
                    aVar.f1703a = resourceId;
                    c0032a.b(38, resourceId);
                    break;
                case 39:
                    c0032a.a(39, typedArray.getFloat(index, aVar.f1707e.V));
                    break;
                case 40:
                    c0032a.a(40, typedArray.getFloat(index, aVar.f1707e.U));
                    break;
                case 41:
                    c0032a.b(41, typedArray.getInt(index, aVar.f1707e.W));
                    break;
                case 42:
                    c0032a.b(42, typedArray.getInt(index, aVar.f1707e.X));
                    break;
                case 43:
                    c0032a.a(43, typedArray.getFloat(index, aVar.f1705c.f1784d));
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        c0032a.d(44, true);
                        c0032a.a(44, typedArray.getDimension(index, aVar.f1708f.f1800n));
                        break;
                    } else {
                        break;
                    }
                case 45:
                    c0032a.a(45, typedArray.getFloat(index, aVar.f1708f.f1789c));
                    break;
                case 46:
                    c0032a.a(46, typedArray.getFloat(index, aVar.f1708f.f1790d));
                    break;
                case 47:
                    c0032a.a(47, typedArray.getFloat(index, aVar.f1708f.f1791e));
                    break;
                case 48:
                    c0032a.a(48, typedArray.getFloat(index, aVar.f1708f.f1792f));
                    break;
                case 49:
                    c0032a.a(49, typedArray.getDimension(index, aVar.f1708f.f1793g));
                    break;
                case 50:
                    c0032a.a(50, typedArray.getDimension(index, aVar.f1708f.f1794h));
                    break;
                case 51:
                    c0032a.a(51, typedArray.getDimension(index, aVar.f1708f.f1796j));
                    break;
                case 52:
                    c0032a.a(52, typedArray.getDimension(index, aVar.f1708f.f1797k));
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        c0032a.a(53, typedArray.getDimension(index, aVar.f1708f.f1798l));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    c0032a.b(54, typedArray.getInt(index, aVar.f1707e.Y));
                    break;
                case 55:
                    c0032a.b(55, typedArray.getInt(index, aVar.f1707e.Z));
                    break;
                case 56:
                    c0032a.b(56, typedArray.getDimensionPixelSize(index, aVar.f1707e.f1725a0));
                    break;
                case 57:
                    c0032a.b(57, typedArray.getDimensionPixelSize(index, aVar.f1707e.f1727b0));
                    break;
                case 58:
                    c0032a.b(58, typedArray.getDimensionPixelSize(index, aVar.f1707e.f1729c0));
                    break;
                case 59:
                    c0032a.b(59, typedArray.getDimensionPixelSize(index, aVar.f1707e.f1731d0));
                    break;
                case 60:
                    c0032a.a(60, typedArray.getFloat(index, aVar.f1708f.f1788b));
                    break;
                case 62:
                    c0032a.b(62, typedArray.getDimensionPixelSize(index, aVar.f1707e.B));
                    break;
                case 63:
                    c0032a.a(63, typedArray.getFloat(index, aVar.f1707e.C));
                    break;
                case 64:
                    c0032a.b(64, x(typedArray, index, aVar.f1706d.f1768b));
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        c0032a.c(65, typedArray.getString(index));
                        break;
                    } else {
                        c0032a.c(65, u.c.f14201c[typedArray.getInteger(index, 0)]);
                        break;
                    }
                case 66:
                    c0032a.b(66, typedArray.getInt(index, 0));
                    break;
                case 67:
                    c0032a.a(67, typedArray.getFloat(index, aVar.f1706d.f1775i));
                    break;
                case 68:
                    c0032a.a(68, typedArray.getFloat(index, aVar.f1705c.f1785e));
                    break;
                case 69:
                    c0032a.a(69, typedArray.getFloat(index, 1.0f));
                    break;
                case 70:
                    c0032a.a(70, typedArray.getFloat(index, 1.0f));
                    break;
                case 71:
                    break;
                case 72:
                    c0032a.b(72, typedArray.getInt(index, aVar.f1707e.f1737g0));
                    break;
                case 73:
                    c0032a.b(73, typedArray.getDimensionPixelSize(index, aVar.f1707e.f1739h0));
                    break;
                case 74:
                    c0032a.c(74, typedArray.getString(index));
                    break;
                case 75:
                    c0032a.d(75, typedArray.getBoolean(index, aVar.f1707e.f1753o0));
                    break;
                case 76:
                    c0032a.b(76, typedArray.getInt(index, aVar.f1706d.f1771e));
                    break;
                case 77:
                    c0032a.c(77, typedArray.getString(index));
                    break;
                case 78:
                    c0032a.b(78, typedArray.getInt(index, aVar.f1705c.f1783c));
                    break;
                case 79:
                    c0032a.a(79, typedArray.getFloat(index, aVar.f1706d.f1773g));
                    break;
                case 80:
                    c0032a.d(80, typedArray.getBoolean(index, aVar.f1707e.f1749m0));
                    break;
                case 81:
                    c0032a.d(81, typedArray.getBoolean(index, aVar.f1707e.f1751n0));
                    break;
                case 82:
                    c0032a.b(82, typedArray.getInteger(index, aVar.f1706d.f1769c));
                    break;
                case 83:
                    c0032a.b(83, x(typedArray, index, aVar.f1708f.f1795i));
                    break;
                case 84:
                    c0032a.b(84, typedArray.getInteger(index, aVar.f1706d.f1777k));
                    break;
                case 85:
                    c0032a.a(85, typedArray.getFloat(index, aVar.f1706d.f1776j));
                    break;
                case 86:
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        aVar.f1706d.f1780n = typedArray.getResourceId(index, -1);
                        c0032a.b(89, aVar.f1706d.f1780n);
                        C0033c c0033c = aVar.f1706d;
                        if (c0033c.f1780n != -1) {
                            c0033c.f1779m = -2;
                            c0032a.b(88, -2);
                            break;
                        } else {
                            break;
                        }
                    } else if (i11 == 3) {
                        aVar.f1706d.f1778l = typedArray.getString(index);
                        c0032a.c(90, aVar.f1706d.f1778l);
                        if (aVar.f1706d.f1778l.indexOf("/") > 0) {
                            aVar.f1706d.f1780n = typedArray.getResourceId(index, -1);
                            c0032a.b(89, aVar.f1706d.f1780n);
                            aVar.f1706d.f1779m = -2;
                            c0032a.b(88, -2);
                            break;
                        } else {
                            aVar.f1706d.f1779m = -1;
                            c0032a.b(88, -1);
                            break;
                        }
                    } else {
                        C0033c c0033c2 = aVar.f1706d;
                        c0033c2.f1779m = typedArray.getInteger(index, c0033c2.f1780n);
                        c0032a.b(88, aVar.f1706d.f1779m);
                        break;
                    }
                case 87:
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("unused attribute 0x");
                    sb3.append(Integer.toHexString(index));
                    sb3.append("   ");
                    sb3.append(f1694i.get(index));
                    break;
                case 93:
                    c0032a.b(93, typedArray.getDimensionPixelSize(index, aVar.f1707e.M));
                    break;
                case 94:
                    c0032a.b(94, typedArray.getDimensionPixelSize(index, aVar.f1707e.T));
                    break;
                case 95:
                    y(c0032a, typedArray, index, 0);
                    break;
                case 96:
                    y(c0032a, typedArray, index, 1);
                    break;
                case 97:
                    c0032a.b(97, typedArray.getInt(index, aVar.f1707e.f1755p0));
                    break;
                case 98:
                    if (p.f17015z0) {
                        int resourceId2 = typedArray.getResourceId(index, aVar.f1703a);
                        aVar.f1703a = resourceId2;
                        if (resourceId2 == -1) {
                            aVar.f1704b = typedArray.getString(index);
                            break;
                        } else {
                            break;
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        aVar.f1704b = typedArray.getString(index);
                        break;
                    } else {
                        aVar.f1703a = typedArray.getResourceId(index, aVar.f1703a);
                        break;
                    }
            }
        }
    }

    public static void F(a aVar, int i10, float f10) {
        if (i10 == 19) {
            aVar.f1707e.f1738h = f10;
            return;
        }
        if (i10 == 20) {
            aVar.f1707e.f1763x = f10;
            return;
        }
        if (i10 == 37) {
            aVar.f1707e.f1764y = f10;
            return;
        }
        if (i10 == 60) {
            aVar.f1708f.f1788b = f10;
            return;
        }
        if (i10 == 63) {
            aVar.f1707e.C = f10;
            return;
        }
        if (i10 == 79) {
            aVar.f1706d.f1773g = f10;
            return;
        }
        if (i10 == 85) {
            aVar.f1706d.f1776j = f10;
            return;
        }
        if (i10 == 39) {
            aVar.f1707e.V = f10;
            return;
        }
        if (i10 != 40) {
            switch (i10) {
                case 43:
                    aVar.f1705c.f1784d = f10;
                    return;
                case 44:
                    e eVar = aVar.f1708f;
                    eVar.f1800n = f10;
                    eVar.f1799m = true;
                    return;
                case 45:
                    aVar.f1708f.f1789c = f10;
                    return;
                case 46:
                    aVar.f1708f.f1790d = f10;
                    return;
                case 47:
                    aVar.f1708f.f1791e = f10;
                    return;
                case 48:
                    aVar.f1708f.f1792f = f10;
                    return;
                case 49:
                    aVar.f1708f.f1793g = f10;
                    return;
                case 50:
                    aVar.f1708f.f1794h = f10;
                    return;
                case 51:
                    aVar.f1708f.f1796j = f10;
                    return;
                case 52:
                    aVar.f1708f.f1797k = f10;
                    return;
                case 53:
                    aVar.f1708f.f1798l = f10;
                    return;
                default:
                    switch (i10) {
                        case 67:
                            aVar.f1706d.f1775i = f10;
                            return;
                        case 68:
                            aVar.f1705c.f1785e = f10;
                            return;
                        case 69:
                            aVar.f1707e.f1733e0 = f10;
                            return;
                        case 70:
                            aVar.f1707e.f1735f0 = f10;
                            return;
                        default:
                            return;
                    }
            }
        }
        aVar.f1707e.U = f10;
    }

    public static void G(a aVar, int i10, int i11) {
        if (i10 == 6) {
            aVar.f1707e.D = i11;
            return;
        }
        if (i10 == 7) {
            aVar.f1707e.E = i11;
            return;
        }
        if (i10 == 8) {
            aVar.f1707e.K = i11;
            return;
        }
        if (i10 == 27) {
            aVar.f1707e.F = i11;
            return;
        }
        if (i10 == 28) {
            aVar.f1707e.H = i11;
            return;
        }
        if (i10 == 41) {
            aVar.f1707e.W = i11;
            return;
        }
        if (i10 == 42) {
            aVar.f1707e.X = i11;
            return;
        }
        if (i10 == 61) {
            aVar.f1707e.A = i11;
            return;
        }
        if (i10 == 62) {
            aVar.f1707e.B = i11;
            return;
        }
        if (i10 == 72) {
            aVar.f1707e.f1737g0 = i11;
            return;
        }
        if (i10 == 73) {
            aVar.f1707e.f1739h0 = i11;
            return;
        }
        if (i10 == 88) {
            aVar.f1706d.f1779m = i11;
            return;
        }
        if (i10 != 89) {
            switch (i10) {
                case 2:
                    aVar.f1707e.J = i11;
                    return;
                case 11:
                    aVar.f1707e.Q = i11;
                    return;
                case 12:
                    aVar.f1707e.R = i11;
                    return;
                case 13:
                    aVar.f1707e.N = i11;
                    return;
                case 14:
                    aVar.f1707e.P = i11;
                    return;
                case 15:
                    aVar.f1707e.S = i11;
                    return;
                case 16:
                    aVar.f1707e.O = i11;
                    return;
                case 17:
                    aVar.f1707e.f1734f = i11;
                    return;
                case 18:
                    aVar.f1707e.f1736g = i11;
                    return;
                case 31:
                    aVar.f1707e.L = i11;
                    return;
                case 34:
                    aVar.f1707e.I = i11;
                    return;
                case 38:
                    aVar.f1703a = i11;
                    return;
                case 64:
                    aVar.f1706d.f1768b = i11;
                    return;
                case 66:
                    aVar.f1706d.f1772f = i11;
                    return;
                case 76:
                    aVar.f1706d.f1771e = i11;
                    return;
                case 78:
                    aVar.f1705c.f1783c = i11;
                    return;
                case 93:
                    aVar.f1707e.M = i11;
                    return;
                case 94:
                    aVar.f1707e.T = i11;
                    return;
                case 97:
                    aVar.f1707e.f1755p0 = i11;
                    return;
                default:
                    switch (i10) {
                        case 21:
                            aVar.f1707e.f1732e = i11;
                            return;
                        case 22:
                            aVar.f1705c.f1782b = i11;
                            return;
                        case 23:
                            aVar.f1707e.f1730d = i11;
                            return;
                        case 24:
                            aVar.f1707e.G = i11;
                            return;
                        default:
                            switch (i10) {
                                case 54:
                                    aVar.f1707e.Y = i11;
                                    return;
                                case 55:
                                    aVar.f1707e.Z = i11;
                                    return;
                                case 56:
                                    aVar.f1707e.f1725a0 = i11;
                                    return;
                                case 57:
                                    aVar.f1707e.f1727b0 = i11;
                                    return;
                                case 58:
                                    aVar.f1707e.f1729c0 = i11;
                                    return;
                                case 59:
                                    aVar.f1707e.f1731d0 = i11;
                                    return;
                                default:
                                    switch (i10) {
                                        case 82:
                                            aVar.f1706d.f1769c = i11;
                                            return;
                                        case 83:
                                            aVar.f1708f.f1795i = i11;
                                            return;
                                        case 84:
                                            aVar.f1706d.f1777k = i11;
                                            return;
                                        default:
                                            return;
                                    }
                            }
                    }
            }
        }
        aVar.f1706d.f1780n = i11;
    }

    public static void H(a aVar, int i10, String str) {
        if (i10 == 5) {
            aVar.f1707e.f1765z = str;
            return;
        }
        if (i10 == 65) {
            aVar.f1706d.f1770d = str;
            return;
        }
        if (i10 == 74) {
            b bVar = aVar.f1707e;
            bVar.f1745k0 = str;
            bVar.f1743j0 = null;
        } else if (i10 == 77) {
            aVar.f1707e.f1747l0 = str;
        } else {
            if (i10 != 90) {
                return;
            }
            aVar.f1706d.f1778l = str;
        }
    }

    public static void I(a aVar, int i10, boolean z10) {
        if (i10 == 44) {
            aVar.f1708f.f1799m = z10;
            return;
        }
        if (i10 == 75) {
            aVar.f1707e.f1753o0 = z10;
        } else if (i10 == 80) {
            aVar.f1707e.f1749m0 = z10;
        } else {
            if (i10 != 81) {
                return;
            }
            aVar.f1707e.f1751n0 = z10;
        }
    }

    public static a k(Context context, XmlPullParser xmlPullParser) {
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        a aVar = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(asAttributeSet, a0.d.J2);
        C(context, aVar, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return aVar;
    }

    public static int x(TypedArray typedArray, int i10, int i11) {
        int resourceId = typedArray.getResourceId(i10, i11);
        return resourceId == -1 ? typedArray.getInt(i10, -1) : resourceId;
    }

    public static void y(Object obj, TypedArray typedArray, int i10, int i11) {
        if (obj == null) {
            return;
        }
        int i12 = typedArray.peekValue(i10).type;
        if (i12 != 3) {
            int i13 = -2;
            boolean z10 = false;
            if (i12 != 5) {
                int i14 = typedArray.getInt(i10, 0);
                if (i14 != -4) {
                    i13 = (i14 == -3 || !(i14 == -2 || i14 == -1)) ? 0 : i14;
                } else {
                    z10 = true;
                }
            } else {
                i13 = typedArray.getDimensionPixelSize(i10, 0);
            }
            if (obj instanceof ConstraintLayout.b) {
                ConstraintLayout.b bVar = (ConstraintLayout.b) obj;
                if (i11 == 0) {
                    ((ViewGroup.MarginLayoutParams) bVar).width = i13;
                    bVar.Z = z10;
                    return;
                } else {
                    ((ViewGroup.MarginLayoutParams) bVar).height = i13;
                    bVar.f1610a0 = z10;
                    return;
                }
            }
            if (obj instanceof b) {
                b bVar2 = (b) obj;
                if (i11 == 0) {
                    bVar2.f1730d = i13;
                    bVar2.f1749m0 = z10;
                    return;
                } else {
                    bVar2.f1732e = i13;
                    bVar2.f1751n0 = z10;
                    return;
                }
            }
            if (obj instanceof a.C0032a) {
                a.C0032a c0032a = (a.C0032a) obj;
                if (i11 == 0) {
                    c0032a.b(23, i13);
                    c0032a.d(80, z10);
                    return;
                } else {
                    c0032a.b(21, i13);
                    c0032a.d(81, z10);
                    return;
                }
            }
            return;
        }
        z(obj, typedArray.getString(i10), i11);
    }

    public static void z(Object obj, String str, int i10) {
        if (str == null) {
            return;
        }
        int indexOf = str.indexOf(61);
        int length = str.length();
        if (indexOf <= 0 || indexOf >= length - 1) {
            return;
        }
        String substring = str.substring(0, indexOf);
        String substring2 = str.substring(indexOf + 1);
        if (substring2.length() > 0) {
            String trim = substring.trim();
            String trim2 = substring2.trim();
            if ("ratio".equalsIgnoreCase(trim)) {
                if (obj instanceof ConstraintLayout.b) {
                    ConstraintLayout.b bVar = (ConstraintLayout.b) obj;
                    if (i10 == 0) {
                        ((ViewGroup.MarginLayoutParams) bVar).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) bVar).height = 0;
                    }
                    A(bVar, trim2);
                    return;
                }
                if (obj instanceof b) {
                    ((b) obj).f1765z = trim2;
                    return;
                } else {
                    if (obj instanceof a.C0032a) {
                        ((a.C0032a) obj).c(5, trim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(trim)) {
                    float parseFloat = Float.parseFloat(trim2);
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar2 = (ConstraintLayout.b) obj;
                        if (i10 == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar2).width = 0;
                            bVar2.K = parseFloat;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar2).height = 0;
                            bVar2.L = parseFloat;
                        }
                    } else if (obj instanceof b) {
                        b bVar3 = (b) obj;
                        if (i10 == 0) {
                            bVar3.f1730d = 0;
                            bVar3.V = parseFloat;
                        } else {
                            bVar3.f1732e = 0;
                            bVar3.U = parseFloat;
                        }
                    } else if (obj instanceof a.C0032a) {
                        a.C0032a c0032a = (a.C0032a) obj;
                        if (i10 == 0) {
                            c0032a.b(23, 0);
                            c0032a.a(39, parseFloat);
                        } else {
                            c0032a.b(21, 0);
                            c0032a.a(40, parseFloat);
                        }
                    }
                } else {
                    if (!"parent".equalsIgnoreCase(trim)) {
                        return;
                    }
                    float max = Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Math.min(1.0f, Float.parseFloat(trim2)));
                    if (obj instanceof ConstraintLayout.b) {
                        ConstraintLayout.b bVar4 = (ConstraintLayout.b) obj;
                        if (i10 == 0) {
                            ((ViewGroup.MarginLayoutParams) bVar4).width = 0;
                            bVar4.U = max;
                            bVar4.O = 2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) bVar4).height = 0;
                            bVar4.V = max;
                            bVar4.P = 2;
                        }
                    } else if (obj instanceof b) {
                        b bVar5 = (b) obj;
                        if (i10 == 0) {
                            bVar5.f1730d = 0;
                            bVar5.f1733e0 = max;
                            bVar5.Y = 2;
                        } else {
                            bVar5.f1732e = 0;
                            bVar5.f1735f0 = max;
                            bVar5.Z = 2;
                        }
                    } else if (obj instanceof a.C0032a) {
                        a.C0032a c0032a2 = (a.C0032a) obj;
                        if (i10 == 0) {
                            c0032a2.b(23, 0);
                            c0032a2.b(54, 2);
                        } else {
                            c0032a2.b(21, 0);
                            c0032a2.b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public final void B(Context context, a aVar, TypedArray typedArray, boolean z10) {
        if (z10) {
            C(context, aVar, typedArray);
            return;
        }
        int indexCount = typedArray.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArray.getIndex(i10);
            if (index != a0.d.f261v && a0.d.N != index && a0.d.O != index) {
                aVar.f1706d.f1767a = true;
                aVar.f1707e.f1726b = true;
                aVar.f1705c.f1781a = true;
                aVar.f1708f.f1787a = true;
            }
            switch (f1694i.get(index)) {
                case 1:
                    b bVar = aVar.f1707e;
                    bVar.f1756q = x(typedArray, index, bVar.f1756q);
                    break;
                case 2:
                    b bVar2 = aVar.f1707e;
                    bVar2.J = typedArray.getDimensionPixelSize(index, bVar2.J);
                    break;
                case 3:
                    b bVar3 = aVar.f1707e;
                    bVar3.f1754p = x(typedArray, index, bVar3.f1754p);
                    break;
                case 4:
                    b bVar4 = aVar.f1707e;
                    bVar4.f1752o = x(typedArray, index, bVar4.f1752o);
                    break;
                case 5:
                    aVar.f1707e.f1765z = typedArray.getString(index);
                    break;
                case 6:
                    b bVar5 = aVar.f1707e;
                    bVar5.D = typedArray.getDimensionPixelOffset(index, bVar5.D);
                    break;
                case 7:
                    b bVar6 = aVar.f1707e;
                    bVar6.E = typedArray.getDimensionPixelOffset(index, bVar6.E);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        b bVar7 = aVar.f1707e;
                        bVar7.K = typedArray.getDimensionPixelSize(index, bVar7.K);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    b bVar8 = aVar.f1707e;
                    bVar8.f1762w = x(typedArray, index, bVar8.f1762w);
                    break;
                case 10:
                    b bVar9 = aVar.f1707e;
                    bVar9.f1761v = x(typedArray, index, bVar9.f1761v);
                    break;
                case 11:
                    b bVar10 = aVar.f1707e;
                    bVar10.Q = typedArray.getDimensionPixelSize(index, bVar10.Q);
                    break;
                case 12:
                    b bVar11 = aVar.f1707e;
                    bVar11.R = typedArray.getDimensionPixelSize(index, bVar11.R);
                    break;
                case 13:
                    b bVar12 = aVar.f1707e;
                    bVar12.N = typedArray.getDimensionPixelSize(index, bVar12.N);
                    break;
                case 14:
                    b bVar13 = aVar.f1707e;
                    bVar13.P = typedArray.getDimensionPixelSize(index, bVar13.P);
                    break;
                case 15:
                    b bVar14 = aVar.f1707e;
                    bVar14.S = typedArray.getDimensionPixelSize(index, bVar14.S);
                    break;
                case 16:
                    b bVar15 = aVar.f1707e;
                    bVar15.O = typedArray.getDimensionPixelSize(index, bVar15.O);
                    break;
                case 17:
                    b bVar16 = aVar.f1707e;
                    bVar16.f1734f = typedArray.getDimensionPixelOffset(index, bVar16.f1734f);
                    break;
                case 18:
                    b bVar17 = aVar.f1707e;
                    bVar17.f1736g = typedArray.getDimensionPixelOffset(index, bVar17.f1736g);
                    break;
                case 19:
                    b bVar18 = aVar.f1707e;
                    bVar18.f1738h = typedArray.getFloat(index, bVar18.f1738h);
                    break;
                case 20:
                    b bVar19 = aVar.f1707e;
                    bVar19.f1763x = typedArray.getFloat(index, bVar19.f1763x);
                    break;
                case 21:
                    b bVar20 = aVar.f1707e;
                    bVar20.f1732e = typedArray.getLayoutDimension(index, bVar20.f1732e);
                    break;
                case 22:
                    d dVar = aVar.f1705c;
                    dVar.f1782b = typedArray.getInt(index, dVar.f1782b);
                    d dVar2 = aVar.f1705c;
                    dVar2.f1782b = f1693h[dVar2.f1782b];
                    break;
                case 23:
                    b bVar21 = aVar.f1707e;
                    bVar21.f1730d = typedArray.getLayoutDimension(index, bVar21.f1730d);
                    break;
                case 24:
                    b bVar22 = aVar.f1707e;
                    bVar22.G = typedArray.getDimensionPixelSize(index, bVar22.G);
                    break;
                case 25:
                    b bVar23 = aVar.f1707e;
                    bVar23.f1740i = x(typedArray, index, bVar23.f1740i);
                    break;
                case 26:
                    b bVar24 = aVar.f1707e;
                    bVar24.f1742j = x(typedArray, index, bVar24.f1742j);
                    break;
                case 27:
                    b bVar25 = aVar.f1707e;
                    bVar25.F = typedArray.getInt(index, bVar25.F);
                    break;
                case 28:
                    b bVar26 = aVar.f1707e;
                    bVar26.H = typedArray.getDimensionPixelSize(index, bVar26.H);
                    break;
                case 29:
                    b bVar27 = aVar.f1707e;
                    bVar27.f1744k = x(typedArray, index, bVar27.f1744k);
                    break;
                case 30:
                    b bVar28 = aVar.f1707e;
                    bVar28.f1746l = x(typedArray, index, bVar28.f1746l);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        b bVar29 = aVar.f1707e;
                        bVar29.L = typedArray.getDimensionPixelSize(index, bVar29.L);
                        break;
                    } else {
                        break;
                    }
                case 32:
                    b bVar30 = aVar.f1707e;
                    bVar30.f1759t = x(typedArray, index, bVar30.f1759t);
                    break;
                case 33:
                    b bVar31 = aVar.f1707e;
                    bVar31.f1760u = x(typedArray, index, bVar31.f1760u);
                    break;
                case 34:
                    b bVar32 = aVar.f1707e;
                    bVar32.I = typedArray.getDimensionPixelSize(index, bVar32.I);
                    break;
                case 35:
                    b bVar33 = aVar.f1707e;
                    bVar33.f1750n = x(typedArray, index, bVar33.f1750n);
                    break;
                case 36:
                    b bVar34 = aVar.f1707e;
                    bVar34.f1748m = x(typedArray, index, bVar34.f1748m);
                    break;
                case 37:
                    b bVar35 = aVar.f1707e;
                    bVar35.f1764y = typedArray.getFloat(index, bVar35.f1764y);
                    break;
                case 38:
                    aVar.f1703a = typedArray.getResourceId(index, aVar.f1703a);
                    break;
                case 39:
                    b bVar36 = aVar.f1707e;
                    bVar36.V = typedArray.getFloat(index, bVar36.V);
                    break;
                case 40:
                    b bVar37 = aVar.f1707e;
                    bVar37.U = typedArray.getFloat(index, bVar37.U);
                    break;
                case 41:
                    b bVar38 = aVar.f1707e;
                    bVar38.W = typedArray.getInt(index, bVar38.W);
                    break;
                case 42:
                    b bVar39 = aVar.f1707e;
                    bVar39.X = typedArray.getInt(index, bVar39.X);
                    break;
                case 43:
                    d dVar3 = aVar.f1705c;
                    dVar3.f1784d = typedArray.getFloat(index, dVar3.f1784d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        e eVar = aVar.f1708f;
                        eVar.f1799m = true;
                        eVar.f1800n = typedArray.getDimension(index, eVar.f1800n);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    e eVar2 = aVar.f1708f;
                    eVar2.f1789c = typedArray.getFloat(index, eVar2.f1789c);
                    break;
                case 46:
                    e eVar3 = aVar.f1708f;
                    eVar3.f1790d = typedArray.getFloat(index, eVar3.f1790d);
                    break;
                case 47:
                    e eVar4 = aVar.f1708f;
                    eVar4.f1791e = typedArray.getFloat(index, eVar4.f1791e);
                    break;
                case 48:
                    e eVar5 = aVar.f1708f;
                    eVar5.f1792f = typedArray.getFloat(index, eVar5.f1792f);
                    break;
                case 49:
                    e eVar6 = aVar.f1708f;
                    eVar6.f1793g = typedArray.getDimension(index, eVar6.f1793g);
                    break;
                case 50:
                    e eVar7 = aVar.f1708f;
                    eVar7.f1794h = typedArray.getDimension(index, eVar7.f1794h);
                    break;
                case 51:
                    e eVar8 = aVar.f1708f;
                    eVar8.f1796j = typedArray.getDimension(index, eVar8.f1796j);
                    break;
                case 52:
                    e eVar9 = aVar.f1708f;
                    eVar9.f1797k = typedArray.getDimension(index, eVar9.f1797k);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        e eVar10 = aVar.f1708f;
                        eVar10.f1798l = typedArray.getDimension(index, eVar10.f1798l);
                        break;
                    } else {
                        break;
                    }
                case 54:
                    b bVar40 = aVar.f1707e;
                    bVar40.Y = typedArray.getInt(index, bVar40.Y);
                    break;
                case 55:
                    b bVar41 = aVar.f1707e;
                    bVar41.Z = typedArray.getInt(index, bVar41.Z);
                    break;
                case 56:
                    b bVar42 = aVar.f1707e;
                    bVar42.f1725a0 = typedArray.getDimensionPixelSize(index, bVar42.f1725a0);
                    break;
                case 57:
                    b bVar43 = aVar.f1707e;
                    bVar43.f1727b0 = typedArray.getDimensionPixelSize(index, bVar43.f1727b0);
                    break;
                case 58:
                    b bVar44 = aVar.f1707e;
                    bVar44.f1729c0 = typedArray.getDimensionPixelSize(index, bVar44.f1729c0);
                    break;
                case 59:
                    b bVar45 = aVar.f1707e;
                    bVar45.f1731d0 = typedArray.getDimensionPixelSize(index, bVar45.f1731d0);
                    break;
                case 60:
                    e eVar11 = aVar.f1708f;
                    eVar11.f1788b = typedArray.getFloat(index, eVar11.f1788b);
                    break;
                case 61:
                    b bVar46 = aVar.f1707e;
                    bVar46.A = x(typedArray, index, bVar46.A);
                    break;
                case 62:
                    b bVar47 = aVar.f1707e;
                    bVar47.B = typedArray.getDimensionPixelSize(index, bVar47.B);
                    break;
                case 63:
                    b bVar48 = aVar.f1707e;
                    bVar48.C = typedArray.getFloat(index, bVar48.C);
                    break;
                case 64:
                    C0033c c0033c = aVar.f1706d;
                    c0033c.f1768b = x(typedArray, index, c0033c.f1768b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.f1706d.f1770d = typedArray.getString(index);
                        break;
                    } else {
                        aVar.f1706d.f1770d = u.c.f14201c[typedArray.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    aVar.f1706d.f1772f = typedArray.getInt(index, 0);
                    break;
                case 67:
                    C0033c c0033c2 = aVar.f1706d;
                    c0033c2.f1775i = typedArray.getFloat(index, c0033c2.f1775i);
                    break;
                case 68:
                    d dVar4 = aVar.f1705c;
                    dVar4.f1785e = typedArray.getFloat(index, dVar4.f1785e);
                    break;
                case 69:
                    aVar.f1707e.f1733e0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.f1707e.f1735f0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    break;
                case 72:
                    b bVar49 = aVar.f1707e;
                    bVar49.f1737g0 = typedArray.getInt(index, bVar49.f1737g0);
                    break;
                case 73:
                    b bVar50 = aVar.f1707e;
                    bVar50.f1739h0 = typedArray.getDimensionPixelSize(index, bVar50.f1739h0);
                    break;
                case 74:
                    aVar.f1707e.f1745k0 = typedArray.getString(index);
                    break;
                case 75:
                    b bVar51 = aVar.f1707e;
                    bVar51.f1753o0 = typedArray.getBoolean(index, bVar51.f1753o0);
                    break;
                case 76:
                    C0033c c0033c3 = aVar.f1706d;
                    c0033c3.f1771e = typedArray.getInt(index, c0033c3.f1771e);
                    break;
                case 77:
                    aVar.f1707e.f1747l0 = typedArray.getString(index);
                    break;
                case 78:
                    d dVar5 = aVar.f1705c;
                    dVar5.f1783c = typedArray.getInt(index, dVar5.f1783c);
                    break;
                case 79:
                    C0033c c0033c4 = aVar.f1706d;
                    c0033c4.f1773g = typedArray.getFloat(index, c0033c4.f1773g);
                    break;
                case 80:
                    b bVar52 = aVar.f1707e;
                    bVar52.f1749m0 = typedArray.getBoolean(index, bVar52.f1749m0);
                    break;
                case 81:
                    b bVar53 = aVar.f1707e;
                    bVar53.f1751n0 = typedArray.getBoolean(index, bVar53.f1751n0);
                    break;
                case 82:
                    C0033c c0033c5 = aVar.f1706d;
                    c0033c5.f1769c = typedArray.getInteger(index, c0033c5.f1769c);
                    break;
                case 83:
                    e eVar12 = aVar.f1708f;
                    eVar12.f1795i = x(typedArray, index, eVar12.f1795i);
                    break;
                case 84:
                    C0033c c0033c6 = aVar.f1706d;
                    c0033c6.f1777k = typedArray.getInteger(index, c0033c6.f1777k);
                    break;
                case 85:
                    C0033c c0033c7 = aVar.f1706d;
                    c0033c7.f1776j = typedArray.getFloat(index, c0033c7.f1776j);
                    break;
                case 86:
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        aVar.f1706d.f1780n = typedArray.getResourceId(index, -1);
                        C0033c c0033c8 = aVar.f1706d;
                        if (c0033c8.f1780n != -1) {
                            c0033c8.f1779m = -2;
                            break;
                        } else {
                            break;
                        }
                    } else if (i11 == 3) {
                        aVar.f1706d.f1778l = typedArray.getString(index);
                        if (aVar.f1706d.f1778l.indexOf("/") > 0) {
                            aVar.f1706d.f1780n = typedArray.getResourceId(index, -1);
                            aVar.f1706d.f1779m = -2;
                            break;
                        } else {
                            aVar.f1706d.f1779m = -1;
                            break;
                        }
                    } else {
                        C0033c c0033c9 = aVar.f1706d;
                        c0033c9.f1779m = typedArray.getInteger(index, c0033c9.f1780n);
                        break;
                    }
                case 87:
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("unused attribute 0x");
                    sb2.append(Integer.toHexString(index));
                    sb2.append("   ");
                    sb2.append(f1694i.get(index));
                    break;
                case 88:
                case 89:
                case 90:
                default:
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Unknown attribute 0x");
                    sb3.append(Integer.toHexString(index));
                    sb3.append("   ");
                    sb3.append(f1694i.get(index));
                    break;
                case 91:
                    b bVar54 = aVar.f1707e;
                    bVar54.f1757r = x(typedArray, index, bVar54.f1757r);
                    break;
                case 92:
                    b bVar55 = aVar.f1707e;
                    bVar55.f1758s = x(typedArray, index, bVar55.f1758s);
                    break;
                case 93:
                    b bVar56 = aVar.f1707e;
                    bVar56.M = typedArray.getDimensionPixelSize(index, bVar56.M);
                    break;
                case 94:
                    b bVar57 = aVar.f1707e;
                    bVar57.T = typedArray.getDimensionPixelSize(index, bVar57.T);
                    break;
                case 95:
                    y(aVar.f1707e, typedArray, index, 0);
                    break;
                case 96:
                    y(aVar.f1707e, typedArray, index, 1);
                    break;
                case 97:
                    b bVar58 = aVar.f1707e;
                    bVar58.f1755p0 = typedArray.getInt(index, bVar58.f1755p0);
                    break;
            }
        }
        b bVar59 = aVar.f1707e;
        if (bVar59.f1745k0 != null) {
            bVar59.f1743j0 = null;
        }
    }

    public void D(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.f1701f && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1702g.containsKey(Integer.valueOf(id2))) {
                this.f1702g.put(Integer.valueOf(id2), new a());
            }
            a aVar = this.f1702g.get(Integer.valueOf(id2));
            if (aVar != null) {
                if (!aVar.f1707e.f1726b) {
                    aVar.g(id2, bVar);
                    if (childAt instanceof androidx.constraintlayout.widget.b) {
                        aVar.f1707e.f1743j0 = ((androidx.constraintlayout.widget.b) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            aVar.f1707e.f1753o0 = barrier.getAllowsGoneWidget();
                            aVar.f1707e.f1737g0 = barrier.getType();
                            aVar.f1707e.f1739h0 = barrier.getMargin();
                        }
                    }
                    aVar.f1707e.f1726b = true;
                }
                d dVar = aVar.f1705c;
                if (!dVar.f1781a) {
                    dVar.f1782b = childAt.getVisibility();
                    aVar.f1705c.f1784d = childAt.getAlpha();
                    aVar.f1705c.f1781a = true;
                }
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 17) {
                    e eVar = aVar.f1708f;
                    if (!eVar.f1787a) {
                        eVar.f1787a = true;
                        eVar.f1788b = childAt.getRotation();
                        aVar.f1708f.f1789c = childAt.getRotationX();
                        aVar.f1708f.f1790d = childAt.getRotationY();
                        aVar.f1708f.f1791e = childAt.getScaleX();
                        aVar.f1708f.f1792f = childAt.getScaleY();
                        float pivotX = childAt.getPivotX();
                        float pivotY = childAt.getPivotY();
                        if (pivotX != ShadowDrawableWrapper.COS_45 || pivotY != ShadowDrawableWrapper.COS_45) {
                            e eVar2 = aVar.f1708f;
                            eVar2.f1793g = pivotX;
                            eVar2.f1794h = pivotY;
                        }
                        aVar.f1708f.f1796j = childAt.getTranslationX();
                        aVar.f1708f.f1797k = childAt.getTranslationY();
                        if (i11 >= 21) {
                            aVar.f1708f.f1798l = childAt.getTranslationZ();
                            e eVar3 = aVar.f1708f;
                            if (eVar3.f1799m) {
                                eVar3.f1800n = childAt.getElevation();
                            }
                        }
                    }
                }
            }
        }
    }

    public void E(c cVar) {
        for (Integer num : cVar.f1702g.keySet()) {
            int intValue = num.intValue();
            a aVar = cVar.f1702g.get(num);
            if (!this.f1702g.containsKey(Integer.valueOf(intValue))) {
                this.f1702g.put(Integer.valueOf(intValue), new a());
            }
            a aVar2 = this.f1702g.get(Integer.valueOf(intValue));
            if (aVar2 != null) {
                b bVar = aVar2.f1707e;
                if (!bVar.f1726b) {
                    bVar.a(aVar.f1707e);
                }
                d dVar = aVar2.f1705c;
                if (!dVar.f1781a) {
                    dVar.a(aVar.f1705c);
                }
                e eVar = aVar2.f1708f;
                if (!eVar.f1787a) {
                    eVar.a(aVar.f1708f);
                }
                C0033c c0033c = aVar2.f1706d;
                if (!c0033c.f1767a) {
                    c0033c.a(aVar.f1706d);
                }
                for (String str : aVar.f1709g.keySet()) {
                    if (!aVar2.f1709g.containsKey(str)) {
                        aVar2.f1709g.put(str, aVar.f1709g.get(str));
                    }
                }
            }
        }
    }

    public void J(boolean z10) {
        this.f1701f = z10;
    }

    public void K(boolean z10) {
        this.f1696a = z10;
    }

    public void g(ConstraintLayout constraintLayout) {
        a aVar;
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            int id2 = childAt.getId();
            if (!this.f1702g.containsKey(Integer.valueOf(id2))) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("id unknown ");
                sb2.append(z.a.c(childAt));
            } else {
                if (this.f1701f && id2 == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (this.f1702g.containsKey(Integer.valueOf(id2)) && (aVar = this.f1702g.get(Integer.valueOf(id2))) != null) {
                    androidx.constraintlayout.widget.a.i(childAt, aVar.f1709g);
                }
            }
        }
    }

    public void h(c cVar) {
        for (a aVar : cVar.f1702g.values()) {
            if (aVar.f1710h != null) {
                if (aVar.f1704b != null) {
                    Iterator<Integer> it2 = this.f1702g.keySet().iterator();
                    while (it2.hasNext()) {
                        a u10 = u(it2.next().intValue());
                        String str = u10.f1707e.f1747l0;
                        if (str != null && aVar.f1704b.matches(str)) {
                            aVar.f1710h.e(u10);
                            u10.f1709g.putAll((HashMap) aVar.f1709g.clone());
                        }
                    }
                } else {
                    aVar.f1710h.e(u(aVar.f1703a));
                }
            }
        }
    }

    public void i(ConstraintLayout constraintLayout) {
        j(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void j(ConstraintLayout constraintLayout, boolean z10) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f1702g.keySet());
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            int id2 = childAt.getId();
            if (!this.f1702g.containsKey(Integer.valueOf(id2))) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("id unknown ");
                sb2.append(z.a.c(childAt));
            } else {
                if (this.f1701f && id2 == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id2 != -1) {
                    if (this.f1702g.containsKey(Integer.valueOf(id2))) {
                        hashSet.remove(Integer.valueOf(id2));
                        a aVar = this.f1702g.get(Integer.valueOf(id2));
                        if (aVar != null) {
                            if (childAt instanceof Barrier) {
                                aVar.f1707e.f1741i0 = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id2);
                                barrier.setType(aVar.f1707e.f1737g0);
                                barrier.setMargin(aVar.f1707e.f1739h0);
                                barrier.setAllowsGoneWidget(aVar.f1707e.f1753o0);
                                b bVar = aVar.f1707e;
                                int[] iArr = bVar.f1743j0;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = bVar.f1745k0;
                                    if (str != null) {
                                        bVar.f1743j0 = r(barrier, str);
                                        barrier.setReferencedIds(aVar.f1707e.f1743j0);
                                    }
                                }
                            }
                            ConstraintLayout.b bVar2 = (ConstraintLayout.b) childAt.getLayoutParams();
                            bVar2.b();
                            aVar.e(bVar2);
                            if (z10) {
                                androidx.constraintlayout.widget.a.i(childAt, aVar.f1709g);
                            }
                            childAt.setLayoutParams(bVar2);
                            d dVar = aVar.f1705c;
                            if (dVar.f1783c == 0) {
                                childAt.setVisibility(dVar.f1782b);
                            }
                            int i11 = Build.VERSION.SDK_INT;
                            if (i11 >= 17) {
                                childAt.setAlpha(aVar.f1705c.f1784d);
                                childAt.setRotation(aVar.f1708f.f1788b);
                                childAt.setRotationX(aVar.f1708f.f1789c);
                                childAt.setRotationY(aVar.f1708f.f1790d);
                                childAt.setScaleX(aVar.f1708f.f1791e);
                                childAt.setScaleY(aVar.f1708f.f1792f);
                                e eVar = aVar.f1708f;
                                if (eVar.f1795i != -1) {
                                    if (((View) childAt.getParent()).findViewById(aVar.f1708f.f1795i) != null) {
                                        float top = (r6.getTop() + r6.getBottom()) / 2.0f;
                                        float left = (r6.getLeft() + r6.getRight()) / 2.0f;
                                        if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                            childAt.setPivotX(left - childAt.getLeft());
                                            childAt.setPivotY(top - childAt.getTop());
                                        }
                                    }
                                } else {
                                    if (!Float.isNaN(eVar.f1793g)) {
                                        childAt.setPivotX(aVar.f1708f.f1793g);
                                    }
                                    if (!Float.isNaN(aVar.f1708f.f1794h)) {
                                        childAt.setPivotY(aVar.f1708f.f1794h);
                                    }
                                }
                                childAt.setTranslationX(aVar.f1708f.f1796j);
                                childAt.setTranslationY(aVar.f1708f.f1797k);
                                if (i11 >= 21) {
                                    childAt.setTranslationZ(aVar.f1708f.f1798l);
                                    e eVar2 = aVar.f1708f;
                                    if (eVar2.f1799m) {
                                        childAt.setElevation(eVar2.f1800n);
                                    }
                                }
                            }
                        }
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("WARNING NO CONSTRAINTS for view ");
                        sb3.append(id2);
                    }
                }
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            Integer num = (Integer) it2.next();
            a aVar2 = this.f1702g.get(num);
            if (aVar2 != null) {
                if (aVar2.f1707e.f1741i0 == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    b bVar3 = aVar2.f1707e;
                    int[] iArr2 = bVar3.f1743j0;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = bVar3.f1745k0;
                        if (str2 != null) {
                            bVar3.f1743j0 = r(barrier2, str2);
                            barrier2.setReferencedIds(aVar2.f1707e.f1743j0);
                        }
                    }
                    barrier2.setType(aVar2.f1707e.f1737g0);
                    barrier2.setMargin(aVar2.f1707e.f1739h0);
                    ConstraintLayout.b generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.t();
                    aVar2.e(generateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, generateDefaultLayoutParams);
                }
                if (aVar2.f1707e.f1724a) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.b generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    aVar2.e(generateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, generateDefaultLayoutParams2);
                }
            }
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = constraintLayout.getChildAt(i12);
            if (childAt2 instanceof androidx.constraintlayout.widget.b) {
                ((androidx.constraintlayout.widget.b) childAt2).j(constraintLayout);
            }
        }
    }

    public void l(int i10, int i11) {
        a aVar;
        if (!this.f1702g.containsKey(Integer.valueOf(i10)) || (aVar = this.f1702g.get(Integer.valueOf(i10))) == null) {
            return;
        }
        switch (i11) {
            case 1:
                b bVar = aVar.f1707e;
                bVar.f1742j = -1;
                bVar.f1740i = -1;
                bVar.G = -1;
                bVar.N = Integer.MIN_VALUE;
                return;
            case 2:
                b bVar2 = aVar.f1707e;
                bVar2.f1746l = -1;
                bVar2.f1744k = -1;
                bVar2.H = -1;
                bVar2.P = Integer.MIN_VALUE;
                return;
            case 3:
                b bVar3 = aVar.f1707e;
                bVar3.f1750n = -1;
                bVar3.f1748m = -1;
                bVar3.I = 0;
                bVar3.O = Integer.MIN_VALUE;
                return;
            case 4:
                b bVar4 = aVar.f1707e;
                bVar4.f1752o = -1;
                bVar4.f1754p = -1;
                bVar4.J = 0;
                bVar4.Q = Integer.MIN_VALUE;
                return;
            case 5:
                b bVar5 = aVar.f1707e;
                bVar5.f1756q = -1;
                bVar5.f1757r = -1;
                bVar5.f1758s = -1;
                bVar5.M = 0;
                bVar5.T = Integer.MIN_VALUE;
                return;
            case 6:
                b bVar6 = aVar.f1707e;
                bVar6.f1759t = -1;
                bVar6.f1760u = -1;
                bVar6.L = 0;
                bVar6.S = Integer.MIN_VALUE;
                return;
            case 7:
                b bVar7 = aVar.f1707e;
                bVar7.f1761v = -1;
                bVar7.f1762w = -1;
                bVar7.K = 0;
                bVar7.R = Integer.MIN_VALUE;
                return;
            case 8:
                b bVar8 = aVar.f1707e;
                bVar8.C = -1.0f;
                bVar8.B = -1;
                bVar8.A = -1;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void m(Context context, int i10) {
        n((ConstraintLayout) LayoutInflater.from(context).inflate(i10, (ViewGroup) null));
    }

    public void n(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f1702g.clear();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ConstraintLayout.b bVar = (ConstraintLayout.b) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.f1701f && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1702g.containsKey(Integer.valueOf(id2))) {
                this.f1702g.put(Integer.valueOf(id2), new a());
            }
            a aVar = this.f1702g.get(Integer.valueOf(id2));
            if (aVar != null) {
                aVar.f1709g = androidx.constraintlayout.widget.a.c(this.f1700e, childAt);
                aVar.g(id2, bVar);
                aVar.f1705c.f1782b = childAt.getVisibility();
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 17) {
                    aVar.f1705c.f1784d = childAt.getAlpha();
                    aVar.f1708f.f1788b = childAt.getRotation();
                    aVar.f1708f.f1789c = childAt.getRotationX();
                    aVar.f1708f.f1790d = childAt.getRotationY();
                    aVar.f1708f.f1791e = childAt.getScaleX();
                    aVar.f1708f.f1792f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != ShadowDrawableWrapper.COS_45 || pivotY != ShadowDrawableWrapper.COS_45) {
                        e eVar = aVar.f1708f;
                        eVar.f1793g = pivotX;
                        eVar.f1794h = pivotY;
                    }
                    aVar.f1708f.f1796j = childAt.getTranslationX();
                    aVar.f1708f.f1797k = childAt.getTranslationY();
                    if (i11 >= 21) {
                        aVar.f1708f.f1798l = childAt.getTranslationZ();
                        e eVar2 = aVar.f1708f;
                        if (eVar2.f1799m) {
                            eVar2.f1800n = childAt.getElevation();
                        }
                    }
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    aVar.f1707e.f1753o0 = barrier.getAllowsGoneWidget();
                    aVar.f1707e.f1743j0 = barrier.getReferencedIds();
                    aVar.f1707e.f1737g0 = barrier.getType();
                    aVar.f1707e.f1739h0 = barrier.getMargin();
                }
            }
        }
    }

    public void o(c cVar) {
        this.f1702g.clear();
        for (Integer num : cVar.f1702g.keySet()) {
            a aVar = cVar.f1702g.get(num);
            if (aVar != null) {
                this.f1702g.put(num, aVar.clone());
            }
        }
    }

    public void p(androidx.constraintlayout.widget.d dVar) {
        int childCount = dVar.getChildCount();
        this.f1702g.clear();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = dVar.getChildAt(i10);
            d.a aVar = (d.a) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.f1701f && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1702g.containsKey(Integer.valueOf(id2))) {
                this.f1702g.put(Integer.valueOf(id2), new a());
            }
            a aVar2 = this.f1702g.get(Integer.valueOf(id2));
            if (aVar2 != null) {
                if (childAt instanceof androidx.constraintlayout.widget.b) {
                    aVar2.i((androidx.constraintlayout.widget.b) childAt, id2, aVar);
                }
                aVar2.h(id2, aVar);
            }
        }
    }

    public void q(int i10, int i11, int i12, float f10) {
        b bVar = t(i10).f1707e;
        bVar.A = i11;
        bVar.B = i12;
        bVar.C = f10;
    }

    public final int[] r(View view, String str) {
        int i10;
        Object designInformation;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i11 = 0;
        int i12 = 0;
        while (i11 < split.length) {
            String trim = split[i11].trim();
            try {
                i10 = a0.c.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i10 = 0;
            }
            if (i10 == 0) {
                i10 = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i10 == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, trim)) != null && (designInformation instanceof Integer)) {
                i10 = ((Integer) designInformation).intValue();
            }
            iArr[i12] = i10;
            i11++;
            i12++;
        }
        return i12 != split.length ? Arrays.copyOf(iArr, i12) : iArr;
    }

    public final a s(Context context, AttributeSet attributeSet, boolean z10) {
        a aVar = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z10 ? a0.d.J2 : a0.d.f239t);
        B(context, aVar, obtainStyledAttributes, z10);
        obtainStyledAttributes.recycle();
        return aVar;
    }

    public final a t(int i10) {
        if (!this.f1702g.containsKey(Integer.valueOf(i10))) {
            this.f1702g.put(Integer.valueOf(i10), new a());
        }
        return this.f1702g.get(Integer.valueOf(i10));
    }

    public a u(int i10) {
        if (this.f1702g.containsKey(Integer.valueOf(i10))) {
            return this.f1702g.get(Integer.valueOf(i10));
        }
        return null;
    }

    public void v(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a s10 = s(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        s10.f1707e.f1724a = true;
                    }
                    this.f1702g.put(Integer.valueOf(s10.f1703a), s10);
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x01cb, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:42:0x00db. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void w(Context context, XmlPullParser xmlPullParser) {
        a s10;
        try {
            int eventType = xmlPullParser.getEventType();
            a aVar = null;
            while (eventType != 1) {
                if (eventType != 0) {
                    char c10 = 65535;
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        switch (name.hashCode()) {
                            case -2025855158:
                                if (name.equals("Layout")) {
                                    c10 = 6;
                                    break;
                                }
                                break;
                            case -1984451626:
                                if (name.equals("Motion")) {
                                    c10 = 7;
                                    break;
                                }
                                break;
                            case -1962203927:
                                if (name.equals("ConstraintOverride")) {
                                    c10 = 1;
                                    break;
                                }
                                break;
                            case -1269513683:
                                if (name.equals("PropertySet")) {
                                    c10 = 4;
                                    break;
                                }
                                break;
                            case -1238332596:
                                if (name.equals("Transform")) {
                                    c10 = 5;
                                    break;
                                }
                                break;
                            case -71750448:
                                if (name.equals("Guideline")) {
                                    c10 = 2;
                                    break;
                                }
                                break;
                            case 366511058:
                                if (name.equals("CustomMethod")) {
                                    c10 = '\t';
                                    break;
                                }
                                break;
                            case 1331510167:
                                if (name.equals("Barrier")) {
                                    c10 = 3;
                                    break;
                                }
                                break;
                            case 1791837707:
                                if (name.equals("CustomAttribute")) {
                                    c10 = '\b';
                                    break;
                                }
                                break;
                            case 1803088381:
                                if (name.equals("Constraint")) {
                                    c10 = 0;
                                    break;
                                }
                                break;
                        }
                        switch (c10) {
                            case 0:
                                s10 = s(context, Xml.asAttributeSet(xmlPullParser), false);
                                aVar = s10;
                                break;
                            case 1:
                                s10 = s(context, Xml.asAttributeSet(xmlPullParser), true);
                                aVar = s10;
                                break;
                            case 2:
                                s10 = s(context, Xml.asAttributeSet(xmlPullParser), false);
                                b bVar = s10.f1707e;
                                bVar.f1724a = true;
                                bVar.f1726b = true;
                                aVar = s10;
                                break;
                            case 3:
                                s10 = s(context, Xml.asAttributeSet(xmlPullParser), false);
                                s10.f1707e.f1741i0 = 1;
                                aVar = s10;
                                break;
                            case 4:
                                if (aVar != null) {
                                    aVar.f1705c.b(context, Xml.asAttributeSet(xmlPullParser));
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 5:
                                if (aVar != null) {
                                    aVar.f1708f.b(context, Xml.asAttributeSet(xmlPullParser));
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 6:
                                if (aVar != null) {
                                    aVar.f1707e.b(context, Xml.asAttributeSet(xmlPullParser));
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 7:
                                if (aVar != null) {
                                    aVar.f1706d.b(context, Xml.asAttributeSet(xmlPullParser));
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case '\b':
                            case '\t':
                                if (aVar != null) {
                                    androidx.constraintlayout.widget.a.h(context, xmlPullParser, aVar.f1709g);
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                        }
                    } else if (eventType == 3) {
                        String lowerCase = xmlPullParser.getName().toLowerCase(Locale.ROOT);
                        switch (lowerCase.hashCode()) {
                            case -2075718416:
                                if (lowerCase.equals("guideline")) {
                                    c10 = 3;
                                    break;
                                }
                                break;
                            case -190376483:
                                if (lowerCase.equals("constraint")) {
                                    c10 = 1;
                                    break;
                                }
                                break;
                            case 426575017:
                                if (lowerCase.equals("constraintoverride")) {
                                    c10 = 2;
                                    break;
                                }
                                break;
                            case 2146106725:
                                if (lowerCase.equals("constraintset")) {
                                    c10 = 0;
                                    break;
                                }
                                break;
                        }
                        if (c10 == 0) {
                            return;
                        }
                        if (c10 == 1 || c10 == 2 || c10 == 3) {
                            this.f1702g.put(Integer.valueOf(aVar.f1703a), aVar);
                            aVar = null;
                        }
                    }
                } else {
                    xmlPullParser.getName();
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }
}
