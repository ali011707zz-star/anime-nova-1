package g5;

import ac.d;
import android.content.Context;
import android.os.Bundle;
import cc.f;
import cc.k;
import com.anslayer.api.endpoint.SeriesEndpoint;
import ic.p;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.util.InstanceUtilNoArg;
import java.util.List;
import jc.g;
import jc.l;
import jc.m;
import n4.e;
import p4.q;
import rc.q0;
import rc.v1;
import rc.y0;
import z3.a;

/* compiled from: BrowseStaffRepository.kt */
/* loaded from: classes.dex */
public final class b extends SupportRepository<Bundle, List<? extends q>> {

    /* renamed from: a, reason: collision with root package name */
    public static final a f6920a = new a(null);

    /* compiled from: BrowseStaffRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<b> {

        /* compiled from: BrowseStaffRepository.kt */
        /* renamed from: g5.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0129a extends m implements ic.a<b> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0129a f6921f = new C0129a();

            public C0129a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final b invoke() {
                return new b(null);
            }
        }

        public a() {
            super(C0129a.f6921f);
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: BrowseStaffRepository.kt */
    @f(c = "com.anslayer.ui.anime.characters.more.staff.BrowseStaffRepository$createNetworkClientRequest$1", f = "BrowseStaffRepository.kt", l = {24, 26}, m = "invokeSuspend")
    /* renamed from: g5.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0130b extends k implements p<q0, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f6922f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f6923g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f6924h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ b f6925i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0130b(Context context, Bundle bundle, b bVar, d<? super C0130b> dVar) {
            super(2, dVar);
            this.f6923g = context;
            this.f6924h = bundle;
            this.f6925i = bVar;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            return new C0130b(this.f6923g, this.f6924h, this.f6925i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
            return ((C0130b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f6922f;
            if (i10 == 0) {
                vb.k.b(obj);
                SeriesEndpoint seriesEndpoint = (SeriesEndpoint) z3.b.f17284d.getInstance(this.f6923g).b(SeriesEndpoint.class);
                String string = this.f6924h.getString("arg_json");
                this.f6922f = 1;
                obj = seriesEndpoint.animeStaffMore(string, this);
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
            }
            b bVar = this.f6925i;
            List<q> a10 = ((e) obj).a();
            this.f6922f = 2;
            if (bVar.publishResult(a10, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: BrowseStaffRepository.kt */
    @f(c = "com.anslayer.ui.anime.characters.more.staff.BrowseStaffRepository$requestFromCache$1", f = "BrowseStaffRepository.kt", l = {30}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends k implements p<q0, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f6926f;

        public c(d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            return new c(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f6926f;
            if (i10 == 0) {
                vb.k.b(obj);
                b bVar = b.this;
                this.f6926f = 1;
                if (bVar.publishResult(null, this) == d10) {
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

    public b() {
    }

    public /* synthetic */ b(g gVar) {
        this();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> createNetworkClientRequest(Bundle bundle, Context context) {
        y0<vb.p> b10;
        l.f(bundle, "bundle");
        l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new C0130b(context, bundle, this, null), 3, null);
        return b10;
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public z3.a getNetworkClient() {
        return a.C0435a.b(z3.a.f17279b, false, 1, null);
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> requestFromCache(Bundle bundle, Context context) {
        y0<vb.p> b10;
        l.f(bundle, "bundle");
        l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new c(null), 3, null);
        return b10;
    }
}
