package j6;

import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.y;
import cc.k;
import com.anslayer.R;
import com.anslayer.api.endpoint.UserEndpoint;
import g7.c;
import ic.p;
import java.util.List;
import jc.l;
import rc.q0;

/* compiled from: PeopleListViewModel.kt */
/* loaded from: classes.dex */
public final class g extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final UserEndpoint f8917a;

    /* renamed from: b, reason: collision with root package name */
    public final long f8918b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8919c;

    /* renamed from: d, reason: collision with root package name */
    public y<g7.c<List<w4.d>>> f8920d = new y<>();

    /* compiled from: PeopleListViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.people.anime.PeopleListViewModel$getPeopleList$1", f = "PeopleListViewModel.kt", l = {22}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f8921f;

        public a(ac.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new a(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f8921f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    UserEndpoint e10 = g.this.e();
                    l.c(e10);
                    long f10 = g.this.f();
                    this.f8921f = 1;
                    obj = e10.getUserList(f10, this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                w4.c cVar = (w4.c) obj;
                List c10 = wb.k.c();
                if (!cVar.b().isEmpty()) {
                    c10.add(new w4.d(R.string.favorite, cVar.b()));
                }
                if (!cVar.f().isEmpty()) {
                    c10.add(new w4.d(R.string.currently_watching, cVar.f()));
                }
                if (!cVar.d().isEmpty()) {
                    c10.add(new w4.d(R.string.plan_to_watch, cVar.d()));
                }
                if (!cVar.e().isEmpty()) {
                    c10.add(new w4.d(R.string.watched, cVar.e()));
                }
                if (!cVar.a().isEmpty()) {
                    c10.add(new w4.d(R.string.dropped, cVar.a()));
                }
                if (!cVar.c().isEmpty()) {
                    c10.add(new w4.d(R.string.on_hold, cVar.c()));
                }
                g.this.f8920d.o(new c.C0133c(wb.k.a(c10)));
            } catch (Exception e11) {
                g.this.f8920d.o(new c.a(e11));
            }
            return vb.p.f15031a;
        }
    }

    public g(UserEndpoint userEndpoint, long j10) {
        this.f8917a = userEndpoint;
        this.f8918b = j10;
    }

    public final void b() {
        rc.k.d(j0.a(this), null, null, new a(null), 3, null);
    }

    public final boolean c() {
        return this.f8919c;
    }

    public final y<g7.c<List<w4.d>>> d() {
        return this.f8920d;
    }

    public final UserEndpoint e() {
        return this.f8917a;
    }

    public final long f() {
        return this.f8918b;
    }

    public final void g(boolean z10) {
        this.f8919c = z10;
    }
}
