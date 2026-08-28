package s6;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.r;
import com.anslayer.R;
import com.anslayer.api.endpoint.RecommendationEndpoint;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.ui.profile.people.PeopleProfileActivity;
import com.anslayer.ui.profile.self.ProfileActivity;
import com.anslayer.ui.recommend.RecommendActivity;
import com.anslayer.ui.recommend.create.ComposerActivity;
import com.twitter.sdk.android.core.identity.AuthHandler;
import ic.p;
import io.wax911.support.util.InstanceUtil;
import java.util.List;
import jc.y;
import okhttp3.ResponseBody;
import rc.q0;
import rd.q;
import s6.m;
import z3.b;

/* compiled from: RecommendsFragment.kt */
/* loaded from: classes.dex */
public final class n extends p5.d<u4.a, r5.a, List<? extends u4.a>> {
    public static final a B = new a(null);

    /* renamed from: s, reason: collision with root package name */
    public boolean f13782s;

    /* renamed from: u, reason: collision with root package name */
    public String f13784u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f13785v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f13786w;

    /* renamed from: q, reason: collision with root package name */
    public final e7.d f13780q = new e7.d();

    /* renamed from: r, reason: collision with root package name */
    public final int f13781r = R.integer.single_list_size;

    /* renamed from: t, reason: collision with root package name */
    public final vb.e f13783t = vb.f.a(new j());

    /* renamed from: x, reason: collision with root package name */
    public final vb.e f13787x = vb.f.a(new b());

    /* renamed from: y, reason: collision with root package name */
    public final vb.e f13788y = vb.f.a(new g());

    /* renamed from: z, reason: collision with root package name */
    public final vb.e f13789z = vb.f.a(new f());
    public final vb.e A = c0.a(this, y.b(m.class), new i(new h(this)), new k());

    /* compiled from: RecommendsFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<n, Bundle> {

        /* compiled from: RecommendsFragment.kt */
        /* renamed from: s6.n$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0341a extends jc.m implements ic.l<Bundle, n> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0341a f13790f = new C0341a();

            public C0341a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final n invoke(Bundle bundle) {
                n nVar = new n();
                nVar.setArguments(bundle);
                return nVar;
            }
        }

        public a() {
            super(C0341a.f13790f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: RecommendsFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<w4.e> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final w4.e invoke() {
            return n.this.p().f();
        }
    }

    /* compiled from: RecommendsFragment.kt */
    @cc.f(c = "com.anslayer.ui.recommend.RecommendsFragment$deleteUserRecommendation$1", f = "RecommendsFragment.kt", l = {329}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f13792f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ u4.a f13794h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(u4.a aVar, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f13794h = aVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f13794h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f13792f;
            try {
            } catch (Exception unused) {
                androidx.fragment.app.e activity = n.this.getActivity();
                if (activity != null) {
                    k7.b.q(activity, R.string.text_request_error, 0, 2, null);
                }
            }
            if (i10 == 0) {
                vb.k.b(obj);
                RecommendationEndpoint q02 = n.this.q0();
                if (q02 == null) {
                    n.this.X().onItemRemoved(this.f13794h);
                    return vb.p.f15031a;
                }
                long i11 = this.f13794h.i();
                this.f13792f = 1;
                obj = q02.deleteRecommendation(i11, this);
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            n.this.X().onItemRemoved(this.f13794h);
            return vb.p.f15031a;
        }
    }

    /* compiled from: RecommendsFragment.kt */
    /* loaded from: classes.dex */
    public static final class d implements rd.d<ResponseBody> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s3.c<u4.a> f13795a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ n f13796b;

        public d(s3.c<u4.a> cVar, n nVar) {
            this.f13795a = cVar;
            this.f13796b = nVar;
        }

        @Override // rd.d
        public void onFailure(rd.b<ResponseBody> bVar, Throwable th) {
            jc.l.f(bVar, "call");
            jc.l.f(th, "t");
        }

        @Override // rd.d
        public void onResponse(rd.b<ResponseBody> bVar, q<ResponseBody> qVar) {
            jc.l.f(bVar, "call");
            jc.l.f(qVar, "response");
            if (jc.l.a(this.f13795a.b().r(), "Yes")) {
                this.f13795a.b().M("No");
                this.f13795a.b().D(this.f13795a.b().j() - 1);
                this.f13796b.X().notifyDataSetChanged();
            } else {
                this.f13795a.b().M("Yes");
                this.f13795a.b().D(this.f13795a.b().j() + 1);
                this.f13796b.X().notifyDataSetChanged();
            }
        }
    }

    /* compiled from: RecommendsFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ s3.c<u4.a> f13798g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(s3.c<u4.a> cVar) {
            super(1);
            this.f13798g = cVar;
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            n.this.n0(this.f13798g.b());
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: RecommendsFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.a<r5.a> {
        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(n.this.getContext());
        }
    }

    /* compiled from: RecommendsFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.a<RecommendationEndpoint> {
        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RecommendationEndpoint invoke() {
            Context context = n.this.getContext();
            if (context == null) {
                return null;
            }
            return (RecommendationEndpoint) z3.b.f17284d.getInstance(context).b(RecommendationEndpoint.class);
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f13801f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Fragment fragment) {
            super(0);
            this.f13801f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f13801f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f13802f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(ic.a aVar) {
            super(0);
            this.f13802f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f13802f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: RecommendsFragment.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<s6.g> {
        public j() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final s6.g invoke() {
            return new s6.g(n.this.f13782s);
        }
    }

    /* compiled from: RecommendsFragment.kt */
    /* loaded from: classes.dex */
    public static final class k extends jc.m implements ic.a<l0.b> {
        public k() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = n.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new m.a(requireActivity, n.this);
        }
    }

    @Override // p5.d
    public int S() {
        return this.f13781r;
    }

    @Override // p5.d
    public void Y(Bundle bundle) {
        I(R.menu.media_menu);
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f13784u = arguments.getString("list_type");
        this.f13785v = arguments.getBoolean("from_anime_details");
        this.f13786w = arguments.getBoolean("showAll");
        e7.d dVar = this.f13780q;
        dVar.d().put("list_type", this.f13784u);
        if (arguments.containsKey(AuthHandler.EXTRA_USER_ID)) {
            long j10 = arguments.getLong(AuthHandler.EXTRA_USER_ID);
            e7.d dVar2 = this.f13780q;
            dVar2.d().put(AuthHandler.EXTRA_USER_ID, Long.valueOf(j10));
        }
        if (arguments.containsKey("anime_id")) {
            long j11 = arguments.getLong("anime_id");
            e7.d dVar3 = this.f13780q;
            dVar3.d().put("anime_id", Long.valueOf(j11));
        }
        if (arguments.containsKey("self_recommendation")) {
            boolean z10 = arguments.getBoolean("self_recommendation");
            this.f13782s = z10;
            if (z10) {
                e7.d dVar4 = this.f13780q;
                dVar4.d().put("All", Boolean.TRUE);
            }
        }
        if (arguments.containsKey("arg_model")) {
            I(0);
            u4.a aVar = (u4.a) arguments.getParcelable("arg_model");
            if (aVar == null) {
                return;
            }
            e7.d dVar5 = this.f13780q;
            dVar5.d().put("anime_id", Long.valueOf(aVar.f()));
            dVar5.d().put("recommended_anime_id", Long.valueOf(aVar.o()));
            dVar5.d().put(AuthHandler.EXTRA_USER_ID, Long.valueOf(aVar.s()));
        }
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
        e7.d dVar = this.f13780q;
        dVar.d().put("_limit", 30);
        dVar.d().put("_offset", Integer.valueOf(p().getCurrentOffset()));
        if (!this.f13785v && jc.l.a(this.f13784u, "anime_recommendations")) {
            p().setPager(false);
            this.f13780q.d().put("_limit", 1);
            this.f13780q.d().put("list_type", "recommendation_details");
        }
        if (!this.f13785v && this.f13786w && jc.l.a(this.f13784u, "anime_recommendations")) {
            this.f13780q.d().put("_limit", 30);
            this.f13780q.d().put("list_type", "recommendation_details");
        }
        if (this.f13785v && jc.l.a(this.f13784u, "anime_recommendations")) {
            this.f13780q.d().put("_limit", 30);
            this.f13780q.d().put("list_type", "anime_recommendations");
        }
        if (jc.l.a(this.f13784u, "recommendation_details")) {
            this.f13780q.d().put("_order_by", "top_recommendations");
        }
        m s02 = s0();
        if (s02 == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("arg_request_type", "GET_RECOMMENDATIONS");
        bundle.putString("arg_json", this.f13780q.b());
        bundle.putBoolean("from_anime_details", this.f13785v);
        bundle.putString("list_type", this.f13784u);
        s02.queryFor(bundle, getContext());
    }

    @Override // n5.a
    public void m() {
        Z(R.string.empty_response);
    }

    public final void n0(u4.a aVar) {
        if (aVar == null) {
            return;
        }
        androidx.lifecycle.q viewLifecycleOwner = getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "viewLifecycleOwner");
        rc.k.d(r.a(viewLifecycleOwner), null, null, new c(aVar, null), 3, null);
    }

    public final w4.e o0() {
        return (w4.e) this.f13787x.getValue();
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        jc.l.f(menu, "menu");
        jc.l.f(menuInflater, "inflater");
        super.onCreateOptionsMenu(menu, menuInflater);
        MenuItem findItem = menu.findItem(R.id.action_add);
        if (findItem != null) {
            findItem.setVisible(!this.f13785v);
        }
        MenuItem findItem2 = menu.findItem(R.id.action_search);
        if (findItem2 != null) {
            findItem2.setVisible(false);
        }
        MenuItem findItem3 = menu.findItem(R.id.action_display_mode);
        if (findItem3 == null) {
            return;
        }
        findItem3.setVisible(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0149, code lost:
    
        if (r13 != false) goto L50;
     */
    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onItemClick(View view, s3.c<u4.a> cVar) {
        androidx.fragment.app.e activity;
        boolean z10;
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
        switch (view.getId()) {
            case R.id.delete /* 2131362156 */:
                if (!this.f13782s || (activity = getActivity()) == null) {
                    return;
                }
                s2.c.p(s2.c.v(s2.c.n(new s2.c(activity, null, 2, null), null, "هل انت متأكد من ازالة التوصية؟", null, 5, null), null, "ازالة", new e(cVar), 1, null), Integer.valueOf(R.string.Cancel), null, null, 6, null).show();
                return;
            case R.id.recommendationAuthor /* 2131362584 */:
            case R.id.recommendationAuthorAvatar /* 2131362585 */:
                w4.e o02 = o0();
                if (o02 != null && o02.D() == cVar.b().s()) {
                    f4.d e10 = p().e();
                    if (e10 == null || !e10.b()) {
                        z10 = false;
                        break;
                    } else {
                        z10 = true;
                        break;
                    }
                }
                r0 = false;
                androidx.fragment.app.e activity2 = getActivity();
                if (activity2 == null) {
                    return;
                }
                if (r0) {
                    startActivity(ProfileActivity.f4249l.a(activity2));
                    return;
                } else {
                    startActivity(PeopleProfileActivity.f4248l.a(activity2, cVar.b().s()));
                    return;
                }
            case R.id.recommendationLikeButton /* 2131362587 */:
                f4.d e11 = p().e();
                if (e11 == null ? false : e11.b()) {
                    w4.e f10 = p().f();
                    if (f10 != null && f10.D() == cVar.b().s()) {
                        return;
                    }
                    b.a aVar = z3.b.f17284d;
                    Context applicationContext = requireActivity().getApplicationContext();
                    jc.l.e(applicationContext, "requireActivity().applicationContext");
                    ((RecommendationEndpoint) aVar.getInstance(applicationContext).b(RecommendationEndpoint.class)).likeAnimeRecommendation(cVar.b().i()).c0(new d(cVar, this));
                    return;
                }
                Toast.makeText(getContext(), R.string.text_login_required, 0).show();
                return;
            case R.id.recommendationReadMore /* 2131362589 */:
                Context context = getContext();
                if (context == null) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable("arg_model", cVar.b());
                if (this.f13785v) {
                    bundle.putBoolean("showAll", true);
                }
                bundle.putString("list_type", "anime_recommendations");
                Intent intent = new Intent(context, (Class<?>) RecommendActivity.class);
                intent.setFlags(268435456);
                intent.putExtras(bundle);
                context.startActivity(intent);
                return;
            case R.id.seriesImage /* 2131362653 */:
                androidx.fragment.app.e activity3 = getActivity();
                if (activity3 == null) {
                    return;
                }
                u4.a b10 = cVar.b();
                startActivity(SeriesActivity.f4161l.a(activity3, b10.f(), b10.g(), b10.v(), b10.w()));
                return;
            case R.id.seriesImageRecommended /* 2131362654 */:
                androidx.fragment.app.e activity4 = getActivity();
                if (activity4 == null) {
                    return;
                }
                u4.a b11 = cVar.b();
                startActivity(SeriesActivity.f4161l.a(activity4, b11.o(), b11.p(), b11.y(), b11.w()));
                return;
            default:
                return;
        }
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemLongClick(View view, s3.c<u4.a> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_add) {
            f4.d e10 = p().e();
            if (!((e10 == null || e10.b()) ? false : true)) {
                androidx.fragment.app.e activity = getActivity();
                Bundle bundle = new Bundle();
                Intent intent = new Intent(activity, (Class<?>) ComposerActivity.class);
                intent.setFlags(268435456);
                intent.putExtras(bundle);
                if (activity == null) {
                    return true;
                }
                activity.startActivity(intent);
                return true;
            }
            Toast.makeText(getContext(), R.string.text_authentication_required, 0).show();
            return true;
        }
        return super.onContextItemSelected(menuItem);
    }

    @Override // n5.a
    /* renamed from: p0, reason: merged with bridge method [inline-methods] */
    public r5.a p() {
        return (r5.a) this.f13789z.getValue();
    }

    public final RecommendationEndpoint q0() {
        return (RecommendationEndpoint) this.f13788y.getValue();
    }

    @Override // p5.d
    /* renamed from: r0, reason: merged with bridge method [inline-methods] */
    public s6.g X() {
        return (s6.g) this.f13783t.getValue();
    }

    public m s0() {
        return (m) this.A.getValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: t0, reason: merged with bridge method [inline-methods] */
    public void B(List<u4.a> list) {
        b0(list, R.string.empty_response);
    }
}
