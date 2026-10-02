package u5;

import android.content.Context;
import android.os.Bundle;
import com.anslayer.R;
import com.anslayer.api.endpoint.EpisodeCommentEndpoint;
import com.anslayer.api.endpoint.SeriesCommentEndpoint;
import io.wax911.support.custom.consumer.SupportObserver;
import io.wax911.support.util.InstanceUtil;
import java.util.Map;
import rc.g1;
import rc.l0;
import rc.n2;
import rc.q0;
import rd.q;
import retrofit2.HttpException;

/* compiled from: CommentPresenter.kt */
/* loaded from: classes.dex */
public final class n extends r5.a {

    /* renamed from: g, reason: collision with root package name */
    public static final a f14398g = new a(null);

    /* compiled from: CommentPresenter.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<n, Context> {

        /* compiled from: CommentPresenter.kt */
        /* renamed from: u5.n$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0363a extends jc.m implements ic.l<Context, n> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0363a f14399f = new C0363a();

            public C0363a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final n invoke(Context context) {
                return new n(context, null);
            }
        }

        public a() {
            super(C0363a.f14399f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CommentPresenter.kt */
    @cc.f(c = "com.anslayer.ui.comment.CommentPresenter", f = "CommentPresenter.kt", l = {42, 49, 58, 65, 73, 80, 89, 96, 108, 128}, m = "beginCommentRequest")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f14400f;

        /* renamed from: g, reason: collision with root package name */
        public Object f14401g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f14402h;

        /* renamed from: j, reason: collision with root package name */
        public int f14404j;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14402h = obj;
            this.f14404j |= Integer.MIN_VALUE;
            return n.this.k(null, this);
        }
    }

    /* compiled from: CommentPresenter.kt */
    @cc.f(c = "com.anslayer.ui.comment.CommentPresenter$beginCommentRequest$2", f = "CommentPresenter.kt", l = {115}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14405f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ HttpException f14406g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ n f14407h;

        /* compiled from: CommentPresenter.kt */
        @cc.f(c = "com.anslayer.ui.comment.CommentPresenter$beginCommentRequest$2$errorMessage$1", f = "CommentPresenter.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<q0, ac.d<? super String>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f14408f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ HttpException f14409g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(HttpException httpException, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f14409g = httpException;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f14409g, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super String> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                bc.c.d();
                if (this.f14408f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                q<?> c10 = this.f14409g.c();
                Map<String, String> b10 = x4.b.b(c10 == null ? null : c10.d());
                if (b10 == null) {
                    return null;
                }
                return b10.get("detail");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(HttpException httpException, n nVar, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f14406g = httpException;
            this.f14407h = nVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f14406g, this.f14407h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f14405f;
            if (i10 == 0) {
                vb.k.b(obj);
                switch (this.f14406g.a()) {
                    case 432:
                        Context d11 = this.f14407h.d();
                        if (d11 == null) {
                            return null;
                        }
                        k7.b.r(d11, "يرجى انتظار بعض الوقت للتعليق مرة اخرى", 0, 2, null);
                        return vb.p.f15031a;
                    case 433:
                        Context d12 = this.f14407h.d();
                        if (d12 == null) {
                            return null;
                        }
                        k7.b.r(d12, "تجاوزت الحد الاعلى المسموح للتعليق", 0, 2, null);
                        return vb.p.f15031a;
                    case 434:
                        Context d13 = this.f14407h.d();
                        if (d13 == null) {
                            return null;
                        }
                        k7.b.r(d13, "لا يسمح بالتعليق الطويل", 0, 2, null);
                        return vb.p.f15031a;
                    case 435:
                    default:
                        Context d14 = this.f14407h.d();
                        if (d14 == null) {
                            return null;
                        }
                        k7.b.q(d14, R.string.text_request_error, 0, 2, null);
                        return vb.p.f15031a;
                    case 436:
                        Context d15 = this.f14407h.d();
                        if (d15 == null) {
                            return null;
                        }
                        k7.b.r(d15, "تم حظرك من التعليق", 0, 2, null);
                        return vb.p.f15031a;
                    case 437:
                        l0 b10 = g1.b();
                        a aVar = new a(this.f14406g, null);
                        this.f14405f = 1;
                        obj = rc.i.g(b10, aVar, this);
                        if (obj == d10) {
                            return d10;
                        }
                        break;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            String str = (String) obj;
            if (str != null) {
                Context d16 = this.f14407h.d();
                if (d16 == null) {
                    return null;
                }
                k7.b.p(d16, str, 1);
                return vb.p.f15031a;
            }
            Context d17 = this.f14407h.d();
            if (d17 == null) {
                return null;
            }
            k7.b.q(d17, R.string.text_request_error, 0, 2, null);
            return vb.p.f15031a;
        }
    }

    /* compiled from: CommentPresenter.kt */
    @cc.f(c = "com.anslayer.ui.comment.CommentPresenter$beginCommentRequest$3", f = "CommentPresenter.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14410f;

        public d(ac.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new d(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f14410f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            Context d10 = n.this.d();
            if (d10 == null) {
                return null;
            }
            k7.b.q(d10, R.string.text_request_error, 0, 2, null);
            return vb.p.f15031a;
        }
    }

    public n(Context context) {
        super(context);
    }

    public /* synthetic */ n(Context context, jc.g gVar) {
        this(context);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:53:0x00e8. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0027. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x029e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x027e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object k(Bundle bundle, ac.d<? super Boolean> dVar) {
        b bVar;
        n nVar;
        SupportObserver supportObserver;
        SupportObserver supportObserver2;
        n2 c10;
        d dVar2;
        n2 c11;
        c cVar;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i10 = bVar.f14404j;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                bVar.f14404j = i10 - Integer.MIN_VALUE;
                Object obj = bVar.f14402h;
                Object d10 = bc.c.d();
                switch (bVar.f14404j) {
                    case 0:
                        vb.k.b(obj);
                        Context d11 = d();
                        SeriesCommentEndpoint seriesCommentEndpoint = d11 == null ? null : (SeriesCommentEndpoint) z3.b.f17284d.getInstance(d11).b(SeriesCommentEndpoint.class);
                        Context d12 = d();
                        EpisodeCommentEndpoint episodeCommentEndpoint = d12 == null ? null : (EpisodeCommentEndpoint) z3.b.f17284d.getInstance(d12).b(EpisodeCommentEndpoint.class);
                        SupportObserver supportObserver3 = new SupportObserver();
                        supportObserver3.getBundle().putAll(bundle);
                        String string = bundle.getString("arg_request_type");
                        if (string != null) {
                            try {
                                switch (string.hashCode()) {
                                    case -1130140134:
                                        supportObserver = supportObserver3;
                                        if (string.equals("CREATE_SERIES_COMMENT")) {
                                            jc.l.c(seriesCommentEndpoint);
                                            long j10 = bundle.getLong("anime_id");
                                            String string2 = bundle.getString("commentText");
                                            String string3 = bundle.getString("commentSpoiler");
                                            bVar.f14400f = this;
                                            bVar.f14401g = supportObserver;
                                            bVar.f14404j = 1;
                                            if (seriesCommentEndpoint.createSeriesComment(j10, string2, string3, bVar) == d10) {
                                                return d10;
                                            }
                                            nVar = this;
                                            supportObserver2 = supportObserver;
                                            r5.b.f12864c.a(supportObserver2, false);
                                            return cc.b.a(true);
                                        }
                                        break;
                                    case -1113129373:
                                        if (string.equals("CREATE_EPISODE_COMMENT_REPLY")) {
                                            jc.l.c(episodeCommentEndpoint);
                                            long j11 = bundle.getLong("episode_comment_id");
                                            String string4 = bundle.getString("commentText");
                                            String string5 = bundle.getString("commentSpoiler");
                                            String string6 = bundle.getString("recipient_id");
                                            String string7 = bundle.getString("notification_type");
                                            bVar.f14400f = this;
                                            bVar.f14401g = supportObserver3;
                                            bVar.f14404j = 6;
                                            EpisodeCommentEndpoint episodeCommentEndpoint2 = episodeCommentEndpoint;
                                            supportObserver = supportObserver3;
                                            if (episodeCommentEndpoint2.createEpisodeCommentReply(j11, string4, string5, string6, string7, bVar) == d10) {
                                                return d10;
                                            }
                                            nVar = this;
                                            supportObserver2 = supportObserver;
                                            r5.b.f12864c.a(supportObserver2, false);
                                            return cc.b.a(true);
                                        }
                                        break;
                                    case -476523880:
                                        if (string.equals("CREATE_EPISODE_COMMENT")) {
                                            jc.l.c(episodeCommentEndpoint);
                                            long j12 = bundle.getLong("episode_id");
                                            String string8 = bundle.getString("commentText");
                                            String string9 = bundle.getString("commentSpoiler");
                                            bVar.f14400f = this;
                                            bVar.f14401g = supportObserver3;
                                            bVar.f14404j = 5;
                                            if (episodeCommentEndpoint.createEpisodeComment(j12, string8, string9, bVar) == d10) {
                                                return d10;
                                            }
                                            nVar = this;
                                            supportObserver2 = supportObserver3;
                                            r5.b.f12864c.a(supportObserver2, false);
                                            return cc.b.a(true);
                                        }
                                        break;
                                    case 1287233356:
                                        if (string.equals("EDIT_SERIES_COMMENT")) {
                                            jc.l.c(seriesCommentEndpoint);
                                            long j13 = bundle.getLong("anime_comment_id");
                                            String string10 = bundle.getString("commentText");
                                            String string11 = bundle.getString("commentSpoiler");
                                            bVar.f14400f = this;
                                            bVar.f14401g = supportObserver3;
                                            bVar.f14404j = 3;
                                            if (seriesCommentEndpoint.updateSeriesComment(j13, string10, string11, bVar) == d10) {
                                                return d10;
                                            }
                                            nVar = this;
                                            supportObserver2 = supportObserver3;
                                            r5.b.f12864c.a(supportObserver2, false);
                                            return cc.b.a(true);
                                        }
                                        break;
                                    case 1447610278:
                                        if (string.equals("EDIT_EPISODE_COMMENT")) {
                                            jc.l.c(episodeCommentEndpoint);
                                            long j14 = bundle.getLong("episode_comment_id");
                                            String string12 = bundle.getString("commentText");
                                            String string13 = bundle.getString("commentSpoiler");
                                            bVar.f14400f = this;
                                            bVar.f14401g = supportObserver3;
                                            bVar.f14404j = 7;
                                            if (episodeCommentEndpoint.updateEpisodeComment(j14, string12, string13, bVar) == d10) {
                                                return d10;
                                            }
                                            nVar = this;
                                            supportObserver2 = supportObserver3;
                                            r5.b.f12864c.a(supportObserver2, false);
                                            return cc.b.a(true);
                                        }
                                        break;
                                    case 1778085989:
                                        if (string.equals("CREATE_SERIES_COMMENT_REPLY")) {
                                            jc.l.c(seriesCommentEndpoint);
                                            long j15 = bundle.getLong("anime_comment_id");
                                            String string14 = bundle.getString("commentText");
                                            String string15 = bundle.getString("commentSpoiler");
                                            String string16 = bundle.getString("recipient_id");
                                            String string17 = bundle.getString("notification_type");
                                            bVar.f14400f = this;
                                            bVar.f14401g = supportObserver3;
                                            bVar.f14404j = 2;
                                            supportObserver2 = supportObserver3;
                                            if (seriesCommentEndpoint.createSeriesCommentReply(j15, string14, string15, string16, string17, bVar) == d10) {
                                                return d10;
                                            }
                                            nVar = this;
                                            r5.b.f12864c.a(supportObserver2, false);
                                            return cc.b.a(true);
                                        }
                                        break;
                                    case 1818390769:
                                        if (string.equals("EDIT_EPISODE_COMMENT_REPLY")) {
                                            jc.l.c(episodeCommentEndpoint);
                                            long j16 = bundle.getLong("episode_comment_reply_id");
                                            String string18 = bundle.getString("commentText");
                                            String string19 = bundle.getString("commentSpoiler");
                                            bVar.f14400f = this;
                                            bVar.f14401g = supportObserver3;
                                            bVar.f14404j = 8;
                                            if (episodeCommentEndpoint.updateEpisodeCommentReply(j16, string18, string19, bVar) == d10) {
                                                return d10;
                                            }
                                            nVar = this;
                                            supportObserver2 = supportObserver3;
                                            r5.b.f12864c.a(supportObserver2, false);
                                            return cc.b.a(true);
                                        }
                                        break;
                                    case 2011198487:
                                        if (string.equals("EDIT_SERIES_COMMENT_REPLY")) {
                                            jc.l.c(seriesCommentEndpoint);
                                            long j17 = bundle.getLong("anime_comment_reply_id");
                                            String string20 = bundle.getString("commentText");
                                            String string21 = bundle.getString("commentSpoiler");
                                            bVar.f14400f = this;
                                            bVar.f14401g = supportObserver3;
                                            bVar.f14404j = 4;
                                            if (seriesCommentEndpoint.updateSeriesCommentReply(j17, string20, string21, bVar) == d10) {
                                                return d10;
                                            }
                                            nVar = this;
                                            supportObserver2 = supportObserver3;
                                            r5.b.f12864c.a(supportObserver2, false);
                                            return cc.b.a(true);
                                        }
                                        break;
                                }
                            } catch (HttpException e10) {
                                e = e10;
                                nVar = this;
                                c11 = g1.c();
                                cVar = new c(e, nVar, null);
                                bVar.f14400f = null;
                                bVar.f14401g = null;
                                bVar.f14404j = 9;
                                if (rc.i.g(c11, cVar, bVar) == d10) {
                                }
                                return cc.b.a(false);
                            } catch (Exception unused) {
                                nVar = this;
                                c10 = g1.c();
                                dVar2 = new d(null);
                                bVar.f14400f = null;
                                bVar.f14401g = null;
                                bVar.f14404j = 10;
                                if (rc.i.g(c10, dVar2, bVar) == d10) {
                                }
                                return cc.b.a(false);
                            }
                        }
                        throw new IllegalStateException(jc.l.m("unsupported request type: ", string));
                    case 1:
                        supportObserver2 = (SupportObserver) bVar.f14401g;
                        nVar = (n) bVar.f14400f;
                        try {
                            vb.k.b(obj);
                            r5.b.f12864c.a(supportObserver2, false);
                            return cc.b.a(true);
                        } catch (HttpException e11) {
                            e = e11;
                            c11 = g1.c();
                            cVar = new c(e, nVar, null);
                            bVar.f14400f = null;
                            bVar.f14401g = null;
                            bVar.f14404j = 9;
                            if (rc.i.g(c11, cVar, bVar) == d10) {
                                return d10;
                            }
                            return cc.b.a(false);
                        } catch (Exception unused2) {
                            c10 = g1.c();
                            dVar2 = new d(null);
                            bVar.f14400f = null;
                            bVar.f14401g = null;
                            bVar.f14404j = 10;
                            if (rc.i.g(c10, dVar2, bVar) == d10) {
                                return d10;
                            }
                            return cc.b.a(false);
                        }
                    case 2:
                        supportObserver2 = (SupportObserver) bVar.f14401g;
                        nVar = (n) bVar.f14400f;
                        vb.k.b(obj);
                        r5.b.f12864c.a(supportObserver2, false);
                        return cc.b.a(true);
                    case 3:
                        supportObserver2 = (SupportObserver) bVar.f14401g;
                        nVar = (n) bVar.f14400f;
                        vb.k.b(obj);
                        r5.b.f12864c.a(supportObserver2, false);
                        return cc.b.a(true);
                    case 4:
                        supportObserver2 = (SupportObserver) bVar.f14401g;
                        nVar = (n) bVar.f14400f;
                        vb.k.b(obj);
                        r5.b.f12864c.a(supportObserver2, false);
                        return cc.b.a(true);
                    case 5:
                        supportObserver2 = (SupportObserver) bVar.f14401g;
                        nVar = (n) bVar.f14400f;
                        vb.k.b(obj);
                        r5.b.f12864c.a(supportObserver2, false);
                        return cc.b.a(true);
                    case 6:
                        supportObserver2 = (SupportObserver) bVar.f14401g;
                        nVar = (n) bVar.f14400f;
                        vb.k.b(obj);
                        r5.b.f12864c.a(supportObserver2, false);
                        return cc.b.a(true);
                    case 7:
                        supportObserver2 = (SupportObserver) bVar.f14401g;
                        nVar = (n) bVar.f14400f;
                        vb.k.b(obj);
                        r5.b.f12864c.a(supportObserver2, false);
                        return cc.b.a(true);
                    case 8:
                        supportObserver2 = (SupportObserver) bVar.f14401g;
                        nVar = (n) bVar.f14400f;
                        vb.k.b(obj);
                        r5.b.f12864c.a(supportObserver2, false);
                        return cc.b.a(true);
                    case 9:
                        vb.k.b(obj);
                        return cc.b.a(false);
                    case 10:
                        vb.k.b(obj);
                        return cc.b.a(false);
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
        }
        bVar = new b(dVar);
        Object obj2 = bVar.f14402h;
        Object d102 = bc.c.d();
        switch (bVar.f14404j) {
        }
    }

    @Override // r5.b, io.wax911.support.base.event.LifecycleListener
    public void onDestroy() {
        g().cancel();
        super.onDestroy();
    }
}
