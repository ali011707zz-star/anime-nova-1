package u5;

import android.content.Context;
import android.os.Bundle;
import com.anslayer.App;
import com.anslayer.api.endpoint.EpisodeCommentEndpoint;
import com.anslayer.api.endpoint.SeriesCommentEndpoint;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.model.ModelWrapper;
import io.wax911.support.util.InstanceUtilNoArg;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import qc.u;
import rc.q0;
import rc.v1;
import rc.y0;
import z3.a;
import z3.b;

/* compiled from: CommentRepository.kt */
/* loaded from: classes.dex */
public final class o extends SupportRepository<Bundle, List<? extends m4.b>> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f14412b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final z3.a f14413a;

    /* compiled from: CommentRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<o> {

        /* compiled from: CommentRepository.kt */
        /* renamed from: u5.o$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0364a extends jc.m implements ic.a<o> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0364a f14414f = new C0364a();

            public C0364a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final o invoke() {
                return new o(null);
            }
        }

        public a() {
            super(C0364a.f14414f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CommentRepository.kt */
    @cc.f(c = "com.anslayer.ui.comment.CommentRepository$createNetworkClientRequest$1", f = "CommentRepository.kt", l = {40, 44, 48, 52, 59}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14415f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f14416g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f14417h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ o f14418i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, o oVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f14416g = context;
            this.f14417h = bundle;
            this.f14418i = oVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f14416g, this.f14417h, this.f14418i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:59:0x006d. Please report as an issue. */
        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            ModelWrapper modelWrapper;
            n4.c cVar;
            n4.d dVar;
            List list;
            Object d10 = bc.c.d();
            int i10 = this.f14415f;
            ArrayList arrayList = null;
            if (i10 == 0) {
                vb.k.b(obj);
                Context context = this.f14416g;
                b.a aVar = z3.b.f17284d;
                SeriesCommentEndpoint seriesCommentEndpoint = (SeriesCommentEndpoint) aVar.getInstance(context).b(SeriesCommentEndpoint.class);
                EpisodeCommentEndpoint episodeCommentEndpoint = (EpisodeCommentEndpoint) aVar.getInstance(this.f14416g).b(EpisodeCommentEndpoint.class);
                String string = this.f14417h.getString("arg_request_type");
                if (string != null) {
                    switch (string.hashCode()) {
                        case -2088445879:
                            if (string.equals("GET_SERIES_COMMENT_REPLIES")) {
                                y0 executeUsing = this.f14418i.getNetworkClient().executeUsing(seriesCommentEndpoint.getSeriesCommentReplies(this.f14417h.getString("arg_json")));
                                this.f14415f = 2;
                                obj = executeUsing.k0(this);
                                if (obj == d10) {
                                    return d10;
                                }
                                modelWrapper = (ModelWrapper) obj;
                                break;
                            }
                            break;
                        case -1915617855:
                            if (string.equals("GET_EPISODE_COMMENTS")) {
                                y0 executeUsing2 = this.f14418i.getNetworkClient().executeUsing(episodeCommentEndpoint.getEpisodeComments(this.f14417h.getString("arg_json")));
                                this.f14415f = 3;
                                obj = executeUsing2.k0(this);
                                if (obj == d10) {
                                    return d10;
                                }
                                modelWrapper = (ModelWrapper) obj;
                                break;
                            }
                            break;
                        case -1715425669:
                            if (string.equals("GET_EPISODE_COMMENT_REPLIES")) {
                                y0 executeUsing3 = this.f14418i.getNetworkClient().executeUsing(episodeCommentEndpoint.getEpisodeCommentReplies(this.f14417h.getString("arg_json")));
                                this.f14415f = 4;
                                obj = executeUsing3.k0(this);
                                if (obj == d10) {
                                    return d10;
                                }
                                modelWrapper = (ModelWrapper) obj;
                                break;
                            }
                            break;
                        case 848502707:
                            if (string.equals("GET_SERIES_COMMENTS")) {
                                y0 executeUsing4 = this.f14418i.getNetworkClient().executeUsing(seriesCommentEndpoint.getSeriesComments(this.f14417h.getString("arg_json")));
                                this.f14415f = 1;
                                obj = executeUsing4.k0(this);
                                if (obj == d10) {
                                    return d10;
                                }
                                modelWrapper = (ModelWrapper) obj;
                                break;
                            }
                            break;
                    }
                }
                modelWrapper = null;
            } else if (i10 == 1) {
                vb.k.b(obj);
                modelWrapper = (ModelWrapper) obj;
            } else if (i10 == 2) {
                vb.k.b(obj);
                modelWrapper = (ModelWrapper) obj;
            } else if (i10 == 3) {
                vb.k.b(obj);
                modelWrapper = (ModelWrapper) obj;
            } else {
                if (i10 != 4) {
                    if (i10 != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
                modelWrapper = (ModelWrapper) obj;
            }
            if (modelWrapper != null && (cVar = (n4.c) modelWrapper.getModel()) != null && (dVar = (n4.d) cVar.a()) != null && (list = (List) dVar.b()) != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : list) {
                    m4.b bVar = (m4.b) obj2;
                    List<String> a10 = App.f4053h.a();
                    boolean z10 = false;
                    if (!(a10 instanceof Collection) || !a10.isEmpty()) {
                        Iterator<T> it2 = a10.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (u.C(bVar.g(), (String) it2.next(), false, 2, null)) {
                                    z10 = true;
                                }
                            }
                        }
                    }
                    if (!z10) {
                        arrayList2.add(obj2);
                    }
                }
                arrayList = arrayList2;
            }
            o oVar = this.f14418i;
            this.f14415f = 5;
            if (oVar.publishResult(arrayList, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: CommentRepository.kt */
    @cc.f(c = "com.anslayer.ui.comment.CommentRepository$requestFromCache$1", f = "CommentRepository.kt", l = {70}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14419f;

        public c(ac.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f14419f;
            if (i10 == 0) {
                vb.k.b(obj);
                o oVar = o.this;
                this.f14419f = 1;
                if (oVar.publishResult(null, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    public o() {
        this.f14413a = a.C0435a.b(z3.a.f17279b, false, 1, null);
    }

    public /* synthetic */ o(jc.g gVar) {
        this();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> createNetworkClientRequest(Bundle bundle, Context context) {
        y0<vb.p> b10;
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new b(context, bundle, this, null), 3, null);
        return b10;
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public z3.a getNetworkClient() {
        return this.f14413a;
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> requestFromCache(Bundle bundle, Context context) {
        y0<vb.p> b10;
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new c(null), 3, null);
        return b10;
    }
}
