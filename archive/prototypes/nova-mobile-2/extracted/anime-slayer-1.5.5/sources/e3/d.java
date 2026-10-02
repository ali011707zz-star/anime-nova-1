package e3;

import android.graphics.Rect;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: LottieComposition.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: c, reason: collision with root package name */
    public Map<String, List<m3.d>> f6020c;

    /* renamed from: d, reason: collision with root package name */
    public Map<String, g> f6021d;

    /* renamed from: e, reason: collision with root package name */
    public Map<String, j3.c> f6022e;

    /* renamed from: f, reason: collision with root package name */
    public List<j3.h> f6023f;

    /* renamed from: g, reason: collision with root package name */
    public s.h<j3.d> f6024g;

    /* renamed from: h, reason: collision with root package name */
    public s.d<m3.d> f6025h;

    /* renamed from: i, reason: collision with root package name */
    public List<m3.d> f6026i;

    /* renamed from: j, reason: collision with root package name */
    public Rect f6027j;

    /* renamed from: k, reason: collision with root package name */
    public float f6028k;

    /* renamed from: l, reason: collision with root package name */
    public float f6029l;

    /* renamed from: m, reason: collision with root package name */
    public float f6030m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f6031n;

    /* renamed from: a, reason: collision with root package name */
    public final n f6018a = new n();

    /* renamed from: b, reason: collision with root package name */
    public final HashSet<String> f6019b = new HashSet<>();

    /* renamed from: o, reason: collision with root package name */
    public int f6032o = 0;

    public void a(String str) {
        q3.d.c(str);
        this.f6019b.add(str);
    }

    public Rect b() {
        return this.f6027j;
    }

    public s.h<j3.d> c() {
        return this.f6024g;
    }

    public float d() {
        return (e() / this.f6030m) * 1000.0f;
    }

    public float e() {
        return this.f6029l - this.f6028k;
    }

    public float f() {
        return this.f6029l;
    }

    public Map<String, j3.c> g() {
        return this.f6022e;
    }

    public float h(float f10) {
        return q3.g.k(this.f6028k, this.f6029l, f10);
    }

    public float i() {
        return this.f6030m;
    }

    public Map<String, g> j() {
        return this.f6021d;
    }

    public List<m3.d> k() {
        return this.f6026i;
    }

    public j3.h l(String str) {
        int size = this.f6023f.size();
        for (int i10 = 0; i10 < size; i10++) {
            j3.h hVar = this.f6023f.get(i10);
            if (hVar.a(str)) {
                return hVar;
            }
        }
        return null;
    }

    public int m() {
        return this.f6032o;
    }

    public n n() {
        return this.f6018a;
    }

    public List<m3.d> o(String str) {
        return this.f6020c.get(str);
    }

    public float p() {
        return this.f6028k;
    }

    public boolean q() {
        return this.f6031n;
    }

    public void r(int i10) {
        this.f6032o += i10;
    }

    public void s(Rect rect, float f10, float f11, float f12, List<m3.d> list, s.d<m3.d> dVar, Map<String, List<m3.d>> map, Map<String, g> map2, s.h<j3.d> hVar, Map<String, j3.c> map3, List<j3.h> list2) {
        this.f6027j = rect;
        this.f6028k = f10;
        this.f6029l = f11;
        this.f6030m = f12;
        this.f6026i = list;
        this.f6025h = dVar;
        this.f6020c = map;
        this.f6021d = map2;
        this.f6024g = hVar;
        this.f6022e = map3;
        this.f6023f = list2;
    }

    public m3.d t(long j10) {
        return this.f6025h.f(j10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        Iterator<m3.d> it2 = this.f6026i.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().y("\t"));
        }
        return sb2.toString();
    }

    public void u(boolean z10) {
        this.f6031n = z10;
    }

    public void v(boolean z10) {
        this.f6018a.b(z10);
    }
}
