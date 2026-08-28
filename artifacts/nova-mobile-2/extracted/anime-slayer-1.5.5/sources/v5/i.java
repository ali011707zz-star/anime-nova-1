package v5;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.k0;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.c0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import com.anslayer.R;
import com.anslayer.api.endpoint.UserEndpoint;
import com.anslayer.ui.comment.CommentActivity;
import com.anslayer.ui.profile.people.PeopleProfileActivity;
import com.anslayer.ui.profile.self.ProfileActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.util.InstanceUtil;
import java.util.List;
import jc.a0;
import jc.m;
import jc.y;
import okhttp3.ResponseBody;
import okhttp3.internal.cache.DiskLruCache;
import org.json.JSONObject;
import rd.q;
import v5.k;
import vb.p;
import z3.b;

/* compiled from: NotificationListFragment.kt */
/* loaded from: classes.dex */
public final class i extends p5.d<w4.b, r5.a, List<? extends w4.b>> {

    /* renamed from: w, reason: collision with root package name */
    public static final a f14811w = new a(null);

    /* renamed from: q, reason: collision with root package name */
    public final e7.d f14812q = new e7.d();

    /* renamed from: r, reason: collision with root package name */
    public final int f14813r = R.integer.single_list_size;

    /* renamed from: s, reason: collision with root package name */
    public final vb.e f14814s = vb.f.a(f.f14823f);

    /* renamed from: t, reason: collision with root package name */
    public final vb.e f14815t = vb.f.a(new b());

    /* renamed from: u, reason: collision with root package name */
    public final vb.e f14816u = vb.f.a(new c());

    /* renamed from: v, reason: collision with root package name */
    public final vb.e f14817v = c0.a(this, y.b(v5.k.class), new e(new d(this)), new g());

    /* compiled from: NotificationListFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<i, Bundle> {

        /* compiled from: NotificationListFragment.kt */
        /* renamed from: v5.i$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0385a extends m implements l<Bundle, i> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0385a f14818f = new C0385a();

            public C0385a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final i invoke(Bundle bundle) {
                i iVar = new i();
                iVar.setArguments(bundle);
                return iVar;
            }
        }

        public a() {
            super(C0385a.f14818f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: NotificationListFragment.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<w4.e> {
        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final w4.e invoke() {
            return i.this.p().f();
        }
    }

    /* compiled from: NotificationListFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<r5.a> {
        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r5.a invoke() {
            return r5.a.f12858f.newInstance(i.this.getContext());
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<Fragment> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f14821f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Fragment fragment) {
            super(0);
            this.f14821f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Fragment invoke() {
            return this.f14821f;
        }
    }

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<m0> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a f14822f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ic.a aVar) {
            super(0);
            this.f14822f = aVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m0 invoke() {
            m0 viewModelStore = ((n0) this.f14822f.invoke()).getViewModelStore();
            jc.l.e(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* compiled from: NotificationListFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<v5.e> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f14823f = new f();

        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final v5.e invoke() {
            return new v5.e();
        }
    }

    /* compiled from: NotificationListFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<l0.b> {
        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            androidx.fragment.app.e requireActivity = i.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new k.a(requireActivity, i.this);
        }
    }

    /* compiled from: NotificationListFragment.kt */
    /* loaded from: classes.dex */
    public static final class h implements rd.d<ResponseBody> {
        public h() {
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
            i.this.X().f();
            v5.k q02 = i.this.q0();
            if (q02 != null) {
                q02.setModelData(null);
            }
            f4.d e10 = i.this.p().e();
            if (e10 == null) {
                return;
            }
            e10.b0(0);
        }
    }

    /* compiled from: NotificationListFragment.kt */
    /* renamed from: v5.i$i, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0386i implements rd.d<ResponseBody> {
        public C0386i() {
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
            f4.d e10 = i.this.p().e();
            if (e10 != null) {
                e10.b0(0);
            }
            i.this.b();
        }
    }

    /* compiled from: NotificationListFragment.kt */
    /* loaded from: classes.dex */
    public static final class j implements rd.d<ResponseBody> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ s3.c<w4.b> f14828b;

        public j(s3.c<w4.b> cVar) {
            this.f14828b = cVar;
        }

        @Override // rd.d
        public void onFailure(rd.b<ResponseBody> bVar, Throwable th) {
            jc.l.f(bVar, "call");
            jc.l.f(th, "t");
        }

        @Override // rd.d
        public void onResponse(rd.b<ResponseBody> bVar, q<ResponseBody> qVar) {
            int A;
            jc.l.f(bVar, "call");
            jc.l.f(qVar, "response");
            v5.e X = i.this.X();
            w4.b b10 = this.f14828b.b();
            jc.l.e(b10, "data.second");
            X.onItemRemoved(b10);
            f4.d e10 = i.this.p().e();
            if (e10 != null && e10.A() - 1 >= 0) {
                e10.b0(A);
            }
        }
    }

    /* compiled from: NotificationListFragment.kt */
    /* loaded from: classes.dex */
    public static final class k implements rd.d<ResponseBody> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s3.c<w4.b> f14829a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ i f14830b;

        public k(s3.c<w4.b> cVar, i iVar) {
            this.f14829a = cVar;
            this.f14830b = iVar;
        }

        @Override // rd.d
        public void onFailure(rd.b<ResponseBody> bVar, Throwable th) {
            jc.l.f(bVar, "call");
            jc.l.f(th, "t");
        }

        @Override // rd.d
        public void onResponse(rd.b<ResponseBody> bVar, q<ResponseBody> qVar) {
            int A;
            jc.l.f(bVar, "call");
            jc.l.f(qVar, "response");
            this.f14829a.b().o("0");
            v5.e X = this.f14830b.X();
            w4.b b10 = this.f14829a.b();
            jc.l.e(b10, "data.second");
            X.onItemChanged(b10);
            f4.d e10 = this.f14830b.p().e();
            if (e10 != null && e10.A() - 1 >= 0) {
                e10.b0(A);
            }
        }
    }

    public static final boolean u0(i iVar, s3.c cVar, MenuItem menuItem) {
        jc.l.f(iVar, "this$0");
        jc.l.f(cVar, "$data");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_delete) {
            iVar.z0(cVar, "DELETE_USER_NOTIFICATION", "No");
            return true;
        }
        if (itemId != R.id.action_make_it_read) {
            return true;
        }
        iVar.z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
        return true;
    }

    public static final boolean w0(final i iVar, MenuItem menuItem) {
        jc.l.f(iVar, "this$0");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_delete_all) {
            new MaterialAlertDialogBuilder(iVar.requireContext()).setMessage((CharSequence) "هل انت متأكد من ازالة جميع الاشعارات؟").setNegativeButton(R.string.Cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.text_ok, new DialogInterface.OnClickListener() { // from class: v5.f
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    i.x0(i.this, dialogInterface, i10);
                }
            }).show();
            return true;
        }
        if (itemId != R.id.action_make_all_read) {
            return true;
        }
        iVar.y0("UPDATE_USER_NOTIFICATION");
        return true;
    }

    public static final void x0(i iVar, DialogInterface dialogInterface, int i10) {
        jc.l.f(iVar, "this$0");
        iVar.y0("DELETE_USER_NOTIFICATION");
    }

    @Override // p5.d
    public int S() {
        return this.f14813r;
    }

    @Override // p5.d
    public void Y(Bundle bundle) {
        I(R.menu.notification);
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        e7.d dVar = this.f14812q;
        dVar.d().put("list_type", arguments.getString("list_type"));
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
        v5.k q02;
        String str;
        e7.d dVar = this.f14812q;
        dVar.d().put("_limit", 30);
        dVar.d().put("_offset", Integer.valueOf(p().getCurrentOffset()));
        dVar.d().put("group_notifications", "yes");
        e7.d dVar2 = this.f14812q;
        String empty = SupportExtentionKt.empty(a0.f9170a);
        try {
            if (dVar2.d().containsKey("list_type")) {
                Object obj = dVar2.d().get("list_type");
                if ((empty instanceof Long) && (obj instanceof Double)) {
                    str = (String) Long.valueOf((long) ((Number) obj).doubleValue());
                } else {
                    if (obj == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                    }
                    str = (String) obj;
                }
                empty = str;
            }
        } catch (Exception e10) {
            dVar2.toString();
            e10.getMessage();
        }
        if (!jc.l.a(empty, "GET_USER_NOTIFICATION") || (q02 = q0()) == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("arg_request_type", "GET_USER_NOTIFICATION");
        bundle.putString("arg_json", this.f14812q.b());
        q02.queryFor(bundle, getContext());
    }

    @Override // n5.a
    public void m() {
        Z(R.string.empty_response);
    }

    public final w4.e n0() {
        return (w4.e) this.f14815t.getValue();
    }

    @Override // n5.a
    /* renamed from: o0, reason: merged with bridge method [inline-methods] */
    public r5.a p() {
        return (r5.a) this.f14816u.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
    
        if ((r7 != null && r7.b()) != false) goto L25;
     */
    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onItemClick(View view, s3.c<w4.b> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
        int id2 = view.getId();
        if (id2 == R.id.container) {
            s0(cVar);
            return;
        }
        if (id2 == R.id.notification_item_option) {
            t0(view, cVar);
            return;
        }
        if (id2 != R.id.notification_user) {
            return;
        }
        w4.e n02 = n0();
        boolean z10 = true;
        if (n02 != null && n02.D() == cVar.b().j()) {
            f4.d e10 = p().e();
        }
        z10 = false;
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        if (z10) {
            startActivity(ProfileActivity.f4249l.a(activity));
        } else {
            startActivity(PeopleProfileActivity.f4248l.a(activity, cVar.b().j()));
        }
    }

    @Override // p5.a, io.wax911.support.base.event.ItemClickListener
    public void onItemLongClick(View view, s3.c<w4.b> cVar) {
        jc.l.f(view, "target");
        jc.l.f(cVar, "data");
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        jc.l.f(menuItem, "item");
        if (menuItem.getItemId() == R.id.notification_action) {
            View findViewById = requireActivity().findViewById(R.id.notification_action);
            jc.l.e(findViewById, "requireActivity().findVi…R.id.notification_action)");
            v0(findViewById);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // p5.d
    /* renamed from: p0, reason: merged with bridge method [inline-methods] */
    public v5.e X() {
        return (v5.e) this.f14814s.getValue();
    }

    public v5.k q0() {
        return (v5.k) this.f14817v.getValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: r0, reason: merged with bridge method [inline-methods] */
    public void B(List<w4.b> list) {
        b0(list, R.string.empty_response);
    }

    public final void s0(s3.c<w4.b> cVar) {
        String str;
        Object obj;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String e10 = cVar.b().e();
        String str14 = "";
        String str15 = "episode_comment_id";
        Object obj2 = "episodes_reply";
        switch (e10.hashCode()) {
            case 114586:
                str = "anime_comment_id";
                obj = "animes_reply";
                str2 = "my_comment";
                str3 = "requireContext()";
                if (!e10.equals("tag")) {
                    return;
                }
                break;
            case 3321751:
                if (e10.equals("like")) {
                    String c10 = cVar.b().c();
                    switch (c10.hashCode()) {
                        case -1616058070:
                            if (c10.equals("animes_reply")) {
                                if (jc.l.a(cVar.b().m(), DiskLruCache.VERSION_1)) {
                                    z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
                                }
                                JSONObject jSONObject = new JSONObject();
                                e7.d dVar = this.f14812q;
                                try {
                                    if (dVar.d().containsKey("list_type")) {
                                        Object obj3 = dVar.d().get("list_type");
                                        if (("" instanceof Long) && (obj3 instanceof Double)) {
                                            str4 = (String) Long.valueOf((long) ((Number) obj3).doubleValue());
                                        } else {
                                            if (obj3 == null) {
                                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                            }
                                            str4 = (String) obj3;
                                        }
                                        str14 = str4;
                                    }
                                } catch (Exception e11) {
                                    dVar.toString();
                                    e11.getMessage();
                                }
                                jSONObject.put("list_type", str14);
                                jSONObject.put("anime_comment_id", cVar.b().i());
                                jSONObject.put("one_comment", "Yes");
                                jSONObject.put("my_comment", "Yes");
                                p pVar = p.f15031a;
                                String jSONObject2 = jSONObject.toString();
                                jc.l.e(jSONObject2, "JSONObject().apply {\n   …             }.toString()");
                                CommentActivity.a aVar = CommentActivity.f4177l;
                                Context requireContext = requireContext();
                                jc.l.e(requireContext, "requireContext()");
                                startActivity(aVar.a(requireContext, Long.valueOf(cVar.b().i()), jSONObject2, "GET_SERIES_COMMENT_REPLIES", true));
                                return;
                            }
                            return;
                        case -1413116289:
                            if (c10.equals("animes")) {
                                if (jc.l.a(cVar.b().m(), DiskLruCache.VERSION_1)) {
                                    z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
                                }
                                JSONObject jSONObject3 = new JSONObject();
                                e7.d dVar2 = this.f14812q;
                                try {
                                    if (dVar2.d().containsKey("list_type")) {
                                        Object obj4 = dVar2.d().get("list_type");
                                        if (("" instanceof Long) && (obj4 instanceof Double)) {
                                            str5 = (String) Long.valueOf((long) ((Number) obj4).doubleValue());
                                        } else {
                                            if (obj4 == null) {
                                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                            }
                                            str5 = (String) obj4;
                                        }
                                        str14 = str5;
                                    }
                                } catch (Exception e12) {
                                    dVar2.toString();
                                    e12.getMessage();
                                }
                                jSONObject3.put("list_type", str14);
                                jSONObject3.put("anime_id", cVar.b().i());
                                jSONObject3.put("one_comment", "Yes");
                                p pVar2 = p.f15031a;
                                String jSONObject4 = jSONObject3.toString();
                                jc.l.e(jSONObject4, "JSONObject().apply {\n   …             }.toString()");
                                CommentActivity.a aVar2 = CommentActivity.f4177l;
                                Context requireContext2 = requireContext();
                                jc.l.e(requireContext2, "requireContext()");
                                startActivity(aVar2.a(requireContext2, Long.valueOf(cVar.b().i()), jSONObject4, "GET_SERIES_COMMENTS", true));
                                return;
                            }
                            return;
                        case -1093290557:
                            if (c10.equals(obj2)) {
                                if (jc.l.a(cVar.b().m(), DiskLruCache.VERSION_1)) {
                                    z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
                                }
                                JSONObject jSONObject5 = new JSONObject();
                                e7.d dVar3 = this.f14812q;
                                try {
                                    if (dVar3.d().containsKey("list_type")) {
                                        Object obj5 = dVar3.d().get("list_type");
                                        if (("" instanceof Long) && (obj5 instanceof Double)) {
                                            str6 = (String) Long.valueOf((long) ((Number) obj5).doubleValue());
                                        } else {
                                            if (obj5 == null) {
                                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                            }
                                            str6 = (String) obj5;
                                        }
                                        str14 = str6;
                                    }
                                } catch (Exception e13) {
                                    dVar3.toString();
                                    e13.getMessage();
                                }
                                jSONObject5.put("list_type", str14);
                                jSONObject5.put(str15, cVar.b().i());
                                jSONObject5.put("one_comment", "Yes");
                                jSONObject5.put("my_comment", "Yes");
                                p pVar3 = p.f15031a;
                                String jSONObject6 = jSONObject5.toString();
                                jc.l.e(jSONObject6, "JSONObject().apply {\n   …             }.toString()");
                                CommentActivity.a aVar3 = CommentActivity.f4177l;
                                Context requireContext3 = requireContext();
                                jc.l.e(requireContext3, "requireContext()");
                                startActivity(aVar3.a(requireContext3, Long.valueOf(cVar.b().i()), jSONObject6, "GET_EPISODE_COMMENT_REPLIES", true));
                                return;
                            }
                            return;
                        case -632946216:
                            if (c10.equals("episodes")) {
                                if (jc.l.a(cVar.b().m(), DiskLruCache.VERSION_1)) {
                                    z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
                                }
                                JSONObject jSONObject7 = new JSONObject();
                                e7.d dVar4 = this.f14812q;
                                try {
                                    if (dVar4.d().containsKey("list_type")) {
                                        Object obj6 = dVar4.d().get("list_type");
                                        if (("" instanceof Long) && (obj6 instanceof Double)) {
                                            str7 = (String) Long.valueOf((long) ((Number) obj6).doubleValue());
                                        } else {
                                            if (obj6 == null) {
                                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                            }
                                            str7 = (String) obj6;
                                        }
                                        str14 = str7;
                                    }
                                } catch (Exception e14) {
                                    dVar4.toString();
                                    e14.getMessage();
                                }
                                jSONObject7.put("list_type", str14);
                                jSONObject7.put("episode_id", cVar.b().i());
                                jSONObject7.put("one_comment", "Yes");
                                p pVar4 = p.f15031a;
                                String jSONObject8 = jSONObject7.toString();
                                jc.l.e(jSONObject8, "JSONObject().apply {\n   …             }.toString()");
                                CommentActivity.a aVar4 = CommentActivity.f4177l;
                                Context requireContext4 = requireContext();
                                jc.l.e(requireContext4, "requireContext()");
                                startActivity(aVar4.a(requireContext4, Long.valueOf(cVar.b().i()), jSONObject8, "GET_EPISODE_COMMENTS", true));
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                }
                return;
            case 108401386:
                if (e10.equals("reply")) {
                    obj2 = obj2;
                    str15 = str15;
                    str3 = "requireContext()";
                    str2 = "my_comment";
                    str = "anime_comment_id";
                    obj = "animes_reply";
                    break;
                } else {
                    return;
                }
            case 1671642405:
                if (e10.equals("dislike")) {
                    String c11 = cVar.b().c();
                    switch (c11.hashCode()) {
                        case -1616058070:
                            if (c11.equals("animes_reply")) {
                                if (jc.l.a(cVar.b().m(), DiskLruCache.VERSION_1)) {
                                    z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
                                }
                                JSONObject jSONObject9 = new JSONObject();
                                e7.d dVar5 = this.f14812q;
                                try {
                                    if (dVar5.d().containsKey("list_type")) {
                                        Object obj7 = dVar5.d().get("list_type");
                                        if (("" instanceof Long) && (obj7 instanceof Double)) {
                                            str10 = (String) Long.valueOf((long) ((Number) obj7).doubleValue());
                                        } else {
                                            if (obj7 == null) {
                                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                            }
                                            str10 = (String) obj7;
                                        }
                                        str14 = str10;
                                    }
                                } catch (Exception e15) {
                                    dVar5.toString();
                                    e15.getMessage();
                                }
                                jSONObject9.put("list_type", str14);
                                jSONObject9.put("anime_comment_id", cVar.b().i());
                                jSONObject9.put("one_comment", "Yes");
                                jSONObject9.put("my_comment", "Yes");
                                p pVar5 = p.f15031a;
                                String jSONObject10 = jSONObject9.toString();
                                jc.l.e(jSONObject10, "JSONObject().apply {\n   …             }.toString()");
                                CommentActivity.a aVar5 = CommentActivity.f4177l;
                                Context requireContext5 = requireContext();
                                jc.l.e(requireContext5, "requireContext()");
                                startActivity(aVar5.a(requireContext5, Long.valueOf(cVar.b().i()), jSONObject10, "GET_SERIES_COMMENT_REPLIES", true));
                                return;
                            }
                            return;
                        case -1413116289:
                            if (c11.equals("animes")) {
                                if (jc.l.a(cVar.b().m(), DiskLruCache.VERSION_1)) {
                                    z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
                                }
                                JSONObject jSONObject11 = new JSONObject();
                                e7.d dVar6 = this.f14812q;
                                try {
                                    if (dVar6.d().containsKey("list_type")) {
                                        Object obj8 = dVar6.d().get("list_type");
                                        if (("" instanceof Long) && (obj8 instanceof Double)) {
                                            str11 = (String) Long.valueOf((long) ((Number) obj8).doubleValue());
                                        } else {
                                            if (obj8 == null) {
                                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                            }
                                            str11 = (String) obj8;
                                        }
                                        str14 = str11;
                                    }
                                } catch (Exception e16) {
                                    dVar6.toString();
                                    e16.getMessage();
                                }
                                jSONObject11.put("list_type", str14);
                                jSONObject11.put("anime_id", cVar.b().i());
                                jSONObject11.put("one_comment", "Yes");
                                p pVar6 = p.f15031a;
                                String jSONObject12 = jSONObject11.toString();
                                jc.l.e(jSONObject12, "JSONObject().apply {\n   …             }.toString()");
                                CommentActivity.a aVar6 = CommentActivity.f4177l;
                                Context requireContext6 = requireContext();
                                jc.l.e(requireContext6, "requireContext()");
                                startActivity(aVar6.a(requireContext6, Long.valueOf(cVar.b().i()), jSONObject12, "GET_SERIES_COMMENTS", true));
                                return;
                            }
                            return;
                        case -1093290557:
                            if (c11.equals(obj2)) {
                                if (jc.l.a(cVar.b().m(), DiskLruCache.VERSION_1)) {
                                    z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
                                }
                                JSONObject jSONObject13 = new JSONObject();
                                e7.d dVar7 = this.f14812q;
                                try {
                                    if (dVar7.d().containsKey("list_type")) {
                                        Object obj9 = dVar7.d().get("list_type");
                                        if (("" instanceof Long) && (obj9 instanceof Double)) {
                                            str12 = (String) Long.valueOf((long) ((Number) obj9).doubleValue());
                                        } else {
                                            if (obj9 == null) {
                                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                            }
                                            str12 = (String) obj9;
                                        }
                                        str14 = str12;
                                    }
                                } catch (Exception e17) {
                                    dVar7.toString();
                                    e17.getMessage();
                                }
                                jSONObject13.put("list_type", str14);
                                jSONObject13.put(str15, cVar.b().i());
                                jSONObject13.put("one_comment", "Yes");
                                jSONObject13.put("my_comment", "Yes");
                                p pVar7 = p.f15031a;
                                String jSONObject14 = jSONObject13.toString();
                                jc.l.e(jSONObject14, "JSONObject().apply {\n   …             }.toString()");
                                CommentActivity.a aVar7 = CommentActivity.f4177l;
                                Context requireContext7 = requireContext();
                                jc.l.e(requireContext7, "requireContext()");
                                startActivity(aVar7.a(requireContext7, Long.valueOf(cVar.b().i()), jSONObject14, "GET_EPISODE_COMMENT_REPLIES", true));
                                return;
                            }
                            return;
                        case -632946216:
                            if (c11.equals("episodes")) {
                                if (jc.l.a(cVar.b().m(), DiskLruCache.VERSION_1)) {
                                    z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
                                }
                                JSONObject jSONObject15 = new JSONObject();
                                e7.d dVar8 = this.f14812q;
                                try {
                                    if (dVar8.d().containsKey("list_type")) {
                                        Object obj10 = dVar8.d().get("list_type");
                                        if (("" instanceof Long) && (obj10 instanceof Double)) {
                                            str13 = (String) Long.valueOf((long) ((Number) obj10).doubleValue());
                                        } else {
                                            if (obj10 == null) {
                                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                            }
                                            str13 = (String) obj10;
                                        }
                                        str14 = str13;
                                    }
                                } catch (Exception e18) {
                                    dVar8.toString();
                                    e18.getMessage();
                                }
                                jSONObject15.put("list_type", str14);
                                jSONObject15.put("episode_id", cVar.b().i());
                                jSONObject15.put("one_comment", "Yes");
                                p pVar8 = p.f15031a;
                                String jSONObject16 = jSONObject15.toString();
                                jc.l.e(jSONObject16, "JSONObject().apply {\n   …             }.toString()");
                                CommentActivity.a aVar8 = CommentActivity.f4177l;
                                Context requireContext8 = requireContext();
                                jc.l.e(requireContext8, "requireContext()");
                                startActivity(aVar8.a(requireContext8, Long.valueOf(cVar.b().i()), jSONObject16, "GET_EPISODE_COMMENTS", true));
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                }
                return;
            default:
                return;
        }
        String c12 = cVar.b().c();
        if (jc.l.a(c12, obj)) {
            if (jc.l.a(cVar.b().m(), DiskLruCache.VERSION_1)) {
                z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
            }
            JSONObject jSONObject17 = new JSONObject();
            e7.d dVar9 = this.f14812q;
            try {
                if (dVar9.d().containsKey("list_type")) {
                    Object obj11 = dVar9.d().get("list_type");
                    if (("" instanceof Long) && (obj11 instanceof Double)) {
                        str9 = (String) Long.valueOf((long) ((Number) obj11).doubleValue());
                    } else {
                        if (obj11 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                        }
                        str9 = (String) obj11;
                    }
                    str14 = str9;
                }
            } catch (Exception e19) {
                dVar9.toString();
                e19.getMessage();
            }
            jSONObject17.put("list_type", str14);
            jSONObject17.put(str, cVar.b().i());
            jSONObject17.put("one_comment", "Yes");
            jSONObject17.put(str2, "Yes");
            jSONObject17.put("reference_user", cVar.b().j());
            p pVar9 = p.f15031a;
            String jSONObject18 = jSONObject17.toString();
            jc.l.e(jSONObject18, "JSONObject().apply {\n   …             }.toString()");
            CommentActivity.a aVar9 = CommentActivity.f4177l;
            Context requireContext9 = requireContext();
            jc.l.e(requireContext9, str3);
            startActivity(aVar9.a(requireContext9, null, jSONObject18, "GET_SERIES_COMMENT_REPLIES", true));
            return;
        }
        String str16 = str3;
        if (jc.l.a(c12, obj2)) {
            if (jc.l.a(cVar.b().m(), DiskLruCache.VERSION_1)) {
                z0(cVar, "UPDATE_USER_NOTIFICATION", "No");
            }
            JSONObject jSONObject19 = new JSONObject();
            e7.d dVar10 = this.f14812q;
            try {
                if (dVar10.d().containsKey("list_type")) {
                    Object obj12 = dVar10.d().get("list_type");
                    if (("" instanceof Long) && (obj12 instanceof Double)) {
                        str8 = (String) Long.valueOf((long) ((Number) obj12).doubleValue());
                    } else {
                        if (obj12 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                        }
                        str8 = (String) obj12;
                    }
                    str14 = str8;
                }
            } catch (Exception e20) {
                dVar10.toString();
                e20.getMessage();
            }
            jSONObject19.put("list_type", str14);
            jSONObject19.put(str15, cVar.b().i());
            jSONObject19.put("one_comment", "Yes");
            jSONObject19.put(str2, "Yes");
            jSONObject19.put("reference_user", cVar.b().j());
            p pVar10 = p.f15031a;
            String jSONObject20 = jSONObject19.toString();
            jc.l.e(jSONObject20, "JSONObject().apply {\n   …             }.toString()");
            CommentActivity.a aVar10 = CommentActivity.f4177l;
            Context requireContext10 = requireContext();
            jc.l.e(requireContext10, str16);
            startActivity(aVar10.a(requireContext10, null, jSONObject20, "GET_EPISODE_COMMENT_REPLIES", true));
        }
    }

    public final void t0(View view, final s3.c<w4.b> cVar) {
        k0 k0Var = new k0(view.getContext(), view);
        k0Var.b().inflate(R.menu.action_notification_item, k0Var.a());
        k0Var.c(new k0.d() { // from class: v5.h
            @Override // androidx.appcompat.widget.k0.d
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean u02;
                u02 = i.u0(i.this, cVar, menuItem);
                return u02;
            }
        });
        k0Var.d();
    }

    public final void v0(View view) {
        k0 k0Var = new k0(view.getContext(), view);
        k0Var.b().inflate(R.menu.action_notification_menu, k0Var.a());
        k0Var.c(new k0.d() { // from class: v5.g
            @Override // androidx.appcompat.widget.k0.d
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean w02;
                w02 = i.w0(i.this, menuItem);
                return w02;
            }
        });
        k0Var.d();
    }

    public final void y0(String str) {
        b.a aVar = z3.b.f17284d;
        Context applicationContext = requireActivity().getApplicationContext();
        jc.l.e(applicationContext, "requireActivity().applicationContext");
        UserEndpoint userEndpoint = (UserEndpoint) aVar.getInstance(applicationContext).b(UserEndpoint.class);
        try {
            if (jc.l.a(str, "DELETE_USER_NOTIFICATION")) {
                userEndpoint.deleteUsersNotification(0L, "Yes").c0(new h());
            } else if (jc.l.a(str, "UPDATE_USER_NOTIFICATION")) {
                userEndpoint.updateUsersNotification(0L, "0", "Yes").c0(new C0386i());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void z0(s3.c<w4.b> cVar, String str, String str2) {
        b.a aVar = z3.b.f17284d;
        Context applicationContext = requireActivity().getApplicationContext();
        jc.l.e(applicationContext, "requireActivity().applicationContext");
        UserEndpoint userEndpoint = (UserEndpoint) aVar.getInstance(applicationContext).b(UserEndpoint.class);
        try {
            if (jc.l.a(str, "DELETE_USER_NOTIFICATION")) {
                userEndpoint.deleteUsersNotification(Long.valueOf(cVar.b().g()), str2).c0(new j(cVar));
            } else {
                userEndpoint.updateUsersNotification(Long.valueOf(cVar.b().g()), "0", str2).c0(new k(cVar, this));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
