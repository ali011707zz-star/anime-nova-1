package o6;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import cc.k;
import com.anslayer.R;
import com.anslayer.api.endpoint.UserEndpoint;
import com.anslayer.ui.profile.people.PeopleProfileActivity;
import com.twitter.sdk.android.core.identity.AuthHandler;
import ic.l;
import io.wax911.support.util.InstanceUtil;
import java.util.List;
import jc.m;
import jc.y;
import o6.g;
import rc.g1;
import rc.q0;
import vb.p;

/* compiled from: BlockedUsersListFragment.kt */
/* loaded from: classes.dex */
public final class e extends p5.d<w4.a, r5.a, List<? extends w4.a>> {

    /* renamed from: w, reason: collision with root package name */
    public static final a f11759w = new a(null);

    /* renamed from: q, reason: collision with root package name */
    public final vb.e f11760q = vb.f.a(new h());

    /* renamed from: r, reason: collision with root package name */
    public final e7.d f11761r = new e7.d();

    /* renamed from: s, reason: collision with root package name */
    public final int f11762s = R.integer.single_list_size;

    /* renamed from: t, reason: collision with root package name */
    public final vb.e f11763t = vb.f.a(f.f11779f);

    /* renamed from: u, reason: collision with root package name */
    public final vb.e f11764u = c0.a(this, y.b(o6.g.class), new C0293e(new d(this)), new g());

    /* renamed from: v, reason: collision with root package name */
    public final vb.e f11765v = vb.f.a(new b());

    /* compiled from: BlockedUsersListFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<e, Bundle> {

        /* compiled from: BlockedUsersListFragment.kt */
        /* renamed from: o6.e$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0292a extends m implements l<Bundle, e> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0292a f11766f = new C0292a();

            public C0292a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final e invoke(Bundle bundle) {
                e eVar = new e();
                eVar.setArguments(bundle);
                return eVar;
            }
        }

        public a() {
            super(C0292a.f11766f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: BlockedUsersListFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<r5.a> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(e.this.getContext());
        }
    }

    /* compiled from: BlockedUsersListFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements l<s2.c, p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ long f11769g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ s3.c<w4.a> f11770h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ s2.c f11771i;

        /* compiled from: BlockedUsersListFragment.kt */
        @cc.f(c = "com.anslayer.ui.profile.self.blocked.BlockedUsersListFragment$showUnblockUserDialog$1$1$1", f = "BlockedUsersListFragment.kt", l = {82}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements ic.p<q0, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f11772f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ e f11773g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ long f11774h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ s3.c<w4.a> f11775i;

            /* renamed from: j, reason: collision with root package name */
            public final /* synthetic */ s2.c f11776j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(e eVar, long j10, s3.c<w4.a> cVar, s2.c cVar2, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f11773g = eVar;
                this.f11774h = j10;
                this.f11775i = cVar;
                this.f11776j = cVar2;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f11773g, this.f11774h, this.f11775i, this.f11776j, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f11772f;
                try {
                    if (i10 == 0) {
                        vb.k.b(obj);
                        UserEndpoint o02 = this.f11773g.o0();
                        jc.l.c(o02);
                        long j10 = this.f11774h;
                        this.f11772f = 1;
                        if (o02.unblockUser(j10, this) == d10) {
                            return d10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                    }
                    o6.d X = this.f11773g.X();
                    w4.a b10 = this.f11775i.b();
                    jc.l.e(b10, "data.second");
                    X.onItemRemoved(b10);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    Context context = this.f11776j.getContext();
                    jc.l.e(context, "context");
                    k7.b.q(context, R.string.text_request_error, 0, 2, null);
                }
                return p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(long j10, s3.c<w4.a> cVar, s2.c cVar2) {
            super(1);
            this.f11769g = j10;
            this.f11770h = cVar;
            this.f11771i = cVar2;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            rc.k.d(e.this, g1.c(), null, new a(e.this, this.f11769g, this.f11770h, this.f11771i, null), 2, null);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f11777f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Fragment fragment) {
            super(0);
            this.f11777f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f11777f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* renamed from: o6.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0293e extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f11778f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0293e(ic.a aVar) {
            super(0);
            this.f11778f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f11778f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: BlockedUsersListFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<o6.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f11779f = new f();

        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final o6.d invoke() {
            return new o6.d();
        }
    }

    /* compiled from: BlockedUsersListFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<l0.b> {
        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = e.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new g.a(requireActivity, e.this);
        }
    }

    /* compiled from: BlockedUsersListFragment.kt */
    /* loaded from: classes.dex */
    public static final class h extends m implements ic.a<UserEndpoint> {
        public h() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserEndpoint invoke() {
            Context context = e.this.getContext();
            if (context == null) {
                return null;
            }
            return (UserEndpoint) z3.b.f17284d.getInstance(context).b(UserEndpoint.class);
        }
    }

    @Override // p5.d
    public int S() {
        return this.f11762s;
    }

    @Override // p5.d
    public void Y(Bundle bundle) {
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        e7.d dVar = this.f11761r;
        dVar.d().put(AuthHandler.EXTRA_USER_ID, Long.valueOf(arguments.getLong(AuthHandler.EXTRA_USER_ID)));
    }

    @Override // p5.d
    public boolean a0(String str) {
        jc.l.f(str, "key");
        return false;
    }

    @Override // p5.d
    public int d0() {
        return R.string.action_retry;
    }

    @Override // n5.a
    public void e() {
        e7.d dVar = this.f11761r;
        dVar.d().put("_limit", 30);
        dVar.d().put("_offset", Integer.valueOf(p().getCurrentOffset()));
        Bundle bundle = new Bundle();
        bundle.putString("arg_json", this.f11761r.b());
        o6.g n02 = n0();
        if (n02 == null) {
            return;
        }
        n02.queryFor(bundle, getContext());
    }

    @Override // n5.a
    /* renamed from: l0, reason: merged with bridge method [inline-methods] */
    public r5.a p() {
        return (r5.a) this.f11765v.getValue();
    }

    @Override // n5.a
    public void m() {
        Z(R.string.empty_response);
    }

    @Override // p5.d
    /* renamed from: m0, reason: merged with bridge method [inline-methods] */
    public o6.d X() {
        return (o6.d) this.f11763t.getValue();
    }

    public o6.g n0() {
        return (o6.g) this.f11764u.getValue();
    }

    public final UserEndpoint o0() {
        return (UserEndpoint) this.f11760q.getValue();
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemClick(View view, s3.c<w4.a> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
        int id2 = view.getId();
        if (id2 == R.id.block) {
            r0(cVar, view);
        } else {
            if (id2 != R.id.thumbnail) {
                return;
            }
            q0(cVar);
        }
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemLongClick(View view, s3.c<w4.a> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
    }

    @Override // androidx.lifecycle.z
    /* renamed from: p0, reason: merged with bridge method [inline-methods] */
    public void B(List<w4.a> list) {
        b0(list, R.string.empty_response);
    }

    public final void q0(s3.c<w4.a> cVar) {
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        startActivity(PeopleProfileActivity.f4248l.a(activity, cVar.b().b()));
    }

    public final void r0(s3.c<w4.a> cVar, View view) {
        long b10 = cVar.b().b();
        String a10 = cVar.b().a();
        Context context = view.getContext();
        jc.l.e(context, "target.context");
        s2.c cVar2 = new s2.c(context, null, 2, null);
        s2.c.n(cVar2, null, "هل تريد الغاء الحظر عن " + a10 + " ؟", null, 5, null);
        s2.c.p(cVar2, null, "لا", null, 5, null);
        s2.c.v(cVar2, Integer.valueOf(R.string.Ok), null, new c(b10, cVar, cVar2), 2, null);
        cVar2.show();
    }
}
