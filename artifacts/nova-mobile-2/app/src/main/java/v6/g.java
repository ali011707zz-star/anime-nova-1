package v6;

import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.y;
import cc.k;
import com.anslayer.api.endpoint.SeriesEndpoint;
import ic.p;
import ja.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import jc.l;
import p4.o;
import rc.q0;
import wb.c0;
import wb.m;
import x4.f;

/* compiled from: ScheduleViewModel.kt */
/* loaded from: classes.dex */
public final class g extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final SeriesEndpoint f14861a;

    /* renamed from: b, reason: collision with root package name */
    public y<x4.f<List<o>>> f14862b = new y<>();

    /* compiled from: ScheduleViewModel.kt */
    @cc.f(c = "com.anslayer.ui.schedule.ScheduleViewModel$getAnimeScheduleFlow$1", f = "ScheduleViewModel.kt", l = {29}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14863f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ n f14865h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(n nVar, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f14865h = nVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new a(this.f14865h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f14863f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    SeriesEndpoint f10 = g.this.f();
                    l.c(f10);
                    String lVar = this.f14865h.toString();
                    this.f14863f = 1;
                    obj = f10.seriesScheduleV2(lVar, this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                n4.d dVar = (n4.d) ((n4.c) obj).a();
                Map map = dVar == null ? null : (Map) dVar.b();
                if (map == null) {
                    map = c0.d();
                }
                ArrayList arrayList = new ArrayList();
                g gVar = g.this;
                for (Map.Entry entry : map.entrySet()) {
                    o.b bVar = new o.b(gVar.c((String) entry.getKey()));
                    Iterable iterable = (Iterable) entry.getValue();
                    ArrayList arrayList2 = new ArrayList(m.q(iterable, 10));
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(new o.a((p4.p) it2.next()));
                    }
                    arrayList.add(bVar);
                    arrayList.addAll(arrayList2);
                }
                g.this.f14862b.o(new f.b(arrayList));
            } catch (Exception e10) {
                g.this.f14862b.o(new f.a(e10));
            }
            return vb.p.f15031a;
        }
    }

    public g(SeriesEndpoint seriesEndpoint) {
        this.f14861a = seriesEndpoint;
        d();
    }

    public final String c(String str) {
        switch (str.hashCode()) {
            case -2049557543:
                return !str.equals("Saturday") ? "غير معرف" : "السبت";
            case -1984635600:
                return !str.equals("Monday") ? "غير معرف" : "الإثنين";
            case -1807319568:
                return !str.equals("Sunday") ? "غير معرف" : "الأحد";
            case -897468618:
                return !str.equals("Wednesday") ? "غير معرف" : "الأربعاء";
            case 687309357:
                return !str.equals("Tuesday") ? "غير معرف" : "الثلاثاء";
            case 1636699642:
                return !str.equals("Thursday") ? "غير معرف" : "الخميس";
            case 2112549247:
                return !str.equals("Friday") ? "غير معرف" : "الجمعة";
            default:
                return "غير معرف";
        }
    }

    public final void d() {
        rc.k.d(j0.a(this), null, null, new a(com.github.salomonbrys.kotson.a.b(vb.n.a("list_type", "schedule")), null), 3, null);
    }

    public final y<x4.f<List<o>>> e() {
        return this.f14862b;
    }

    public final SeriesEndpoint f() {
        return this.f14861a;
    }
}
