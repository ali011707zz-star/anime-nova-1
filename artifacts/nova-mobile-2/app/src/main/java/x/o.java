package x;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: WidgetGroup.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: g, reason: collision with root package name */
    public static int f15613g;

    /* renamed from: b, reason: collision with root package name */
    public int f15615b;

    /* renamed from: d, reason: collision with root package name */
    public int f15617d;

    /* renamed from: a, reason: collision with root package name */
    public ArrayList<w.e> f15614a = new ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public boolean f15616c = false;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList<a> f15618e = null;

    /* renamed from: f, reason: collision with root package name */
    public int f15619f = -1;

    /* compiled from: WidgetGroup.java */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a, reason: collision with root package name */
        public WeakReference<w.e> f15620a;

        /* renamed from: b, reason: collision with root package name */
        public int f15621b;

        /* renamed from: c, reason: collision with root package name */
        public int f15622c;

        /* renamed from: d, reason: collision with root package name */
        public int f15623d;

        /* renamed from: e, reason: collision with root package name */
        public int f15624e;

        /* renamed from: f, reason: collision with root package name */
        public int f15625f;

        /* renamed from: g, reason: collision with root package name */
        public int f15626g;

        public a(w.e eVar, t.d dVar, int i10) {
            this.f15620a = new WeakReference<>(eVar);
            this.f15621b = dVar.y(eVar.N);
            this.f15622c = dVar.y(eVar.O);
            this.f15623d = dVar.y(eVar.P);
            this.f15624e = dVar.y(eVar.Q);
            this.f15625f = dVar.y(eVar.R);
            this.f15626g = i10;
        }
    }

    public o(int i10) {
        this.f15615b = -1;
        this.f15617d = 0;
        int i11 = f15613g;
        f15613g = i11 + 1;
        this.f15615b = i11;
        this.f15617d = i10;
    }

    public boolean a(w.e eVar) {
        if (this.f15614a.contains(eVar)) {
            return false;
        }
        this.f15614a.add(eVar);
        return true;
    }

    public void b(ArrayList<o> arrayList) {
        int size = this.f15614a.size();
        if (this.f15619f != -1 && size > 0) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                o oVar = arrayList.get(i10);
                if (this.f15619f == oVar.f15615b) {
                    g(this.f15617d, oVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public int c() {
        return this.f15615b;
    }

    public int d() {
        return this.f15617d;
    }

    public final String e() {
        int i10 = this.f15617d;
        return i10 == 0 ? "Horizontal" : i10 == 1 ? "Vertical" : i10 == 2 ? "Both" : "Unknown";
    }

    public int f(t.d dVar, int i10) {
        if (this.f15614a.size() == 0) {
            return 0;
        }
        return j(dVar, this.f15614a, i10);
    }

    public void g(int i10, o oVar) {
        Iterator<w.e> it2 = this.f15614a.iterator();
        while (it2.hasNext()) {
            w.e next = it2.next();
            oVar.a(next);
            if (i10 == 0) {
                next.G0 = oVar.c();
            } else {
                next.H0 = oVar.c();
            }
        }
        this.f15619f = oVar.f15615b;
    }

    public void h(boolean z10) {
        this.f15616c = z10;
    }

    public void i(int i10) {
        this.f15617d = i10;
    }

    public final int j(t.d dVar, ArrayList<w.e> arrayList, int i10) {
        int y10;
        int y11;
        w.f fVar = (w.f) arrayList.get(0).I();
        dVar.E();
        fVar.g(dVar, false);
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList.get(i11).g(dVar, false);
        }
        if (i10 == 0 && fVar.U0 > 0) {
            w.b.b(fVar, dVar, arrayList, 0);
        }
        if (i10 == 1 && fVar.V0 > 0) {
            w.b.b(fVar, dVar, arrayList, 1);
        }
        try {
            dVar.A();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f15618e = new ArrayList<>();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            this.f15618e.add(new a(arrayList.get(i12), dVar, i10));
        }
        if (i10 == 0) {
            y10 = dVar.y(fVar.N);
            y11 = dVar.y(fVar.P);
            dVar.E();
        } else {
            y10 = dVar.y(fVar.O);
            y11 = dVar.y(fVar.Q);
            dVar.E();
        }
        return y11 - y10;
    }

    public String toString() {
        String str = e() + " [" + this.f15615b + "] <";
        Iterator<w.e> it2 = this.f15614a.iterator();
        while (it2.hasNext()) {
            str = str + " " + it2.next().r();
        }
        return str + " >";
    }
}
