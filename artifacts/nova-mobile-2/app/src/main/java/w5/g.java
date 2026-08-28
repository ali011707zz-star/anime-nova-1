package w5;

import android.app.Activity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.y;
import cc.k;
import com.anslayer.api.endpoint.UserEndpoint;
import g7.c;
import ic.p;
import java.util.List;
import jc.l;
import p4.h;
import rc.q0;

/* compiled from: TopContributorsViewModel.kt */
/* loaded from: classes.dex */
public final class g extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final UserEndpoint f15256a;

    /* renamed from: b, reason: collision with root package name */
    public y<g7.c<List<h>>> f15257b;

    /* renamed from: c, reason: collision with root package name */
    public final LiveData<g7.c<List<h>>> f15258c;

    /* compiled from: TopContributorsViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final Activity f15259b;

        /* renamed from: c, reason: collision with root package name */
        public final UserEndpoint f15260c;

        public a(Activity activity) {
            l.f(activity, "activity");
            this.f15259b = activity;
            this.f15260c = (UserEndpoint) z3.b.f17284d.getInstance(activity).b(UserEndpoint.class);
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            return new g(this.f15260c);
        }
    }

    /* compiled from: TopContributorsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.contribution.TopContributorsViewModel$getTopContributors$1", f = "TopContributorsViewModel.kt", l = {24}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f15261f;

        public b(ac.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f15261f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    g.this.f15257b.o(c.b.f7022a);
                    UserEndpoint b10 = g.this.b();
                    this.f15261f = 1;
                    obj = b10.getContributors(this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                List list = (List) ((n4.c) obj).a();
                if (list == null) {
                    list = wb.l.i();
                }
                int i11 = 0;
                for (Object obj2 : list) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        wb.l.p();
                    }
                    ((h) obj2).j(i12);
                    i11 = i12;
                }
                g.this.f15257b.o(new c.C0133c(list));
            } catch (Exception e10) {
                g.this.f15257b.o(new c.a(e10));
            }
            return vb.p.f15031a;
        }
    }

    public g(UserEndpoint userEndpoint) {
        l.f(userEndpoint, "service");
        this.f15256a = userEndpoint;
        y<g7.c<List<h>>> yVar = new y<>();
        this.f15257b = yVar;
        this.f15258c = yVar;
        d();
    }

    public final UserEndpoint b() {
        return this.f15256a;
    }

    public final LiveData<g7.c<List<h>>> c() {
        return this.f15258c;
    }

    public final void d() {
        rc.k.d(j0.a(this), null, null, new b(null), 3, null);
    }
}
