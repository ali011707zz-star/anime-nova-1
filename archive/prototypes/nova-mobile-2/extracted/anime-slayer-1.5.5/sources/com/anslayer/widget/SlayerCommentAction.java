package com.anslayer.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.k0;
import cc.k;
import com.anslayer.R;
import com.anslayer.api.endpoint.EpisodeCommentEndpoint;
import com.anslayer.api.endpoint.SeriesCommentEndpoint;
import com.anslayer.widget.SlayerCommentAction;
import com.google.android.material.badge.BadgeDrawable;
import ic.p;
import ic.q;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.event.ItemClickListener;
import io.wax911.support.base.view.CustomView;
import io.wax911.support.custom.consumer.SupportObserver;
import io.wax911.support.util.SupportAnalyticUtil;
import io.wax911.support.util.SupportLifecycleUtil;
import j4.e3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.l;
import jc.m;
import org.apache.http.HttpStatus;
import org.apache.http.cookie.ClientCookie;
import rc.q0;
import u5.g;
import z3.a;

/* compiled from: SlayerCommentAction.kt */
/* loaded from: classes.dex */
public final class SlayerCommentAction extends LinearLayoutCompat implements CustomView, View.OnClickListener, SupportLifecycleUtil.LifecycleCallback {

    /* renamed from: f, reason: collision with root package name */
    public m4.b f4388f;

    /* renamed from: g, reason: collision with root package name */
    public u5.g f4389g;

    /* renamed from: h, reason: collision with root package name */
    public String f4390h;

    /* renamed from: i, reason: collision with root package name */
    public ItemClickListener<m4.b> f4391i;

    /* renamed from: j, reason: collision with root package name */
    public final vb.e f4392j;

    /* renamed from: k, reason: collision with root package name */
    public SupportLifecycleUtil f4393k;

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f4394l;

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f4395m;

    /* renamed from: n, reason: collision with root package name */
    public final vb.e f4396n;

    /* renamed from: o, reason: collision with root package name */
    public final vb.e f4397o;

    /* compiled from: SlayerCommentAction.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<e3> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f4398f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ SlayerCommentAction f4399g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, SlayerCommentAction slayerCommentAction) {
            super(0);
            this.f4398f = context;
            this.f4399g = slayerCommentAction;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e3 invoke() {
            e3 b10 = e3.b(SupportExtentionKt.getLayoutInflater(this.f4398f), this.f4399g, true);
            l.e(b10, "inflate(context.getLayoutInflater(), this, true)");
            return b10;
        }
    }

    /* compiled from: SlayerCommentAction.kt */
    @cc.f(c = "com.anslayer.widget.SlayerCommentAction$deleteCommentOrReply$1", f = "SlayerCommentAction.kt", l = {372, 373, 374, 375}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4400f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ boolean f4401g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ boolean f4402h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ SlayerCommentAction f4403i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z10, boolean z11, SlayerCommentAction slayerCommentAction, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f4401g = z10;
            this.f4402h = z11;
            this.f4403i = slayerCommentAction;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f4401g, this.f4402h, this.f4403i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f4400f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    boolean z10 = this.f4401g;
                    boolean z11 = !z10 && this.f4402h;
                    boolean z12 = (z10 || this.f4402h) ? false : true;
                    boolean z13 = z10 && this.f4402h;
                    boolean z14 = z10 && !this.f4402h;
                    if (z11) {
                        SeriesCommentEndpoint seriesCommentEndpoint = this.f4403i.getSeriesCommentEndpoint();
                        long f10 = this.f4403i.getModel().f();
                        this.f4400f = 1;
                        if (seriesCommentEndpoint.deleteSeriesCommentReplyV2(f10, this) == d10) {
                            return d10;
                        }
                    } else if (z12) {
                        SeriesCommentEndpoint seriesCommentEndpoint2 = this.f4403i.getSeriesCommentEndpoint();
                        long e10 = this.f4403i.getModel().e();
                        this.f4400f = 2;
                        if (seriesCommentEndpoint2.deleteSeriesCommentV2(e10, this) == d10) {
                            return d10;
                        }
                    } else if (z13) {
                        EpisodeCommentEndpoint episodeCommentEndpoint = this.f4403i.getEpisodeCommentEndpoint();
                        long f11 = this.f4403i.getModel().f();
                        this.f4400f = 3;
                        if (episodeCommentEndpoint.deleteEpisodeCommentReplyV2(f11, this) == d10) {
                            return d10;
                        }
                    } else if (z14) {
                        EpisodeCommentEndpoint episodeCommentEndpoint2 = this.f4403i.getEpisodeCommentEndpoint();
                        long e11 = this.f4403i.getModel().e();
                        this.f4400f = 4;
                        if (episodeCommentEndpoint2.deleteEpisodeCommentV2(e11, this) == d10) {
                            return d10;
                        }
                    }
                } else {
                    if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                SupportObserver supportObserver = new SupportObserver();
                SlayerCommentAction slayerCommentAction = this.f4403i;
                supportObserver.getBundle().putString("arg_request_type", "delete_comment");
                supportObserver.getBundle().putParcelable("arg_model", slayerCommentAction.getModel());
                r5.b.f12864c.a(supportObserver, false);
            } catch (Exception e12) {
                Context context = this.f4403i.getContext();
                l.e(context, "context");
                k7.b.o(context, R.string.text_request_error, 1);
                SupportAnalyticUtil d11 = k7.b.d(this.f4403i.getContext());
                if (d11 != null) {
                    d11.logException(e12);
                }
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: SlayerCommentAction.kt */
    @cc.f(c = "com.anslayer.widget.SlayerCommentAction$dislikeCommentOrReply$2", f = "SlayerCommentAction.kt", l = {278, 279, 280, 281}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4404f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ boolean f4405g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ boolean f4406h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ SlayerCommentAction f4407i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(boolean z10, boolean z11, SlayerCommentAction slayerCommentAction, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f4405g = z10;
            this.f4406h = z11;
            this.f4407i = slayerCommentAction;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f4405g, this.f4406h, this.f4407i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f4404f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    boolean z10 = this.f4405g;
                    boolean z11 = false;
                    boolean z12 = !z10 && this.f4406h;
                    boolean z13 = (z10 || this.f4406h) ? false : true;
                    boolean z14 = z10 && this.f4406h;
                    if (z10 && !this.f4406h) {
                        z11 = true;
                    }
                    if (z12) {
                        SeriesCommentEndpoint seriesCommentEndpoint = this.f4407i.getSeriesCommentEndpoint();
                        long f10 = this.f4407i.getModel().f();
                        this.f4404f = 1;
                        if (seriesCommentEndpoint.dislikeSeriesCommentReplyV2(f10, this) == d10) {
                            return d10;
                        }
                    } else if (z13) {
                        SeriesCommentEndpoint seriesCommentEndpoint2 = this.f4407i.getSeriesCommentEndpoint();
                        long e10 = this.f4407i.getModel().e();
                        this.f4404f = 2;
                        if (seriesCommentEndpoint2.dislikeSeriesCommentV2(e10, this) == d10) {
                            return d10;
                        }
                    } else if (z14) {
                        EpisodeCommentEndpoint episodeCommentEndpoint = this.f4407i.getEpisodeCommentEndpoint();
                        long f11 = this.f4407i.getModel().f();
                        this.f4404f = 3;
                        if (episodeCommentEndpoint.dislikeEpisodeCommentReplyV2(f11, this) == d10) {
                            return d10;
                        }
                    } else if (z11) {
                        EpisodeCommentEndpoint episodeCommentEndpoint2 = this.f4407i.getEpisodeCommentEndpoint();
                        long e11 = this.f4407i.getModel().e();
                        this.f4404f = 4;
                        if (episodeCommentEndpoint2.dislikeEpisodeCommentV2(e11, this) == d10) {
                            return d10;
                        }
                    } else {
                        throw new IllegalStateException("not supported ");
                    }
                } else {
                    if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
            } catch (Exception e12) {
                Context context = this.f4407i.getContext();
                l.e(context, "context");
                k7.b.o(context, R.string.text_request_error, 1);
                SupportAnalyticUtil d11 = k7.b.d(this.f4407i.getContext());
                if (d11 != null) {
                    d11.logException(e12);
                }
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: SlayerCommentAction.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<EpisodeCommentEndpoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f4408f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context) {
            super(0);
            this.f4408f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EpisodeCommentEndpoint invoke() {
            return (EpisodeCommentEndpoint) z3.b.f17284d.getInstance(this.f4408f).b(EpisodeCommentEndpoint.class);
        }
    }

    /* compiled from: SlayerCommentAction.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements q<s2.c, Integer, CharSequence, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ boolean f4410g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ boolean f4411h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ s2.c f4412i;

        /* compiled from: SlayerCommentAction.kt */
        @cc.f(c = "com.anslayer.widget.SlayerCommentAction$flagComment$1$1$1", f = "SlayerCommentAction.kt", l = {HttpStatus.SC_GONE, HttpStatus.SC_LENGTH_REQUIRED, HttpStatus.SC_PRECONDITION_FAILED, HttpStatus.SC_REQUEST_TOO_LONG}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f4413f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ boolean f4414g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ boolean f4415h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ SlayerCommentAction f4416i;

            /* renamed from: j, reason: collision with root package name */
            public final /* synthetic */ long f4417j;

            /* renamed from: k, reason: collision with root package name */
            public final /* synthetic */ s2.c f4418k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(boolean z10, boolean z11, SlayerCommentAction slayerCommentAction, long j10, s2.c cVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f4414g = z10;
                this.f4415h = z11;
                this.f4416i = slayerCommentAction;
                this.f4417j = j10;
                this.f4418k = cVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f4414g, this.f4415h, this.f4416i, this.f4417j, this.f4418k, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                Object d10 = bc.c.d();
                int i10 = this.f4413f;
                try {
                    if (i10 == 0) {
                        vb.k.b(obj);
                        boolean z10 = this.f4414g;
                        boolean z11 = false;
                        boolean z12 = !z10 && this.f4415h;
                        boolean z13 = (z10 || this.f4415h) ? false : true;
                        boolean z14 = z10 && this.f4415h;
                        if (z10 && !this.f4415h) {
                            z11 = true;
                        }
                        if (z12) {
                            SeriesCommentEndpoint seriesCommentEndpoint = this.f4416i.getSeriesCommentEndpoint();
                            long f10 = this.f4416i.getModel().f();
                            long j10 = this.f4417j;
                            this.f4413f = 1;
                            if (seriesCommentEndpoint.flagSeriesCommentReplyV2(f10, j10, this) == d10) {
                                return d10;
                            }
                        } else if (z13) {
                            SeriesCommentEndpoint seriesCommentEndpoint2 = this.f4416i.getSeriesCommentEndpoint();
                            long e10 = this.f4416i.getModel().e();
                            long j11 = this.f4417j;
                            this.f4413f = 2;
                            if (seriesCommentEndpoint2.flagSeriesCommentV2(e10, j11, this) == d10) {
                                return d10;
                            }
                        } else if (z14) {
                            EpisodeCommentEndpoint episodeCommentEndpoint = this.f4416i.getEpisodeCommentEndpoint();
                            long f11 = this.f4416i.getModel().f();
                            long j12 = this.f4417j;
                            this.f4413f = 3;
                            if (episodeCommentEndpoint.flagEpisodeCommentReplyV2(f11, j12, this) == d10) {
                                return d10;
                            }
                        } else if (z11) {
                            EpisodeCommentEndpoint episodeCommentEndpoint2 = this.f4416i.getEpisodeCommentEndpoint();
                            long e11 = this.f4416i.getModel().e();
                            long j13 = this.f4417j;
                            this.f4413f = 4;
                            if (episodeCommentEndpoint2.flagEpisodeCommentV2(e11, j13, this) == d10) {
                                return d10;
                            }
                        }
                    } else {
                        if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                    }
                    this.f4416i.getModel().I("Yes");
                } catch (Exception e12) {
                    Context context = this.f4418k.getContext();
                    l.e(context, "context");
                    k7.b.o(context, R.string.text_request_error, 1);
                    SupportAnalyticUtil d11 = k7.b.d(this.f4418k.getContext());
                    if (d11 != null) {
                        d11.logException(e12);
                    }
                }
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(boolean z10, boolean z11, s2.c cVar) {
            super(3);
            this.f4410g = z10;
            this.f4411h = z11;
            this.f4412i = cVar;
        }

        public final void a(s2.c cVar, int i10, CharSequence charSequence) {
            l.f(cVar, "$noName_0");
            l.f(charSequence, "$noName_2");
            e7.b.b(new a(this.f4410g, this.f4411h, SlayerCommentAction.this, ((m4.c) SlayerCommentAction.this.getFlagReasons().get(i10)).a(), this.f4412i, null));
        }

        @Override // ic.q
        public /* bridge */ /* synthetic */ vb.p i(s2.c cVar, Integer num, CharSequence charSequence) {
            a(cVar, num.intValue(), charSequence);
            return vb.p.f15031a;
        }
    }

    /* compiled from: SlayerCommentAction.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<List<? extends m4.c>> {

        /* renamed from: f, reason: collision with root package name */
        public static final f f4419f = new f();

        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<m4.c> invoke() {
            return wb.l.l(new m4.c(1L, "حرق الاحداث", 1), new m4.c(2L, "تعليق مسيء", 2), new m4.c(3L, "تعليق خارج الموضوع", 3));
        }
    }

    /* compiled from: SlayerCommentAction.kt */
    @cc.f(c = "com.anslayer.widget.SlayerCommentAction$likeCommentOrReply$2", f = "SlayerCommentAction.kt", l = {329, 330, 331, 332}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class g extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4420f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ boolean f4421g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ boolean f4422h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ SlayerCommentAction f4423i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(boolean z10, boolean z11, SlayerCommentAction slayerCommentAction, ac.d<? super g> dVar) {
            super(2, dVar);
            this.f4421g = z10;
            this.f4422h = z11;
            this.f4423i = slayerCommentAction;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new g(this.f4421g, this.f4422h, this.f4423i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((g) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f4420f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    boolean z10 = this.f4421g;
                    boolean z11 = false;
                    boolean z12 = !z10 && this.f4422h;
                    boolean z13 = (z10 || this.f4422h) ? false : true;
                    boolean z14 = z10 && this.f4422h;
                    if (z10 && !this.f4422h) {
                        z11 = true;
                    }
                    if (z12) {
                        SeriesCommentEndpoint seriesCommentEndpoint = this.f4423i.getSeriesCommentEndpoint();
                        long f10 = this.f4423i.getModel().f();
                        this.f4420f = 1;
                        if (seriesCommentEndpoint.likeSeriesCommentReplyV2(f10, this) == d10) {
                            return d10;
                        }
                    } else if (z13) {
                        SeriesCommentEndpoint seriesCommentEndpoint2 = this.f4423i.getSeriesCommentEndpoint();
                        long e10 = this.f4423i.getModel().e();
                        this.f4420f = 2;
                        if (seriesCommentEndpoint2.likeSeriesCommentV2(e10, this) == d10) {
                            return d10;
                        }
                    } else if (z14) {
                        EpisodeCommentEndpoint episodeCommentEndpoint = this.f4423i.getEpisodeCommentEndpoint();
                        long f11 = this.f4423i.getModel().f();
                        this.f4420f = 3;
                        if (episodeCommentEndpoint.likeEpisodeCommentReplyV2(f11, this) == d10) {
                            return d10;
                        }
                    } else if (z11) {
                        EpisodeCommentEndpoint episodeCommentEndpoint2 = this.f4423i.getEpisodeCommentEndpoint();
                        long e11 = this.f4423i.getModel().e();
                        this.f4420f = 4;
                        if (episodeCommentEndpoint2.likeEpisodeCommentV2(e11, this) == d10) {
                            return d10;
                        }
                    } else {
                        throw new IllegalStateException("not supported ");
                    }
                } else {
                    if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
            } catch (Exception e12) {
                Context context = this.f4423i.getContext();
                l.e(context, "context");
                k7.b.o(context, R.string.text_request_error, 1);
                SupportAnalyticUtil d11 = k7.b.d(this.f4423i.getContext());
                if (d11 != null) {
                    d11.logException(e12);
                }
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: SlayerCommentAction.kt */
    /* loaded from: classes.dex */
    public static final class h extends m implements ic.a<z3.a> {

        /* renamed from: f, reason: collision with root package name */
        public static final h f4424f = new h();

        public h() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final z3.a invoke() {
            return a.C0435a.b(z3.a.f17279b, false, 1, null);
        }
    }

    /* compiled from: SlayerCommentAction.kt */
    /* loaded from: classes.dex */
    public static final class i extends m implements ic.a<SeriesCommentEndpoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f4425f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(Context context) {
            super(0);
            this.f4425f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SeriesCommentEndpoint invoke() {
            return (SeriesCommentEndpoint) z3.b.f17284d.getInstance(this.f4425f).b(SeriesCommentEndpoint.class);
        }
    }

    /* compiled from: SlayerCommentAction.kt */
    /* loaded from: classes.dex */
    public static final class j extends m implements ic.l<s2.c, vb.p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ boolean f4427g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ boolean f4428h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(boolean z10, boolean z11) {
            super(1);
            this.f4427g = z10;
            this.f4428h = z11;
        }

        public final void a(s2.c cVar) {
            l.f(cVar, "it");
            SlayerCommentAction.this.o(this.f4427g, this.f4428h);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(s2.c cVar) {
            a(cVar);
            return vb.p.f15031a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlayerCommentAction(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        this.f4392j = vb.f.a(h.f4424f);
        this.f4394l = vb.f.a(new i(context));
        this.f4395m = vb.f.a(new d(context));
        this.f4396n = vb.f.a(new a(context, this));
        this.f4397o = vb.f.a(f.f4419f);
        onInit();
    }

    private final e3 getBinding() {
        return (e3) this.f4396n.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EpisodeCommentEndpoint getEpisodeCommentEndpoint() {
        return (EpisodeCommentEndpoint) this.f4395m.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<m4.c> getFlagReasons() {
        return (List) this.f4397o.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SeriesCommentEndpoint getSeriesCommentEndpoint() {
        return (SeriesCommentEndpoint) this.f4394l.getValue();
    }

    public static final void m(final SlayerCommentAction slayerCommentAction, final boolean z10, final View view) {
        l.f(slayerCommentAction, "this$0");
        view.post(new Runnable() { // from class: m7.m
            @Override // java.lang.Runnable
            public final void run() {
                SlayerCommentAction.n(SlayerCommentAction.this, view, z10);
            }
        });
    }

    public static final void n(SlayerCommentAction slayerCommentAction, View view, boolean z10) {
        l.f(slayerCommentAction, "this$0");
        l.e(view, "it");
        slayerCommentAction.t(view, slayerCommentAction.getAdapter(), z10);
    }

    private final void setCommentAsDisliked(m4.b bVar) {
        u0.f.c(getBinding().f8323e, ColorStateList.valueOf(d7.g.b(bVar) ? getAdapter().u() : getAdapter().x()));
        getBinding().f8322d.setText(String.valueOf(bVar.i()));
        u0.f.c(getBinding().f8325g, ColorStateList.valueOf(getAdapter().x()));
        getBinding().f8324f.setText(String.valueOf(bVar.l()));
    }

    private final void setCommentAsLiked(m4.b bVar) {
        u0.f.c(getBinding().f8325g, ColorStateList.valueOf(d7.g.c(bVar) ? getAdapter().u() : getAdapter().x()));
        getBinding().f8324f.setText(String.valueOf(bVar.l()));
        u0.f.c(getBinding().f8323e, ColorStateList.valueOf(getAdapter().x()));
        getBinding().f8322d.setText(String.valueOf(bVar.i()));
    }

    public static final boolean u(SlayerCommentAction slayerCommentAction, u5.g gVar, m4.b bVar, MenuItem menuItem) {
        l.f(slayerCommentAction, "this$0");
        l.f(gVar, "$adapter");
        l.f(bVar, "$comment");
        if (menuItem.getItemId() == R.id.action_flag) {
            slayerCommentAction.q();
            return true;
        }
        g.d w10 = gVar.w();
        l.e(menuItem, "menuItem");
        w10.v(bVar, menuItem);
        return true;
    }

    public final u5.g getAdapter() {
        u5.g gVar = this.f4389g;
        if (gVar != null) {
            return gVar;
        }
        l.v("adapter");
        return null;
    }

    public final ItemClickListener<m4.b> getClickListener() {
        return this.f4391i;
    }

    public final m4.b getModel() {
        m4.b bVar = this.f4388f;
        if (bVar != null) {
            return bVar;
        }
        l.v("model");
        return null;
    }

    public final z3.a getNetworkClient() {
        return (z3.a) this.f4392j.getValue();
    }

    public final String getParentRequestType() {
        return this.f4390h;
    }

    public final void k() {
        getBinding();
        setLikeDislikeStatus(getModel());
        getBinding().f8323e.setEnabled(false);
        getBinding().f8325g.setEnabled(false);
        getBinding().f8328j.setEnabled(false);
        if (getModel().f() > 0) {
            ImageView imageView = getBinding().f8328j;
            l.e(imageView, "binding.commentReplies");
            imageView.setVisibility(8);
            TextView textView = getBinding().f8329k;
            l.e(textView, "binding.commentReplyCount");
            textView.setVisibility(8);
            ImageView imageView2 = getBinding().f8326h;
            l.e(imageView2, "binding.commentMention");
            imageView2.setVisibility(8);
        }
        ImageView imageView3 = getBinding().f8327i;
        l.e(imageView3, "binding.commentMenu");
        imageView3.setVisibility(8);
    }

    public final void l(final boolean z10) {
        e3 binding = getBinding();
        setLikeDislikeStatus(getModel());
        binding.f8329k.setText(String.valueOf(getModel().n()));
        boolean z11 = getAdapter().v().D() == getModel().u();
        if (z11) {
            Iterator it2 = wb.l.l(getBinding().f8323e, getBinding().f8325g).iterator();
            while (it2.hasNext()) {
                ((ImageButton) it2.next()).setEnabled(false);
            }
            ContentViewFlipper contentViewFlipper = getBinding().f8320b;
            l.e(contentViewFlipper, "binding.commentDeleteFlipper");
            SupportExtentionKt.visible(contentViewFlipper);
            if (z10) {
                ImageView imageView = getBinding().f8327i;
                l.e(imageView, "binding.commentMenu");
                imageView.setVisibility(8);
            }
        } else {
            Iterator it3 = wb.l.l(getBinding().f8323e, getBinding().f8325g).iterator();
            while (it3.hasNext()) {
                ((ImageButton) it3.next()).setEnabled(true);
            }
            ContentViewFlipper contentViewFlipper2 = getBinding().f8320b;
            l.e(contentViewFlipper2, "binding.commentDeleteFlipper");
            contentViewFlipper2.setVisibility(8);
        }
        if (getModel().f() > 0) {
            ImageView imageView2 = binding.f8328j;
            l.e(imageView2, "commentReplies");
            imageView2.setVisibility(8);
            TextView textView = binding.f8329k;
            l.e(textView, "commentReplyCount");
            textView.setVisibility(8);
            ImageView imageView3 = getBinding().f8326h;
            l.e(imageView3, "binding.commentMention");
            imageView3.setVisibility(z11 ? 8 : 0);
        }
        getBinding().f8320b.setOnClickListener(this);
        getBinding().f8323e.setOnClickListener(this);
        getBinding().f8325g.setOnClickListener(this);
        getBinding().f8326h.setOnClickListener(this);
        getBinding().f8328j.setOnClickListener(this);
        getBinding().f8327i.setOnClickListener(new View.OnClickListener() { // from class: m7.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SlayerCommentAction.m(SlayerCommentAction.this, z10, view);
            }
        });
    }

    public final void o(boolean z10, boolean z11) {
        ContentViewFlipper contentViewFlipper = getBinding().f8320b;
        l.e(contentViewFlipper, "binding.commentDeleteFlipper");
        l7.a.b(contentViewFlipper);
        e7.b.b(new b(z10, z11, this, null));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null) {
            boolean z10 = true;
            boolean z11 = getModel().f() > 0;
            if (!l.a(this.f4390h, "GET_EPISODE_COMMENTS") && !l.a(this.f4390h, "GET_EPISODE_COMMENT_REPLIES")) {
                z10 = false;
            }
            int id2 = view.getId();
            if (id2 == R.id.commentDeleteFlipper) {
                s(z11, z10);
                return;
            }
            if (id2 == R.id.commentDislikes) {
                p(z10, z11);
                return;
            }
            if (id2 != R.id.commentLikes) {
                ItemClickListener<m4.b> itemClickListener = this.f4391i;
                if (itemClickListener == null) {
                    return;
                }
                itemClickListener.onItemClick(view, new s3.c<>(-1, getModel()));
                return;
            }
            r(z10, z11);
        }
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onInit() {
        Context context = getContext();
        l.e(context, "context");
        this.f4393k = new SupportLifecycleUtil(context, this);
        ImageButton imageButton = getBinding().f8325g;
        l.e(imageButton, "binding.commentLikes");
        l7.p.c(imageButton, 14);
        ImageButton imageButton2 = getBinding().f8323e;
        l.e(imageButton2, "binding.commentDislikes");
        l7.p.c(imageButton2, 14);
        ImageView imageView = getBinding().f8328j;
        l.e(imageView, "binding.commentReplies");
        l7.p.c(imageView, 8);
        ImageView imageView2 = getBinding().f8326h;
        l.e(imageView2, "binding.commentMention");
        l7.p.c(imageView2, 8);
        ImageView imageView3 = getBinding().f8327i;
        l.e(imageView3, "binding.commentMenu");
        l7.p.c(imageView3, 8);
    }

    @Override // io.wax911.support.util.SupportLifecycleUtil.LifecycleCallback
    public void onParentStopped() {
        onViewRecycled();
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onViewRecycled() {
        if (getContext() instanceof androidx.fragment.app.e) {
            Context context = getContext();
            if (context != null) {
                androidx.lifecycle.k lifecycle = ((androidx.fragment.app.e) context).getLifecycle();
                l.e(lifecycle, "context as FragmentActivity).lifecycle");
                SupportLifecycleUtil supportLifecycleUtil = this.f4393k;
                if (supportLifecycleUtil != null) {
                    supportLifecycleUtil.removeLifecycleObserver(lifecycle);
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            }
        }
        getNetworkClient().cancel();
    }

    public final void p(boolean z10, boolean z11) {
        if (!getAdapter().y().b()) {
            Context context = getContext();
            l.e(context, "context");
            k7.b.q(context, R.string.text_login_required, 0, 2, null);
            return;
        }
        m4.b model = getModel();
        if (d7.g.b(model)) {
            if (model.i() > 0) {
                model.C(model.i() - 1);
            }
            model.H("No");
        } else if (d7.g.c(model)) {
            if (model.l() != 0) {
                model.D(model.l() - 1);
            }
            model.C(model.i() + 1);
            model.J("No");
            model.H("Yes");
        } else {
            model.C(model.i() + 1);
            model.H("Yes");
        }
        setCommentAsDisliked(getModel());
        e7.b.b(new c(z10, z11, this, null));
    }

    public final void q() {
        if (SupportExtentionKt.equal(getModel().s(), "Yes")) {
            return;
        }
        boolean z10 = true;
        boolean z11 = getModel().f() > 0;
        if (!l.a(this.f4390h, "GET_EPISODE_COMMENTS") && !l.a(this.f4390h, "GET_EPISODE_COMMENT_REPLIES")) {
            z10 = false;
        }
        List<m4.c> flagReasons = getFlagReasons();
        ArrayList arrayList = new ArrayList(wb.m.q(flagReasons, 10));
        Iterator<T> it2 = flagReasons.iterator();
        while (it2.hasNext()) {
            arrayList.add(((m4.c) it2.next()).b());
        }
        Context context = getContext();
        l.e(context, "context");
        s2.c cVar = new s2.c(context, null, 2, null);
        b3.b.b(cVar, null, arrayList, null, 0, false, new e(z10, z11, cVar), 13, null);
        cVar.show();
    }

    public final void r(boolean z10, boolean z11) {
        if (!getAdapter().y().b()) {
            Context context = getContext();
            l.e(context, "context");
            k7.b.q(context, R.string.text_login_required, 0, 2, null);
            return;
        }
        m4.b model = getModel();
        if (d7.g.c(model)) {
            if (model.l() > 0) {
                model.D(model.l() - 1);
            }
            model.J("No");
        } else if (d7.g.b(model)) {
            if (model.i() != 0) {
                model.C(model.i() - 1);
            }
            model.D(model.l() + 1);
            model.J("Yes");
            model.H("No");
        } else {
            model.D(model.l() + 1);
            model.J("Yes");
        }
        setCommentAsLiked(getModel());
        e7.b.b(new g(z10, z11, this, null));
    }

    public final void s(boolean z10, boolean z11) {
        if (!getAdapter().y().b()) {
            Context context = getContext();
            l.e(context, "context");
            k7.b.q(context, R.string.text_login_required, 0, 2, null);
        } else {
            String str = z10 ? "هل انت متأكد من حذف الرد؟" : "هل انت متأكد من حذف التعليق؟";
            Context context2 = getContext();
            l.e(context2, "context");
            s2.c.v(s2.c.p(s2.c.n(new s2.c(context2, null, 2, null), null, str, null, 5, null), Integer.valueOf(R.string.Cancel), null, null, 6, null), Integer.valueOf(R.string.remove), null, new j(z11, z10), 2, null).show();
        }
    }

    public final void setAdapter(u5.g gVar) {
        l.f(gVar, "<set-?>");
        this.f4389g = gVar;
    }

    public final void setClickListener(ItemClickListener<m4.b> itemClickListener) {
        this.f4391i = itemClickListener;
    }

    public final void setLikeDislikeStatus(m4.b bVar) {
        l.f(bVar, ClientCookie.COMMENT_ATTR);
        e3 binding = getBinding();
        if (d7.g.c(bVar)) {
            u0.f.c(binding.f8325g, ColorStateList.valueOf(getAdapter().u()));
        } else {
            u0.f.c(binding.f8325g, ColorStateList.valueOf(getAdapter().x()));
        }
        binding.f8324f.setText(String.valueOf(bVar.l()));
        if (d7.g.b(bVar)) {
            u0.f.c(binding.f8323e, ColorStateList.valueOf(getAdapter().u()));
        } else {
            u0.f.c(binding.f8323e, ColorStateList.valueOf(getAdapter().x()));
        }
        binding.f8322d.setText(String.valueOf(bVar.i()));
    }

    public final void setModel(m4.b bVar) {
        l.f(bVar, "<set-?>");
        this.f4388f = bVar;
    }

    public final void setParentRequestType(String str) {
        this.f4390h = str;
    }

    public final void t(View view, final u5.g gVar, boolean z10) {
        if (this.f4388f == null) {
            return;
        }
        final m4.b model = getModel();
        k0 k0Var = new k0(view.getContext(), view, BadgeDrawable.TOP_END);
        k0Var.b().inflate(R.menu.comment, k0Var.a());
        w4.e v10 = gVar.v();
        k0Var.a().findItem(R.id.action_edit).setVisible(model.u() == v10.D() && !z10);
        k0Var.a().findItem(R.id.action_flag).setVisible(model.u() != v10.D());
        k0Var.a().findItem(R.id.action_block).setVisible(model.u() != v10.D());
        k0Var.c(new k0.d() { // from class: m7.l
            @Override // androidx.appcompat.widget.k0.d
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean u10;
                u10 = SlayerCommentAction.u(SlayerCommentAction.this, gVar, model, menuItem);
                return u10;
            }
        });
        k0Var.d();
    }
}
