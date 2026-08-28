package u5;

import android.os.Bundle;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.y;
import androidx.lifecycle.z;
import com.anslayer.api.endpoint.UserEndpoint;
import g7.c;
import io.wax911.support.custom.viewmodel.SupportViewModel;
import java.util.List;
import rc.q0;

/* compiled from: CommentViewModel.kt */
/* loaded from: classes.dex */
public final class p extends SupportViewModel<List<? extends m4.b>, Bundle> {

    /* renamed from: a, reason: collision with root package name */
    public y<g7.a<g7.c<m4.b>>> f14421a;

    /* renamed from: b, reason: collision with root package name */
    public final LiveData<g7.a<g7.c<m4.b>>> f14422b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.e f14423c;

    /* compiled from: CommentViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.e f14424b;

        /* renamed from: c, reason: collision with root package name */
        public final z<List<m4.b>> f14425c;

        public a(androidx.fragment.app.e eVar, z<List<m4.b>> zVar) {
            jc.l.f(eVar, "context");
            jc.l.f(zVar, "observer");
            this.f14424b = eVar;
            this.f14425c = zVar;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            jc.l.f(cls, "modelClass");
            return new p(this.f14424b, this.f14425c);
        }
    }

    /* compiled from: CommentViewModel.kt */
    @cc.f(c = "com.anslayer.ui.comment.CommentViewModel$blockUser$1", f = "CommentViewModel.kt", l = {31}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14426f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ m4.b f14428h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(m4.b bVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f14428h = bVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f14428h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f14426f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    p.this.f14421a.o(new g7.a(c.b.f7022a));
                    UserEndpoint e10 = p.this.e();
                    long u10 = this.f14428h.u();
                    this.f14426f = 1;
                    if (e10.blockUser(u10, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                p.this.f14421a.o(new g7.a(new c.C0133c(this.f14428h)));
            } catch (Exception e11) {
                e11.printStackTrace();
                p.this.f14421a.o(new g7.a(new c.a(e11)));
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: CommentViewModel.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<UserEndpoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.e f14429f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(androidx.fragment.app.e eVar) {
            super(0);
            this.f14429f = eVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserEndpoint invoke() {
            return (UserEndpoint) z3.b.f17284d.getInstance(this.f14429f).b(UserEndpoint.class);
        }
    }

    public p(androidx.fragment.app.e eVar, z<List<m4.b>> zVar) {
        jc.l.f(eVar, "context");
        jc.l.f(zVar, "observer");
        y<g7.a<g7.c<m4.b>>> yVar = new y<>();
        this.f14421a = yVar;
        this.f14422b = yVar;
        this.f14423c = vb.f.a(new c(eVar));
        o newInstance = o.f14412b.newInstance();
        newInstance.registerObserver(eVar, zVar);
        setRepository(newInstance);
    }

    public final void c(m4.b bVar) {
        jc.l.f(bVar, "model");
        rc.k.d(j0.a(this), null, null, new b(bVar, null), 3, null);
    }

    public final LiveData<g7.a<g7.c<m4.b>>> d() {
        return this.f14422b;
    }

    public final UserEndpoint e() {
        return (UserEndpoint) this.f14423c.getValue();
    }
}
