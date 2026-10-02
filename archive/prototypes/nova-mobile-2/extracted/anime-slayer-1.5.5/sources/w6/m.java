package w6;

import android.app.Application;
import androidx.lifecycle.f0;
import androidx.lifecycle.j0;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k1.o0;
import k1.p0;
import k1.q0;
import k1.t0;

/* compiled from: SearchViewModel.kt */
/* loaded from: classes.dex */
public final class m extends androidx.lifecycle.b {

    /* renamed from: b, reason: collision with root package name */
    public final f0 f15324b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.e f15325c;

    /* renamed from: d, reason: collision with root package name */
    public SeriesEndpoint f15326d;

    /* renamed from: e, reason: collision with root package name */
    public o4.b f15327e;

    /* renamed from: f, reason: collision with root package name */
    public o4.b f15328f;

    /* renamed from: g, reason: collision with root package name */
    public uc.f<q0<p4.p>> f15329g;

    /* compiled from: SearchViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<t0<Integer, p4.p>> {
        public a() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t0<Integer, p4.p> invoke() {
            return new l(m.this.f15326d, m.this.l(), m.this.f15328f);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f15331f = new b();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public b() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(Application application, f0 f0Var) {
        super(application);
        jc.l.f(application, "application");
        jc.l.f(f0Var, "state");
        this.f15324b = f0Var;
        this.f15325c = vb.f.a(b.f15331f);
        this.f15326d = (SeriesEndpoint) z3.b.f17284d.getInstance(application).b(SeriesEndpoint.class);
        this.f15327e = new o4.b((o4.a<?>[]) new o4.a[0]);
        this.f15328f = new o4.b((o4.a<?>[]) new o4.a[0]);
        this.f15327e = h();
    }

    public final List<q> d() {
        return wb.l.l(new q("13+", null, 2, null), new q("17+", null, 2, null), new q("للجميع", "All"));
    }

    public final w6.a e() {
        o4.b bVar = this.f15327e;
        ArrayList arrayList = new ArrayList();
        for (o4.a<?> aVar : bVar) {
            if (aVar instanceof w6.a) {
                arrayList.add(aVar);
            }
        }
        return (w6.a) ((o4.a) wb.t.A(arrayList));
    }

    public final o4.b f() {
        return this.f15327e;
    }

    public final uc.f<q0<p4.p>> g() {
        uc.f<q0<p4.p>> fVar = this.f15329g;
        if (fVar != null) {
            return fVar;
        }
        uc.f<q0<p4.p>> a10 = k1.d.a(new o0(new p0(30, 5, false, 30, 0, 0, 48, null), null, new a(), 2, null).a(), j0.a(this));
        this.f15329g = a10;
        return a10;
    }

    public final o4.b h() {
        return new o4.b((o4.a<?>[]) new o4.a[]{new o(), new r(), new n(), new w6.a(d()), new t(s()), new p(wb.t.R(p())), new w6.b(j())});
    }

    public final w6.b i() {
        o4.b bVar = this.f15327e;
        ArrayList arrayList = new ArrayList();
        for (o4.a<?> aVar : bVar) {
            if (aVar instanceof w6.b) {
                arrayList.add(aVar);
            }
        }
        return (w6.b) ((o4.a) wb.t.A(arrayList));
    }

    public final List<q> j() {
        List<o4.d> list = k().e().get();
        ArrayList arrayList = new ArrayList(wb.m.q(list, 10));
        for (o4.d dVar : list) {
            arrayList.add(new q(dVar.c(), dVar.a()));
        }
        return arrayList;
    }

    public final f4.d k() {
        return (f4.d) this.f15325c.getValue();
    }

    public final String l() {
        String str = (String) this.f15324b.b("last_search_query");
        return str == null ? "" : str;
    }

    public final n m() {
        o4.b bVar = this.f15327e;
        ArrayList arrayList = new ArrayList();
        for (o4.a<?> aVar : bVar) {
            if (aVar instanceof n) {
                arrayList.add(aVar);
            }
        }
        return (n) ((o4.a) wb.t.A(arrayList));
    }

    public final o n() {
        o4.b bVar = this.f15327e;
        ArrayList arrayList = new ArrayList();
        for (o4.a<?> aVar : bVar) {
            if (aVar instanceof o) {
                arrayList.add(aVar);
            }
        }
        return (o) ((o4.a) wb.t.A(arrayList));
    }

    public final p o() {
        o4.b bVar = this.f15327e;
        ArrayList arrayList = new ArrayList();
        for (o4.a<?> aVar : bVar) {
            if (aVar instanceof p) {
                arrayList.add(aVar);
            }
        }
        return (p) ((o4.a) wb.t.A(arrayList));
    }

    public final List<q> p() {
        List<o4.g> list = k().f().get();
        ArrayList arrayList = new ArrayList(wb.m.q(list, 10));
        for (o4.g gVar : list) {
            arrayList.add(new q(gVar.c(), gVar.a()));
        }
        return arrayList;
    }

    public final r q() {
        o4.b bVar = this.f15327e;
        ArrayList arrayList = new ArrayList();
        for (o4.a<?> aVar : bVar) {
            if (aVar instanceof r) {
                arrayList.add(aVar);
            }
        }
        return (r) ((o4.a) wb.t.A(arrayList));
    }

    public final t r() {
        o4.b bVar = this.f15327e;
        ArrayList arrayList = new ArrayList();
        for (o4.a<?> aVar : bVar) {
            if (aVar instanceof t) {
                arrayList.add(aVar);
            }
        }
        return (t) ((o4.a) wb.t.A(arrayList));
    }

    public final List<q> s() {
        List<o4.h> list = k().g().get();
        ArrayList arrayList = new ArrayList(wb.m.q(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new q(((o4.h) it2.next()).a(), null, 2, null));
        }
        return arrayList;
    }

    public final void t(o4.b bVar) {
        jc.l.f(bVar, "sourceFilters");
        this.f15328f = bVar;
    }

    public final void u(String str) {
        jc.l.f(str, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        this.f15324b.d("last_search_query", str);
    }
}
