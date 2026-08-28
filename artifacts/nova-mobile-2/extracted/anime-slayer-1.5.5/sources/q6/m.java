package q6;

import android.app.Application;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.j0;
import androidx.lifecycle.y;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.api.endpoint.AuthEndpoint;
import com.anslayer.api.endpoint.UserEndpoint;
import com.twitter.sdk.android.core.internal.TwitterApiConstants;
import g7.c;
import io.wax911.support.common.model.SocialUser;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import org.apache.http.impl.auth.NTLMEngineImpl;
import rc.q0;
import vb.p;

/* compiled from: UserSettingsViewModel.kt */
/* loaded from: classes.dex */
public final class m extends androidx.lifecycle.b {

    /* renamed from: b, reason: collision with root package name */
    public final vb.e f12483b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.e f12484c;

    /* renamed from: d, reason: collision with root package name */
    public final vb.e f12485d;

    /* renamed from: e, reason: collision with root package name */
    public y<g7.a<g7.c<p>>> f12486e;

    /* renamed from: f, reason: collision with root package name */
    public final LiveData<g7.a<g7.c<p>>> f12487f;

    /* renamed from: g, reason: collision with root package name */
    public y<g7.a<g7.c<p>>> f12488g;

    /* renamed from: h, reason: collision with root package name */
    public final LiveData<g7.a<g7.c<p>>> f12489h;

    /* renamed from: i, reason: collision with root package name */
    public y<g7.a<g7.c<p>>> f12490i;

    /* renamed from: j, reason: collision with root package name */
    public final LiveData<g7.a<g7.c<p>>> f12491j;

    /* renamed from: k, reason: collision with root package name */
    public y<g7.a<p>> f12492k;

    /* renamed from: l, reason: collision with root package name */
    public y<g7.a<p>> f12493l;

    /* renamed from: m, reason: collision with root package name */
    public y<g7.a<p>> f12494m;

    /* renamed from: n, reason: collision with root package name */
    public y<g7.a<Exception>> f12495n;

    /* renamed from: o, reason: collision with root package name */
    public y<g7.a<g7.c<String>>> f12496o;

    /* compiled from: UserSettingsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.settings.UserSettingsViewModel$addEmail$1", f = "UserSettingsViewModel.kt", l = {150}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f12497f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f12499h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f12499h = str;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new a(this.f12499h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f12497f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    UserEndpoint z10 = m.this.z();
                    String str = this.f12499h;
                    this.f12497f = 1;
                    obj = z10.addEmail(str, this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                Object a10 = ((n4.c) obj).a();
                jc.l.c(a10);
                m.this.f12496o.o(new g7.a(new c.C0133c(((r4.i) a10).a().a())));
            } catch (Exception e10) {
                m.this.f12496o.o(new g7.a(new c.a(e10)));
            }
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsViewModel.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<AuthEndpoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Application f12500f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Application application) {
            super(0);
            this.f12500f = application;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AuthEndpoint invoke() {
            return (AuthEndpoint) z3.b.f17284d.getInstance(this.f12500f).b(AuthEndpoint.class);
        }
    }

    /* compiled from: UserSettingsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.settings.UserSettingsViewModel$changePassword$1", f = "UserSettingsViewModel.kt", l = {61}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f12501f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f12503h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ String f12504i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ String f12505j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, String str2, String str3, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f12503h = str;
            this.f12504i = str2;
            this.f12505j = str3;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f12503h, this.f12504i, this.f12505j, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f12501f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    m.this.f12486e.o(new g7.a(c.b.f7022a));
                    AuthEndpoint q10 = m.this.q();
                    String str = this.f12503h;
                    String str2 = this.f12504i;
                    String str3 = this.f12505j;
                    this.f12501f = 1;
                    if (q10.changePassword(str, str2, str3, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                m.this.f12486e.o(new g7.a(new c.C0133c(p.f15031a)));
            } catch (Exception e10) {
                m.this.f12486e.o(new g7.a(new c.a(e10)));
            }
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.settings.UserSettingsViewModel$googleLinkAccount$1", f = "UserSettingsViewModel.kt", l = {113}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f12506f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ SocialUser f12508h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w4.e f12509i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(SocialUser socialUser, w4.e eVar, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f12508h = socialUser;
            this.f12509i = eVar;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f12508h, this.f12509i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f12506f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    m.this.f12492k.o(new g7.a(p.f15031a));
                    AuthEndpoint q10 = m.this.q();
                    String accessToken = this.f12508h.getAccessToken();
                    this.f12506f = 1;
                    if (q10.linkGoogleAccount(accessToken, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                this.f12509i.M(true);
                m.this.w().N().set(this.f12509i);
                m.this.f12493l.o(new g7.a(p.f15031a));
            } catch (Exception e10) {
                m.this.f12495n.o(new g7.a(e10));
            }
            return p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class e extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final e f12510f = new e();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public e() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: UserSettingsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.settings.UserSettingsViewModel$twitterLinkAccount$1", f = "UserSettingsViewModel.kt", l = {127}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class f extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f12511f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ SocialUser f12513h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ w4.e f12514i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(SocialUser socialUser, w4.e eVar, ac.d<? super f> dVar) {
            super(2, dVar);
            this.f12513h = socialUser;
            this.f12514i = eVar;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new f(this.f12513h, this.f12514i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((f) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f12511f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    m.this.f12492k.o(new g7.a(p.f15031a));
                    AuthEndpoint q10 = m.this.q();
                    String accessToken = this.f12513h.getAccessToken();
                    String secretToken = this.f12513h.getSecretToken();
                    this.f12511f = 1;
                    if (q10.linkTwitterAccount(accessToken, secretToken, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                this.f12514i.P(true);
                m.this.w().N().set(this.f12514i);
                m.this.f12494m.o(new g7.a(p.f15031a));
            } catch (Exception e10) {
                m.this.f12495n.o(new g7.a(e10));
            }
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.settings.UserSettingsViewModel$updateNewsNotificationState$1", f = "UserSettingsViewModel.kt", l = {79}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class g extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f12515f;

        /* renamed from: g, reason: collision with root package name */
        public Object f12516g;

        /* renamed from: h, reason: collision with root package name */
        public int f12517h;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ boolean f12519j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ w4.e f12520k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(boolean z10, w4.e eVar, ac.d<? super g> dVar) {
            super(2, dVar);
            this.f12519j = z10;
            this.f12520k = eVar;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new g(this.f12519j, this.f12520k, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((g) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            String str;
            w4.e a10;
            w4.e eVar;
            Object d10 = bc.c.d();
            int i10 = this.f12517h;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    m.this.f12488g.o(new g7.a(c.b.f7022a));
                    str = this.f12519j ? "Yes" : "No";
                    a10 = r4.a((r45 & 1) != 0 ? r4.user_id : 0L, (r45 & 2) != 0 ? r4.username : null, (r45 & 4) != 0 ? r4.user_full_name : null, (r45 & 8) != 0 ? r4.user_image_url : null, (r45 & 16) != 0 ? r4.user_cover_url : null, (r45 & 32) != 0 ? r4.user_news_notification : str, (r45 & 64) != 0 ? r4.total_animes_user_favorites : null, (r45 & 128) != 0 ? r4.total_animes_user_watching : null, (r45 & 256) != 0 ? r4.total_animes_user_plan_to_watch : null, (r45 & 512) != 0 ? r4.total_animes_user_watched : null, (r45 & RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE) != 0 ? r4.total_animes_user_dropped : null, (r45 & RecyclerView.e0.FLAG_MOVED) != 0 ? r4.total_animes_user_episodes_watched : null, (r45 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0 ? r4.total_animes_user_on_hold : null, (r45 & RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? r4.blocked : null, (r45 & Http2.INITIAL_MAX_FRAME_SIZE) != 0 ? r4.show_mylist_details : null, (r45 & NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN) != 0 ? r4.full_name_updated_at : null, (r45 & 65536) != 0 ? r4.facebook_linked : false, (r45 & 131072) != 0 ? r4.twitter_linked : false, (r45 & 262144) != 0 ? r4.google_linked : false, (r45 & NTLMEngineImpl.FLAG_NEGOTIATE_NTLM2) != 0 ? r4.user_handle : null, (r45 & 1048576) != 0 ? r4.role : null, (r45 & 2097152) != 0 ? r4.bio : null, (r45 & 4194304) != 0 ? r4.location : null, (r45 & 8388608) != 0 ? r4.birthdate : null, (r45 & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE) != 0 ? r4.user_created_at : null, (r45 & 33554432) != 0 ? this.f12520k.points : null);
                    m mVar = m.this;
                    this.f12515f = str;
                    this.f12516g = a10;
                    this.f12517h = 1;
                    if (mVar.E(a10, this) == d10) {
                        return d10;
                    }
                    eVar = a10;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eVar = (w4.e) this.f12516g;
                    str = (String) this.f12515f;
                    vb.k.b(obj);
                }
                this.f12520k.Q(str);
                m.this.w().N().set(eVar);
                m.this.f12488g.o(new g7.a(new c.C0133c(p.f15031a)));
            } catch (Exception e10) {
                m.this.f12488g.o(new g7.a(new c.a(e10)));
            }
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.settings.UserSettingsViewModel$updateShowMylistState$1", f = "UserSettingsViewModel.kt", l = {99}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class h extends cc.k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f12521f;

        /* renamed from: g, reason: collision with root package name */
        public Object f12522g;

        /* renamed from: h, reason: collision with root package name */
        public int f12523h;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ boolean f12525j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ w4.e f12526k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(boolean z10, w4.e eVar, ac.d<? super h> dVar) {
            super(2, dVar);
            this.f12525j = z10;
            this.f12526k = eVar;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new h(this.f12525j, this.f12526k, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((h) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            String str;
            w4.e a10;
            w4.e eVar;
            Object d10 = bc.c.d();
            int i10 = this.f12523h;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    m.this.f12490i.o(new g7.a(c.b.f7022a));
                    str = this.f12525j ? "Yes" : "No";
                    a10 = r4.a((r45 & 1) != 0 ? r4.user_id : 0L, (r45 & 2) != 0 ? r4.username : null, (r45 & 4) != 0 ? r4.user_full_name : null, (r45 & 8) != 0 ? r4.user_image_url : null, (r45 & 16) != 0 ? r4.user_cover_url : null, (r45 & 32) != 0 ? r4.user_news_notification : null, (r45 & 64) != 0 ? r4.total_animes_user_favorites : null, (r45 & 128) != 0 ? r4.total_animes_user_watching : null, (r45 & 256) != 0 ? r4.total_animes_user_plan_to_watch : null, (r45 & 512) != 0 ? r4.total_animes_user_watched : null, (r45 & RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE) != 0 ? r4.total_animes_user_dropped : null, (r45 & RecyclerView.e0.FLAG_MOVED) != 0 ? r4.total_animes_user_episodes_watched : null, (r45 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0 ? r4.total_animes_user_on_hold : null, (r45 & RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? r4.blocked : null, (r45 & Http2.INITIAL_MAX_FRAME_SIZE) != 0 ? r4.show_mylist_details : str, (r45 & NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN) != 0 ? r4.full_name_updated_at : null, (r45 & 65536) != 0 ? r4.facebook_linked : false, (r45 & 131072) != 0 ? r4.twitter_linked : false, (r45 & 262144) != 0 ? r4.google_linked : false, (r45 & NTLMEngineImpl.FLAG_NEGOTIATE_NTLM2) != 0 ? r4.user_handle : null, (r45 & 1048576) != 0 ? r4.role : null, (r45 & 2097152) != 0 ? r4.bio : null, (r45 & 4194304) != 0 ? r4.location : null, (r45 & 8388608) != 0 ? r4.birthdate : null, (r45 & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE) != 0 ? r4.user_created_at : null, (r45 & 33554432) != 0 ? this.f12526k.points : null);
                    m mVar = m.this;
                    this.f12521f = str;
                    this.f12522g = a10;
                    this.f12523h = 1;
                    if (mVar.E(a10, this) == d10) {
                        return d10;
                    }
                    eVar = a10;
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    eVar = (w4.e) this.f12522g;
                    str = (String) this.f12521f;
                    vb.k.b(obj);
                }
                this.f12526k.O(str);
                m.this.w().N().set(eVar);
                m.this.f12490i.o(new g7.a(new c.C0133c(p.f15031a)));
            } catch (Exception e10) {
                m.this.f12490i.o(new g7.a(new c.a(e10)));
            }
            return p.f15031a;
        }
    }

    /* compiled from: UserSettingsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.settings.UserSettingsViewModel", f = "UserSettingsViewModel.kt", l = {TwitterApiConstants.Errors.ALREADY_FAVORITED}, m = "updateUser")
    /* loaded from: classes.dex */
    public static final class i extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f12527f;

        /* renamed from: h, reason: collision with root package name */
        public int f12529h;

        public i(ac.d<? super i> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f12527f = obj;
            this.f12529h |= Integer.MIN_VALUE;
            return m.this.E(null, this);
        }
    }

    /* compiled from: UserSettingsViewModel.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<UserEndpoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Application f12530f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(Application application) {
            super(0);
            this.f12530f = application;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserEndpoint invoke() {
            return (UserEndpoint) z3.b.f17284d.getInstance(this.f12530f).b(UserEndpoint.class);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(Application application) {
        super(application);
        jc.l.f(application, "application");
        this.f12483b = vb.f.a(e.f12510f);
        this.f12484c = vb.f.a(new j(application));
        this.f12485d = vb.f.a(new b(application));
        y<g7.a<g7.c<p>>> yVar = new y<>();
        this.f12486e = yVar;
        this.f12487f = yVar;
        y<g7.a<g7.c<p>>> yVar2 = new y<>();
        this.f12488g = yVar2;
        this.f12489h = yVar2;
        y<g7.a<g7.c<p>>> yVar3 = new y<>();
        this.f12490i = yVar3;
        this.f12491j = yVar3;
        this.f12492k = new y<>();
        this.f12493l = new y<>();
        this.f12494m = new y<>();
        this.f12495n = new y<>();
        this.f12496o = new y<>();
    }

    public final void A(SocialUser socialUser, w4.e eVar) {
        jc.l.f(socialUser, "socialUser");
        jc.l.f(eVar, "user");
        rc.k.d(j0.a(this), null, null, new d(socialUser, eVar, null), 3, null);
    }

    public final void B(SocialUser socialUser, w4.e eVar) {
        jc.l.f(socialUser, "socialUser");
        jc.l.f(eVar, "user");
        rc.k.d(j0.a(this), null, null, new f(socialUser, eVar, null), 3, null);
    }

    public final void C(w4.e eVar, boolean z10) {
        jc.l.f(eVar, "currentUser");
        rc.k.d(j0.a(this), null, null, new g(z10, eVar, null), 3, null);
    }

    public final void D(w4.e eVar, boolean z10) {
        jc.l.f(eVar, "currentUser");
        rc.k.d(j0.a(this), null, null, new h(z10, eVar, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object E(w4.e eVar, ac.d<? super p> dVar) {
        i iVar;
        int i10;
        if (dVar instanceof i) {
            iVar = (i) dVar;
            int i11 = iVar.f12529h;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                iVar.f12529h = i11 - Integer.MIN_VALUE;
                i iVar2 = iVar;
                Object obj = iVar2.f12527f;
                Object d10 = bc.c.d();
                i10 = iVar2.f12529h;
                if (i10 != 0) {
                    vb.k.b(obj);
                    UserEndpoint z10 = z();
                    String I = eVar.I();
                    String B = eVar.B();
                    String H = eVar.H();
                    String p10 = eVar.p();
                    iVar2.f12529h = 1;
                    obj = z10.updateUserV2(I, B, H, p10, iVar2);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                return p.f15031a;
            }
        }
        iVar = new i(dVar);
        i iVar22 = iVar;
        Object obj2 = iVar22.f12527f;
        Object d102 = bc.c.d();
        i10 = iVar22.f12529h;
        if (i10 != 0) {
        }
        return p.f15031a;
    }

    public final void n(String str) {
        jc.l.f(str, "currentEmail");
        rc.k.d(j0.a(this), null, null, new a(str, null), 3, null);
    }

    public final void o(String str, String str2, String str3) {
        jc.l.f(str, "currentPassword");
        jc.l.f(str2, "newPassword");
        jc.l.f(str3, "confirmedPassword");
        rc.k.d(j0.a(this), null, null, new c(str, str2, str3, null), 3, null);
    }

    public final LiveData<g7.a<g7.c<String>>> p() {
        return this.f12496o;
    }

    public final AuthEndpoint q() {
        return (AuthEndpoint) this.f12485d.getValue();
    }

    public final LiveData<g7.a<g7.c<p>>> r() {
        return this.f12489h;
    }

    public final LiveData<g7.a<g7.c<p>>> s() {
        return this.f12487f;
    }

    public final LiveData<g7.a<g7.c<p>>> t() {
        return this.f12491j;
    }

    public final LiveData<g7.a<Exception>> u() {
        return this.f12495n;
    }

    public final LiveData<g7.a<p>> v() {
        return this.f12493l;
    }

    public final f4.d w() {
        return (f4.d) this.f12483b.getValue();
    }

    public final LiveData<g7.a<p>> x() {
        return this.f12492k;
    }

    public final LiveData<g7.a<p>> y() {
        return this.f12494m;
    }

    public final UserEndpoint z() {
        return (UserEndpoint) this.f12484c.getValue();
    }
}
