package h5;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.z;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.a;
import com.anslayer.R;
import com.anslayer.data.ListManagementWorker;
import com.anslayer.ui.comment.CommentActivity;
import com.anslayer.ui.servers.ServerActivity;
import com.anslayer.widget.SupportRefreshLayout;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import d2.n;
import d2.u;
import d2.v;
import h5.a;
import h5.l;
import ic.p;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import io.wax911.support.util.InstanceUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import jc.y;
import okhttp3.internal.http2.Http2;
import org.apache.http.impl.auth.NTLMEngineImpl;
import rc.g1;
import rc.q0;

/* compiled from: EpisodeFragment.kt */
/* loaded from: classes.dex */
public final class g extends p5.d<p4.k, h5.h, List<? extends p4.k>> {

    /* renamed from: x, reason: collision with root package name */
    public static final a f7290x = new a(null);

    /* renamed from: q, reason: collision with root package name */
    public final vb.e f7291q = vb.f.a(new i());

    /* renamed from: r, reason: collision with root package name */
    public final int f7292r = R.integer.single_list_size;

    /* renamed from: s, reason: collision with root package name */
    public final vb.e f7293s = vb.f.a(l.f7315f);

    /* renamed from: t, reason: collision with root package name */
    public final vb.e f7294t = vb.f.a(h.f7311f);

    /* renamed from: u, reason: collision with root package name */
    public final vb.e f7295u = vb.f.a(new f());

    /* renamed from: v, reason: collision with root package name */
    public final vb.e f7296v = c0.a(this, y.b(h5.l.class), new k(new j(this)), new m());

    /* renamed from: w, reason: collision with root package name */
    public final z<u> f7297w = new z() { // from class: h5.f
        @Override // androidx.lifecycle.z
        public final void B(Object obj) {
            g.r0(g.this, (u) obj);
        }
    };

    /* compiled from: EpisodeFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<g, Bundle> {

        /* compiled from: EpisodeFragment.kt */
        /* renamed from: h5.g$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0140a extends jc.m implements ic.l<Bundle, g> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0140a f7298f = new C0140a();

            public C0140a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final g invoke(Bundle bundle) {
                g gVar = new g();
                gVar.setArguments(bundle);
                return gVar;
            }
        }

        public a() {
            super(C0140a.f7298f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: EpisodeFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7299a;

        static {
            int[] iArr = new int[u.a.values().length];
            iArr[u.a.SUCCEEDED.ordinal()] = 1;
            f7299a = iArr;
        }
    }

    /* compiled from: EpisodeFragment.kt */
    @cc.f(c = "com.anslayer.ui.anime.episodes.EpisodeFragment$onActivityResult$1", f = "EpisodeFragment.kt", l = {311, 312}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7300f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ ArrayList<String> f7302h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ArrayList<String> arrayList, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f7302h = arrayList;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f7302h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object k10;
            Object d10 = bc.c.d();
            int i10 = this.f7300f;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
                k10 = obj;
            } else {
                vb.k.b(obj);
                List<p4.k> v10 = g.this.X().v();
                ArrayList<String> arrayList = this.f7302h;
                ArrayList arrayList2 = new ArrayList(wb.m.q(v10, 10));
                for (p4.k kVar : v10) {
                    boolean z10 = false;
                    if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
                        Iterator<T> it2 = arrayList.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            if (jc.l.a((String) it2.next(), String.valueOf(kVar.e()))) {
                                z10 = true;
                                break;
                            }
                        }
                    }
                    if (z10) {
                        kVar = kVar.a((r37 & 1) != 0 ? kVar.episode_id : 0L, (r37 & 2) != 0 ? kVar.episode_name : null, (r37 & 4) != 0 ? kVar.episode_number : 0, (r37 & 8) != 0 ? kVar.episode_rating : null, (r37 & 16) != 0 ? kVar.episode_rating_by_user : null, (r37 & 32) != 0 ? kVar.episode_watched_history : "Yes", (r37 & 64) != 0 ? kVar.episode_rating_user_count : null, (r37 & 128) != 0 ? kVar.episode_already_rated_by_user : null, (r37 & 256) != 0 ? kVar.episode_urls : null, (r37 & 512) != 0 ? kVar.next_episode : null, (r37 & RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE) != 0 ? kVar.previous_episode : null, (r37 & RecyclerView.e0.FLAG_MOVED) != 0 ? kVar.ol4_str : null, (r37 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0 ? kVar.is_ol4 : null, (r37 & RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? kVar.ol4_patt : null, (r37 & Http2.INITIAL_MAX_FRAME_SIZE) != 0 ? kVar.seriesId : null, (r37 & NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN) != 0 ? kVar.allow_comment : null, (r37 & 65536) != 0 ? kVar.skip_from : null, (r37 & 131072) != 0 ? kVar.skip_to : null);
                    }
                    arrayList2.add(kVar);
                }
                g.this.X().w(arrayList2);
                h5.h p10 = g.this.p();
                this.f7300f = 1;
                k10 = p10.k(arrayList2, this);
                if (k10 == d10) {
                    return d10;
                }
            }
            h5.a X = g.this.X();
            this.f7300f = 2;
            if (X.A((List) k10, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: EpisodeFragment.kt */
    @cc.f(c = "com.anslayer.ui.anime.episodes.EpisodeFragment$onChanged$1", f = "EpisodeFragment.kt", l = {185}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7303f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ List<p4.k> f7304g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ g f7305h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(List<p4.k> list, g gVar, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f7304g = list;
            this.f7305h = gVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f7304g, this.f7305h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f7303f;
            if (i10 == 0) {
                vb.k.b(obj);
                if (this.f7304g != null) {
                    this.f7305h.X().w(this.f7304g);
                    h5.h p10 = this.f7305h.p();
                    List<p4.k> v10 = this.f7305h.X().v();
                    this.f7303f = 1;
                    obj = p10.k(v10, this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    this.f7305h.b0(null, R.string.empty_response);
                    return vb.p.f15031a;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            this.f7305h.b0((List) obj, R.string.empty_response);
            return vb.p.f15031a;
        }
    }

    /* compiled from: EpisodeFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.l<s2.c, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Bundle f7307g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Bundle bundle) {
            super(1);
            this.f7307g = bundle;
        }

        public final void a(s2.c cVar) {
            bb.f<Boolean> h10;
            jc.l.f(cVar, "it");
            f4.d e10 = g.this.p().e();
            if (e10 != null && (h10 = e10.h()) != null) {
                h10.set(Boolean.FALSE);
            }
            Context context = g.this.getContext();
            Bundle bundle = this.f7307g;
            Intent intent = new Intent(context, (Class<?>) CommentActivity.class);
            intent.setFlags(268435456);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            if (context == null) {
                return;
            }
            context.startActivity(intent);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: EpisodeFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.a<h5.h> {
        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final h5.h invoke() {
            return new h5.h(g.this.getContext());
        }
    }

    /* compiled from: EpisodeFragment.kt */
    @cc.f(c = "com.anslayer.ui.anime.episodes.EpisodeFragment$refreshEpisodes$1", f = "EpisodeFragment.kt", l = {166, 167}, m = "invokeSuspend")
    /* renamed from: h5.g$g, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0141g extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7309f;

        public C0141g(ac.d<? super C0141g> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new C0141g(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((C0141g) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0054  */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            androidx.fragment.app.e activity;
            Object d10 = bc.c.d();
            int i10 = this.f7309f;
            if (i10 == 0) {
                vb.k.b(obj);
                h5.h p10 = g.this.p();
                List<p4.k> v10 = g.this.X().v();
                this.f7309f = 1;
                obj = p10.k(v10, this);
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    activity = g.this.getActivity();
                    if (activity != null) {
                        activity.invalidateOptionsMenu();
                    }
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
            }
            h5.a X = g.this.X();
            this.f7309f = 2;
            if (X.A((List) obj, this) == d10) {
                return d10;
            }
            activity = g.this.getActivity();
            if (activity != null) {
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: EpisodeFragment.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.a<e7.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final h f7311f = new h();

        public h() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e7.d invoke() {
            return new e7.d();
        }
    }

    /* compiled from: EpisodeFragment.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.a<Long> {
        public i() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long invoke() {
            Bundle arguments = g.this.getArguments();
            if (arguments == null) {
                return null;
            }
            return Long.valueOf(arguments.getLong("anime_id"));
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f7313f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(Fragment fragment) {
            super(0);
            this.f7313f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f7313f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class k extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f7314f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(ic.a aVar) {
            super(0);
            this.f7314f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f7314f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: EpisodeFragment.kt */
    /* loaded from: classes.dex */
    public static final class l extends jc.m implements ic.a<h5.a> {

        /* renamed from: f, reason: collision with root package name */
        public static final l f7315f = new l();

        public l() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final h5.a invoke() {
            return new h5.a();
        }
    }

    /* compiled from: EpisodeFragment.kt */
    /* loaded from: classes.dex */
    public static final class m extends jc.m implements ic.a<l0.b> {
        public m() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = g.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new l.a(requireActivity, g.this);
        }
    }

    public static final void r0(g gVar, u uVar) {
        jc.l.f(gVar, "this$0");
        u.a a10 = uVar == null ? null : uVar.a();
        if ((a10 == null ? -1 : b.f7299a[a10.ordinal()]) == 1) {
            gVar.toString();
        } else {
            gVar.toString();
        }
    }

    public static /* synthetic */ void v0(g gVar, androidx.work.a aVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        gVar.u0(aVar, z10);
    }

    @Override // p5.d
    public int S() {
        return this.f7292r;
    }

    @Override // p5.d
    public void Y(Bundle bundle) {
        I(R.menu.episode_menu);
        p().setPager(false);
    }

    @Override // p5.d
    public boolean a0(String str) {
        jc.l.f(str, "key");
        return false;
    }

    @Override // p5.d
    public void b0(List<? extends p4.k> list, int i10) {
        if (list != null && list.isEmpty()) {
            X().s(p());
            X().p(this);
            X().t(F());
            SupportRecyclerView V = V();
            if (V != null) {
                V.setAdapter(X());
            }
            ProgressLayout T = T();
            if (T == null) {
                return;
            }
            SupportExtentionKt.showLoadedContent(T);
            return;
        }
        if (list != null) {
            X().onItemsInserted(list);
            SupportRefreshLayout W = W();
            if (W != null) {
                l7.f.b(W);
            }
            m();
            return;
        }
        if (!X().j()) {
            k7.b.m(getContext(), T(), i10, d0(), U());
        }
        SupportRefreshLayout W2 = W();
        if (W2 == null) {
            return;
        }
        l7.f.b(W2);
    }

    @Override // p5.d
    public int d0() {
        return R.string.action_retry;
    }

    @Override // n5.a
    public void e() {
        h5.l q02 = q0();
        if (q02 == null) {
            return;
        }
        Bundle bundle = new Bundle();
        e7.d n02 = n0();
        n02.d().put("anime_id", o0());
        n02.d().put("more_info", "No");
        bundle.putString("arg_json", n02.b());
        bundle.putString("arg_request_type", "GET_SERIES_EPISODES");
        q02.queryFor(bundle, getContext());
    }

    public final a.b l0(p4.k kVar) {
        SupportRecyclerView V = V();
        RecyclerView.e0 findViewHolderForItemId = V == null ? null : V.findViewHolderForItemId(kVar.e());
        if (findViewHolderForItemId instanceof a.b) {
            return (a.b) findViewHolderForItemId;
        }
        return null;
    }

    @Override // n5.a
    public void m() {
        Z(R.string.empty_response);
    }

    @Override // n5.a
    /* renamed from: m0, reason: merged with bridge method [inline-methods] */
    public h5.h p() {
        return (h5.h) this.f7295u.getValue();
    }

    public final e7.d n0() {
        return (e7.d) this.f7294t.getValue();
    }

    public final Long o0() {
        return (Long) this.f7291q.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        ArrayList<String> stringArrayListExtra;
        if (i10 != 30243 || intent == null || i11 != -1 || (stringArrayListExtra = intent.getStringArrayListExtra("episode_ids")) == null) {
            return;
        }
        rc.k.d(this, null, null, new c(stringArrayListExtra, null), 3, null);
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemClick(View view, s3.c<p4.k> cVar) {
        Long o02;
        bb.f<Boolean> h10;
        s2.c a10;
        s2.c y10;
        s2.c n10;
        s2.c v10;
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
        int id2 = view.getId();
        Integer valueOf = Integer.valueOf(R.string.Ok);
        switch (id2) {
            case R.id.container /* 2131362119 */:
                if (SupportExtentionKt.isConnectedToNetwork(getActivity())) {
                    androidx.fragment.app.e activity = getActivity();
                    if (activity == null || (o02 = o0()) == null) {
                        return;
                    }
                    long longValue = o02.longValue();
                    String valueOf2 = String.valueOf(cVar.b().e());
                    Bundle arguments = getArguments();
                    String string = arguments != null ? arguments.getString("arg_title") : null;
                    if (string == null) {
                        return;
                    }
                    startActivityForResult(ServerActivity.f4340o.a(activity, longValue, valueOf2, string, cVar.b().f()), 30243);
                    return;
                }
                Toast.makeText(getActivity(), "تأكد من اتصالك بالانترنت", 0).show();
                return;
            case R.id.episodeComment /* 2131362215 */:
                Bundle bundle = new Bundle();
                long e10 = cVar.b().e();
                e7.d dVar = new e7.d();
                dVar.d().put("episode_id", Long.valueOf(e10));
                bundle.putString("arg_json", dVar.b());
                bundle.putString("arg_request_type", "GET_EPISODE_COMMENTS");
                Long o03 = o0();
                bundle.putLong("anime_id", o03 == null ? 0L : o03.longValue());
                f4.d e11 = p().e();
                if ((e11 == null || (h10 = e11.h()) == null || !h10.get().booleanValue()) ? false : true) {
                    Context requireContext = requireContext();
                    jc.l.e(requireContext, "requireContext()");
                    s2.c.p(s2.c.v(s2.c.n(new s2.c(requireContext, null, 2, null), Integer.valueOf(R.string.comment_content_warning), null, null, 6, null), valueOf, null, new e(bundle), 2, null), Integer.valueOf(R.string.Cancel), null, null, 6, null).show();
                    return;
                }
                Context context = getContext();
                Intent intent = new Intent(context, (Class<?>) CommentActivity.class);
                intent.setFlags(268435456);
                intent.putExtras(bundle);
                if (context == null) {
                    return;
                }
                context.startActivity(intent);
                return;
            case R.id.episodeFiller /* 2131362217 */:
                androidx.fragment.app.e activity2 = getActivity();
                if (activity2 == null || (a10 = k7.c.a(activity2)) == null || (y10 = s2.c.y(a10, Integer.valueOf(R.string.what_is_filler), null, 2, null)) == null || (n10 = s2.c.n(y10, Integer.valueOf(R.string.filler_is), null, null, 6, null)) == null || (v10 = s2.c.v(n10, valueOf, null, null, 6, null)) == null) {
                    return;
                }
                v10.show();
                return;
            case R.id.episodeWatchedIndicator /* 2131362222 */:
                f4.d e12 = p().e();
                if (e12 != null && e12.b()) {
                    p4.k b10 = cVar.b();
                    jc.l.e(b10, "episode");
                    a.b l02 = l0(b10);
                    if (l02 == null) {
                        return;
                    }
                    String n11 = b10.n();
                    String str = jc.l.a(n11 != null ? Boolean.valueOf(e7.e.a(n11)) : null, Boolean.TRUE) ? "REMOVE_EPISODE_TO_WATCH_HISTORY" : "ADD_EPISODE_TO_WATCH_HISTORY";
                    w0(cVar, jc.l.a(str, "REMOVE_EPISODE_TO_WATCH_HISTORY") ? "No" : "Yes", str, l02);
                    return;
                }
                Toast.makeText(getContext(), R.string.text_authentication_required, 0).show();
                return;
            default:
                return;
        }
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemLongClick(View view, s3.c<p4.k> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId != R.id.action_sort_toggle) {
            switch (itemId) {
                case R.id.action_filter_empty /* 2131361869 */:
                    p().r();
                    t0();
                    break;
                case R.id.action_filter_filler /* 2131361870 */:
                    menuItem.setChecked(!menuItem.isChecked());
                    p().w(menuItem.isChecked());
                    t0();
                    break;
                case R.id.action_filter_unfiller /* 2131361871 */:
                    menuItem.setChecked(!menuItem.isChecked());
                    p().z(menuItem.isChecked());
                    t0();
                    break;
                case R.id.action_filter_unwatched /* 2131361872 */:
                    menuItem.setChecked(!menuItem.isChecked());
                    p().A(menuItem.isChecked());
                    t0();
                    break;
                case R.id.action_filter_watched /* 2131361873 */:
                    menuItem.setChecked(!menuItem.isChecked());
                    p().C(menuItem.isChecked());
                    t0();
                    break;
            }
        } else {
            p().s();
            X().z();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem;
        MenuItem findItem2;
        MenuItem findItem3;
        MenuItem findItem4;
        jc.l.f(menu, "menu");
        MenuItem findItem5 = menu.findItem(R.id.action_filter_watched);
        if (findItem5 == null || (findItem = menu.findItem(R.id.action_filter_unwatched)) == null || (findItem2 = menu.findItem(R.id.action_filter_filler)) == null || (findItem3 = menu.findItem(R.id.action_filter_unfiller)) == null || (findItem4 = menu.findItem(R.id.action_filter_empty)) == null) {
            return;
        }
        findItem5.setChecked(p().q());
        findItem.setChecked(p().p());
        findItem2.setChecked(p().n());
        findItem3.setChecked(p().o());
        boolean z10 = p().q() || p().p() || p().n() || p().o();
        if (z10) {
            androidx.fragment.app.e requireActivity = requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            i0.a.n(menu.findItem(R.id.action_filter).getIcon(), SupportExtentionKt.getCompatColor(requireActivity, R.color.colorStateOrange));
        }
        findItem4.setVisible(z10);
        if (p().q()) {
            findItem.setEnabled(false);
        }
        if (p().p()) {
            findItem5.setEnabled(false);
        }
        if (p().n()) {
            findItem3.setEnabled(false);
        }
        if (p().o()) {
            findItem2.setEnabled(false);
        }
    }

    @Override // p5.d
    /* renamed from: p0, reason: merged with bridge method [inline-methods] */
    public h5.a X() {
        return (h5.a) this.f7293s.getValue();
    }

    public h5.l q0() {
        return (h5.l) this.f7296v.getValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: s0, reason: merged with bridge method [inline-methods] */
    public void B(List<p4.k> list) {
        rc.k.d(this, g1.c(), null, new d(list, this, null), 2, null);
    }

    public final void t0() {
        rc.k.d(this, g1.c(), null, new C0141g(null), 2, null);
    }

    public final void u0(androidx.work.a aVar, boolean z10) {
        n b10 = new n.a(ListManagementWorker.class).g(aVar).b();
        jc.l.e(b10, "Builder(ListManagementWo…ata)\n            .build()");
        n nVar = b10;
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        v i10 = v.i(activity);
        i10.g("ListManagementWorker#Episode0003", d2.f.REPLACE, nVar);
        if (z10) {
            i10.j(nVar.a()).i(activity, this.f7297w);
        }
    }

    public final void w0(s3.c<p4.k> cVar, String str, String str2, a.b bVar) {
        p4.k a10;
        androidx.work.a a11 = new a.C0058a().f("episode_id", cVar.b().e()).g("episode_ids", String.valueOf(cVar.b().e())).g("arg_request_type", str2).a();
        jc.l.e(a11, "Builder()\n            .p…ion)\n            .build()");
        Object obj = null;
        v0(this, a11, false, 2, null);
        try {
            p4.k b10 = cVar.b();
            jc.l.e(b10, "data.second");
            a10 = r5.a((r37 & 1) != 0 ? r5.episode_id : 0L, (r37 & 2) != 0 ? r5.episode_name : null, (r37 & 4) != 0 ? r5.episode_number : 0, (r37 & 8) != 0 ? r5.episode_rating : null, (r37 & 16) != 0 ? r5.episode_rating_by_user : null, (r37 & 32) != 0 ? r5.episode_watched_history : str, (r37 & 64) != 0 ? r5.episode_rating_user_count : null, (r37 & 128) != 0 ? r5.episode_already_rated_by_user : null, (r37 & 256) != 0 ? r5.episode_urls : null, (r37 & 512) != 0 ? r5.next_episode : null, (r37 & RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE) != 0 ? r5.previous_episode : null, (r37 & RecyclerView.e0.FLAG_MOVED) != 0 ? r5.ol4_str : null, (r37 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0 ? r5.is_ol4 : null, (r37 & RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? r5.ol4_patt : null, (r37 & Http2.INITIAL_MAX_FRAME_SIZE) != 0 ? r5.seriesId : null, (r37 & NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN) != 0 ? r5.allow_comment : null, (r37 & 65536) != 0 ? r5.skip_from : null, (r37 & 131072) != 0 ? b10.skip_to : null);
            Iterator<T> it2 = X().v().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (a10.e() == ((p4.k) next).e()) {
                    obj = next;
                    break;
                }
            }
            p4.k kVar = (p4.k) obj;
            if (kVar != null) {
                kVar.t(str);
            }
            bVar.k(a10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
