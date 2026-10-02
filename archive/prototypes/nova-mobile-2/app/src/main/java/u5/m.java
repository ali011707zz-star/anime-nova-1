package u5;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import com.anslayer.R;
import com.anslayer.ui.anime.SeriesActivity;
import com.anslayer.ui.comment.CommentActivity;
import com.anslayer.ui.profile.people.PeopleProfileActivity;
import com.anslayer.ui.profile.self.ProfileActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import com.anslayer.widget.SlayerComposerWidget;
import g7.c;
import ic.q;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.event.SupportEvent;
import io.wax911.support.custom.consumer.SupportObserver;
import io.wax911.support.util.InstanceUtil;
import j4.z0;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import jc.a0;
import jc.y;
import org.greenrobot.eventbus.ThreadMode;
import u5.g;
import u5.p;

/* compiled from: CommentFragment.kt */
/* loaded from: classes.dex */
public final class m extends p5.d<m4.b, n, List<? extends m4.b>> implements SupportEvent, g.d {
    public m7.i B;

    /* renamed from: v, reason: collision with root package name */
    public String f14381v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f14382w;

    /* renamed from: y, reason: collision with root package name */
    public boolean f14384y;
    public static final /* synthetic */ oc.g<Object>[] F = {y.e(new jc.o(m.class, "binding", "getBinding()Lcom/anslayer/databinding/FragmentCommentBinding;", 0))};
    public static final a E = new a(null);

    /* renamed from: q, reason: collision with root package name */
    public final vb.e f14376q = vb.f.a(new c());

    /* renamed from: r, reason: collision with root package name */
    public final e7.d f14377r = new e7.d();

    /* renamed from: s, reason: collision with root package name */
    public final int f14378s = R.layout.fragment_comment;

    /* renamed from: t, reason: collision with root package name */
    public final int f14379t = R.integer.single_list_size;

    /* renamed from: u, reason: collision with root package name */
    public final vb.e f14380u = vb.f.a(new j());

    /* renamed from: x, reason: collision with root package name */
    public final vb.e f14383x = vb.f.a(new b());

    /* renamed from: z, reason: collision with root package name */
    public final View.OnClickListener f14385z = new View.OnClickListener() { // from class: u5.k
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            m.p0(m.this, view);
        }
    };
    public final kc.a A = FragmentExtensionsKt.a(this);
    public final vb.e C = vb.f.a(new g());
    public final vb.e D = c0.a(this, y.b(p.class), new i(new h(this)), new k());

    /* compiled from: CommentFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<m, Bundle> {

        /* compiled from: CommentFragment.kt */
        /* renamed from: u5.m$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0362a extends jc.m implements ic.l<Bundle, m> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0362a f14386f = new C0362a();

            public C0362a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final m invoke(Bundle bundle) {
                m mVar = new m();
                mVar.setArguments(bundle);
                return mVar;
            }
        }

        public a() {
            super(C0362a.f14386f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CommentFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<w4.e> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final w4.e invoke() {
            return m.this.p().f();
        }
    }

    /* compiled from: CommentFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<Boolean> {
        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            int hashCode;
            Bundle arguments = m.this.getArguments();
            String string = arguments == null ? null : arguments.getString("arg_request_type");
            return Boolean.valueOf(string == null || ((hashCode = string.hashCode()) == -1915617855 ? !string.equals("GET_EPISODE_COMMENTS") : !(hashCode == 848502707 && string.equals("GET_SERIES_COMMENTS"))));
        }
    }

    /* compiled from: CommentFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements q<s2.c, Integer, CharSequence, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String[] f14389f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ m f14390g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String[] strArr, m mVar) {
            super(3);
            this.f14389f = strArr;
            this.f14390g = mVar;
        }

        public final void a(s2.c cVar, int i10, CharSequence charSequence) {
            jc.l.f(cVar, "$noName_0");
            jc.l.f(charSequence, "$noName_2");
            String str = this.f14389f[i10];
            f4.d e10 = this.f14390g.p().e();
            if (e10 == null) {
                return;
            }
            e10.X(str, this.f14390g.w0());
        }

        @Override // ic.q
        public /* bridge */ /* synthetic */ vb.p i(s2.c cVar, Integer num, CharSequence charSequence) {
            a(cVar, num.intValue(), charSequence);
            return vb.p.f15031a;
        }
    }

    /* compiled from: CommentFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.l<Boolean, vb.p> {
        public e() {
            super(1);
        }

        public final void a(boolean z10) {
            bb.f<Boolean> E;
            f4.d e10 = m.this.p().e();
            if (e10 == null || (E = e10.E()) == null) {
                return;
            }
            E.set(Boolean.valueOf(z10));
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Boolean bool) {
            a(bool.booleanValue());
            return vb.p.f15031a;
        }
    }

    /* compiled from: CommentFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends jc.m implements ic.l<g7.c<? extends m4.b>, vb.p> {
        public f() {
            super(1);
        }

        public final void a(g7.c<m4.b> cVar) {
            jc.l.f(cVar, "result");
            if (jc.l.a(cVar, c.b.f7022a)) {
                m.this.A0();
                return;
            }
            if (cVar instanceof c.a) {
                m.this.q0();
                androidx.fragment.app.e activity = m.this.getActivity();
                if (activity == null) {
                    return;
                }
                k7.b.q(activity, R.string.text_request_error, 0, 2, null);
                return;
            }
            if (cVar instanceof c.C0133c) {
                m.this.q0();
                SupportObserver supportObserver = new SupportObserver();
                supportObserver.getBundle().putString("arg_request_type", "delete_comment");
                supportObserver.getBundle().putParcelable("arg_model", (Parcelable) ((c.C0133c) cVar).a());
                r5.b.f12864c.a(supportObserver, false);
            }
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(g7.c<? extends m4.b> cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* compiled from: CommentFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.a<n> {
        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final n invoke() {
            return n.f14398g.newInstance(m.this.getContext());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f14394f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Fragment fragment) {
            super(0);
            this.f14394f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f14394f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class i extends jc.m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f14395f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(ic.a aVar) {
            super(0);
            this.f14395f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f14395f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: CommentFragment.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<u5.g> {
        public j() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final u5.g invoke() {
            m mVar = m.this;
            Bundle arguments = mVar.getArguments();
            String string = arguments == null ? null : arguments.getString("arg_request_type");
            Bundle arguments2 = m.this.getArguments();
            return new u5.g(mVar, string, arguments2 != null ? Long.valueOf(arguments2.getLong("anime_id")) : null);
        }
    }

    /* compiled from: CommentFragment.kt */
    /* loaded from: classes.dex */
    public static final class k extends jc.m implements ic.a<l0.b> {
        public k() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = m.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new p.a(requireActivity, m.this);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final void p0(m mVar, View view) {
        String str;
        jc.l.f(mVar, "this$0");
        Bundle arguments = mVar.getArguments();
        if (arguments == null) {
            return;
        }
        if (mVar.f14381v == null) {
            String string = arguments.getString("arg_request_type");
            if (string != null) {
                switch (string.hashCode()) {
                    case -2088445879:
                        if (string.equals("GET_SERIES_COMMENT_REPLIES")) {
                            str = "CREATE_SERIES_COMMENT_REPLY";
                            break;
                        }
                        break;
                    case -1915617855:
                        if (string.equals("GET_EPISODE_COMMENTS")) {
                            str = "CREATE_EPISODE_COMMENT";
                            break;
                        }
                        break;
                    case -1715425669:
                        if (string.equals("GET_EPISODE_COMMENT_REPLIES")) {
                            str = "CREATE_EPISODE_COMMENT_REPLY";
                            break;
                        }
                        break;
                    case 848502707:
                        if (string.equals("GET_SERIES_COMMENTS")) {
                            str = "CREATE_SERIES_COMMENT";
                            break;
                        }
                        break;
                }
                mVar.f14381v = str;
            }
            str = null;
            mVar.f14381v = str;
        }
        String string2 = arguments.getString("arg_json");
        if (string2 == null) {
            return;
        }
        mVar.r0().f8869e.g(mVar.f14381v, new e7.d().a(string2));
    }

    public static final void y0(m mVar, List list, View view) {
        jc.l.f(mVar, "this$0");
        androidx.fragment.app.e activity = mVar.getActivity();
        if (activity == null) {
            return;
        }
        m4.b bVar = (m4.b) list.get(0);
        SeriesActivity.a aVar = SeriesActivity.f4161l;
        long a10 = bVar.a();
        String c10 = bVar.c();
        if (c10 == null) {
            c10 = "";
        }
        mVar.startActivity(aVar.a(activity, a10, c10, bVar.y(), bVar.A()));
    }

    public final void A0() {
        q0();
        androidx.fragment.app.e requireActivity = requireActivity();
        jc.l.e(requireActivity, "requireActivity()");
        m7.i iVar = new m7.i(requireActivity, false, 0.6f);
        this.B = iVar;
        jc.l.c(iVar);
        iVar.show();
    }

    @Override // p5.a
    public boolean L() {
        return true;
    }

    @Override // p5.d
    public int R() {
        return this.f14378s;
    }

    @Override // p5.d
    public int S() {
        return this.f14379t;
    }

    @Override // p5.d
    public void Y(Bundle bundle) {
        I(R.menu.media_menu);
        Bundle arguments = getArguments();
        String string = arguments == null ? null : arguments.getString("arg_json");
        if (string == null) {
            return;
        }
        Bundle arguments2 = getArguments();
        this.f14384y = arguments2 == null ? false : arguments2.getBoolean("from_notification");
        this.f14377r.a(string);
    }

    @Override // p5.d
    public boolean a0(String str) {
        jc.l.f(str, "key");
        return jc.l.a(str, "_order_by") || jc.l.a(str, "_sortByCommentType") || jc.l.a(str, "_sortByCommentReplyType");
    }

    @Override // p5.d
    public int d0() {
        return R.string.action_retry;
    }

    @Override // n5.a
    public void e() {
        bb.f<Boolean> E2;
        e7.d dVar = this.f14377r;
        dVar.d().put("_limit", 30);
        dVar.d().put("_offset", Integer.valueOf(p().getCurrentOffset()));
        f4.d e10 = p().e();
        dVar.d().put("_order_by", e10 == null ? null : e10.u(w0()));
        dVar.d().put("myfirst", "Yes");
        if (!this.f14384y) {
            f4.d e11 = p().e();
            dVar.d().put("hide_irrelevant", (e11 == null || (E2 = e11.E()) == null || !E2.get().booleanValue()) ? false : true ? "Yes" : "No");
        }
        p v02 = v0();
        if (v02 != null) {
            Bundle bundle = new Bundle();
            Bundle arguments = getArguments();
            bundle.putString("arg_request_type", arguments == null ? null : arguments.getString("arg_request_type"));
            bundle.putString("arg_json", this.f14377r.b());
            v02.queryFor(bundle, getContext());
        }
        this.f14381v = null;
    }

    @Override // n5.a
    public void m() {
        Z(R.string.empty_response);
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        jc.l.f(menu, "menu");
        jc.l.f(menuInflater, "inflater");
        super.onCreateOptionsMenu(menu, menuInflater);
        MenuItem findItem = menu.findItem(R.id.action_sort);
        if (findItem == null) {
            return;
        }
        findItem.setVisible(this.f14382w);
    }

    @Override // p5.d, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        z0 c10 = z0.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        z0(c10);
        f0(r0().f8871g.f8637b);
        h0(r0().f8871g.f8639d);
        g0(r0().f8871g.f8638c);
        return r0().b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        q0();
        super.onDestroyView();
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemClick(View view, s3.c<m4.b> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
        Bundle arguments = getArguments();
        boolean equal = SupportExtentionKt.equal(arguments == null ? null : arguments.getString("arg_request_type"), "GET_SERIES_COMMENTS");
        m4.b b10 = cVar.b();
        boolean z10 = false;
        switch (view.getId()) {
            case R.id.commentMention /* 2131362096 */:
                SlayerComposerWidget slayerComposerWidget = r0().f8869e;
                a0 a0Var = a0.f9170a;
                String format = String.format(Locale.getDefault(), "@%s", Arrays.copyOf(new Object[]{b10.q()}, 1));
                jc.l.e(format, "format(locale, format, *args)");
                slayerComposerWidget.e(format, true, String.valueOf(b10.u()));
                return;
            case R.id.commentReplies /* 2131362097 */:
                e7.d dVar = new e7.d();
                dVar.d().put("_limit", 30);
                dVar.d().put("_offset", Integer.valueOf(p().getCurrentOffset()));
                f4.d e10 = p().e();
                dVar.d().put("_order_by", e10 != null ? e10.u(w0()) : null);
                if (equal) {
                    androidx.fragment.app.e activity = getActivity();
                    Bundle bundle = new Bundle(getArguments());
                    dVar.d().put("anime_comment_id", Long.valueOf(b10.e()));
                    bundle.putString("arg_json", dVar.b());
                    bundle.putString("arg_request_type", "GET_SERIES_COMMENT_REPLIES");
                    Intent intent = new Intent(activity, (Class<?>) CommentActivity.class);
                    intent.setFlags(268435456);
                    intent.putExtras(bundle);
                    if (activity == null) {
                        return;
                    }
                    activity.startActivity(intent);
                    return;
                }
                if (equal) {
                    return;
                }
                androidx.fragment.app.e activity2 = getActivity();
                Bundle bundle2 = new Bundle(getArguments());
                dVar.d().put("episode_comment_id", Long.valueOf(b10.e()));
                bundle2.putString("arg_json", dVar.b());
                bundle2.putString("arg_request_type", "GET_EPISODE_COMMENT_REPLIES");
                Intent intent2 = new Intent(activity2, (Class<?>) CommentActivity.class);
                intent2.setFlags(268435456);
                intent2.putExtras(bundle2);
                if (activity2 == null) {
                    return;
                }
                activity2.startActivity(intent2);
                return;
            case R.id.comment_avatar /* 2131362101 */:
            case R.id.highlight_avatr /* 2131362291 */:
                w4.e s02 = s0();
                if (s02 != null && s02.D() == b10.u()) {
                    f4.d e11 = p().e();
                    if (e11 != null && e11.b()) {
                        z10 = true;
                    }
                }
                androidx.fragment.app.e activity3 = getActivity();
                if (activity3 == null) {
                    return;
                }
                if (z10) {
                    startActivity(ProfileActivity.f4249l.a(activity3));
                    return;
                } else {
                    startActivity(PeopleProfileActivity.f4248l.a(activity3, b10.u()));
                    return;
                }
            default:
                return;
        }
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemLongClick(View view, s3.c<m4.b> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0051  */
    @Override // io.wax911.support.base.event.SupportEvent
    @ed.l(threadMode = ThreadMode.MAIN_ORDERED)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onModelChanged(SupportObserver supportObserver) {
        m4.b bVar;
        androidx.fragment.app.e activity;
        androidx.fragment.app.e activity2;
        jc.l.f(supportObserver, "consumer");
        String string = supportObserver.getBundle().getString("arg_request_type");
        if (string != null) {
            switch (string.hashCode()) {
                case -1130140134:
                    if (!string.equals("CREATE_SERIES_COMMENT")) {
                        return;
                    }
                    activity = getActivity();
                    if (activity != null) {
                        SupportExtentionKt.hideKeyboard(activity);
                    }
                    b();
                    return;
                case -1113129373:
                    if (!string.equals("CREATE_EPISODE_COMMENT_REPLY")) {
                        return;
                    }
                    activity = getActivity();
                    if (activity != null) {
                    }
                    b();
                    return;
                case -476523880:
                    if (!string.equals("CREATE_EPISODE_COMMENT")) {
                        return;
                    }
                    activity = getActivity();
                    if (activity != null) {
                    }
                    b();
                    return;
                case 1191002059:
                    if (string.equals("delete_comment") && (bVar = (m4.b) supportObserver.getBundle().getParcelable("arg_model")) != null) {
                        X().onItemRemoved(bVar);
                        return;
                    }
                    return;
                case 1287233356:
                    if (!string.equals("EDIT_SERIES_COMMENT")) {
                        return;
                    }
                    activity2 = getActivity();
                    if (activity2 != null) {
                        SupportExtentionKt.hideKeyboard(activity2);
                    }
                    b();
                    return;
                case 1447610278:
                    if (!string.equals("EDIT_EPISODE_COMMENT")) {
                        return;
                    }
                    activity2 = getActivity();
                    if (activity2 != null) {
                    }
                    b();
                    return;
                case 1778085989:
                    if (!string.equals("CREATE_SERIES_COMMENT_REPLY")) {
                        return;
                    }
                    activity = getActivity();
                    if (activity != null) {
                    }
                    b();
                    return;
                case 1818390769:
                    if (!string.equals("EDIT_EPISODE_COMMENT_REPLY")) {
                        return;
                    }
                    activity2 = getActivity();
                    if (activity2 != null) {
                    }
                    b();
                    return;
                case 2011198487:
                    if (!string.equals("EDIT_SERIES_COMMENT_REPLY")) {
                        return;
                    }
                    activity2 = getActivity();
                    if (activity2 != null) {
                    }
                    b();
                    return;
                default:
                    return;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        String[] b10;
        s2.c v10;
        bb.f<Boolean> E2;
        Boolean bool;
        String u10;
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.action_sort) {
            int i10 = w0() ? R.array.sort_reply : R.array.sort_comment;
            if (w0()) {
                b10 = y3.a.f16424a.c();
            } else {
                b10 = y3.a.f16424a.b();
            }
            f4.d e10 = p().e();
            String str = "latest_first";
            if (e10 != null && (u10 = e10.u(w0())) != null) {
                str = u10;
            }
            s2.c a10 = k7.c.a(getActivity());
            if (a10 == null) {
                return true;
            }
            s2.c y10 = s2.c.y(a10, Integer.valueOf(R.string.action_sort), null, 2, null);
            if (y10 == null || (v10 = s2.c.v(y10, Integer.valueOf(R.string.text_ok), null, null, 6, null)) == null) {
                return true;
            }
            Context context = getContext();
            s2.c b11 = b3.b.b(v10, null, context != null ? SupportExtentionKt.getStringList(context, i10) : null, null, wb.i.r(b10, str), false, new d(b10, this), 21, null);
            if (b11 == null) {
                return true;
            }
            f4.d e11 = p().e();
            s2.c b12 = v2.a.b(b11, 0, "اخفاء التعليقات الخارجة عن الموضوع", (e11 == null || (E2 = e11.E()) == null || (bool = E2.get()) == null) ? false : bool.booleanValue(), new e(), 1, null);
            if (b12 == null) {
                return true;
            }
            b12.show();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // p5.d, p5.a, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        jc.l.f(view, "view");
        super.onViewCreated(view, bundle);
        boolean z10 = requireArguments().getBoolean("hide_comment_input", false);
        if (z10) {
            X().B(true);
            SlayerComposerWidget slayerComposerWidget = r0().f8869e;
            jc.l.e(slayerComposerWidget, "binding.composerWidget");
            SupportExtentionKt.gone(slayerComposerWidget);
        } else {
            SlayerComposerWidget slayerComposerWidget2 = r0().f8869e;
            jc.l.e(slayerComposerWidget2, "binding.composerWidget");
            SupportExtentionKt.visible(slayerComposerWidget2);
            r0().f8869e.setClickLister(this.f14385z);
        }
        this.f14382w = !z10;
        v0().d().i(getViewLifecycleOwner(), new g7.b(new f()));
    }

    public final void q0() {
        m7.i iVar = this.B;
        if (iVar == null) {
            return;
        }
        try {
            jc.l.c(iVar);
            iVar.dismiss();
        } catch (Exception unused) {
        }
        this.B = null;
    }

    public final z0 r0() {
        return (z0) this.A.f(this, F[0]);
    }

    public final w4.e s0() {
        return (w4.e) this.f14383x.getValue();
    }

    @Override // n5.a
    /* renamed from: t0, reason: merged with bridge method [inline-methods] */
    public n p() {
        return (n) this.C.getValue();
    }

    @Override // p5.d
    /* renamed from: u0, reason: merged with bridge method [inline-methods] */
    public u5.g X() {
        return (u5.g) this.f14380u.getValue();
    }

    @Override // u5.g.d
    public void v(m4.b bVar, MenuItem menuItem) {
        jc.l.f(bVar, "model");
        jc.l.f(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_block) {
            v0().c(bVar);
            return;
        }
        if (itemId != R.id.action_edit) {
            return;
        }
        r0().f8869e.getSpoiler().setChecked(SupportExtentionKt.equal(bVar.o(), "Yes"));
        r0().f8869e.setText(bVar.g());
        r0().f8869e.setModel(bVar);
        Bundle arguments = getArguments();
        String string = arguments == null ? null : arguments.getString("arg_request_type");
        if (string != null) {
            switch (string.hashCode()) {
                case -2088445879:
                    if (string.equals("GET_SERIES_COMMENT_REPLIES")) {
                        this.f14381v = "EDIT_SERIES_COMMENT_REPLY";
                        return;
                    }
                    return;
                case -1915617855:
                    if (string.equals("GET_EPISODE_COMMENTS")) {
                        this.f14381v = "EDIT_EPISODE_COMMENT";
                        return;
                    }
                    return;
                case -1715425669:
                    if (string.equals("GET_EPISODE_COMMENT_REPLIES")) {
                        this.f14381v = "EDIT_EPISODE_COMMENT_REPLY";
                        return;
                    }
                    return;
                case 848502707:
                    if (string.equals("GET_SERIES_COMMENTS")) {
                        this.f14381v = "EDIT_SERIES_COMMENT";
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public p v0() {
        return (p) this.D.getValue();
    }

    public final boolean w0() {
        return ((Boolean) this.f14376q.getValue()).booleanValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: x0, reason: merged with bridge method [inline-methods] */
    public void B(final List<m4.b> list) {
        if (!(list == null || list.isEmpty()) && list.get(0).c() != null) {
            r0().f8868d.setText(list.get(0).c());
            r0().f8866b.setText(list.get(0).j());
            TextView textView = r0().f8866b;
            jc.l.e(textView, "binding.commentEpsName");
            textView.setVisibility(list.get(0).j() != null ? 0 : 8);
            ConstraintLayout constraintLayout = r0().f8867c;
            jc.l.e(constraintLayout, "binding.commentLocation");
            SupportExtentionKt.visible(constraintLayout);
            r0().f8867c.setOnClickListener(new View.OnClickListener() { // from class: u5.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    m.y0(m.this, list, view);
                }
            });
        }
        b0(list, R.string.empty_response);
    }

    public final void z0(z0 z0Var) {
        jc.l.f(z0Var, "<set-?>");
        this.A.a(this, F[0], z0Var);
    }
}
