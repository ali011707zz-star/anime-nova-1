package f5;

import ac.d;
import android.content.Context;
import android.os.Bundle;
import cc.f;
import cc.k;
import com.anslayer.api.endpoint.SeriesEndpoint;
import ic.p;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.util.InstanceUtilNoArg;
import java.util.Iterator;
import java.util.List;
import jc.g;
import jc.l;
import jc.m;
import jc.u;
import p4.e;
import rc.q0;
import rc.v1;
import rc.y0;
import z3.a;

/* compiled from: CharactersBrowseRepository.kt */
/* loaded from: classes.dex */
public final class b extends SupportRepository<Bundle, List<? extends e>> {

    /* renamed from: a, reason: collision with root package name */
    public static final a f6440a = new a(null);

    /* compiled from: CharactersBrowseRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<b> {

        /* compiled from: CharactersBrowseRepository.kt */
        /* renamed from: f5.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0122a extends m implements ic.a<b> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0122a f6441f = new C0122a();

            public C0122a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final b invoke() {
                return new b(null);
            }
        }

        public a() {
            super(C0122a.f6441f);
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: CharactersBrowseRepository.kt */
    @f(c = "com.anslayer.ui.anime.characters.more.character.CharactersBrowseRepository$createNetworkClientRequest$1", f = "CharactersBrowseRepository.kt", l = {29, 31, 32, 37}, m = "invokeSuspend")
    /* renamed from: f5.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0123b extends k implements p<q0, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f6442f;

        /* renamed from: g, reason: collision with root package name */
        public int f6443g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Context f6444h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Bundle f6445i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ b f6446j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0123b(Context context, Bundle bundle, b bVar, d<? super C0123b> dVar) {
            super(2, dVar);
            this.f6444h = context;
            this.f6445i = bundle;
            this.f6446j = bVar;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            return new C0123b(this.f6444h, this.f6445i, this.f6446j, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
            return ((C0123b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            u uVar;
            n4.b bVar;
            Object d10 = bc.c.d();
            int i10 = this.f6443g;
            if (i10 == 0) {
                vb.k.b(obj);
                SeriesEndpoint seriesEndpoint = (SeriesEndpoint) z3.b.f17284d.getInstance(this.f6444h).b(SeriesEndpoint.class);
                String string = this.f6445i.getString("arg_json");
                u uVar2 = new u();
                String string2 = this.f6445i.getString("list_type");
                if (string2 != null) {
                    int hashCode = string2.hashCode();
                    if (hashCode != 356859892) {
                        if (hashCode == 1571589016 && string2.equals("character_fav_list")) {
                            this.f6442f = uVar2;
                            this.f6443g = 2;
                            obj = seriesEndpoint.userCharactersFav(string, this);
                            if (obj == d10) {
                                return d10;
                            }
                            uVar = uVar2;
                            bVar = (n4.b) obj;
                        }
                    } else if (string2.equals("character_list")) {
                        uVar2.f9191f = true;
                        this.f6442f = uVar2;
                        this.f6443g = 1;
                        obj = seriesEndpoint.animeCharactersFav(string, this);
                        if (obj == d10) {
                            return d10;
                        }
                        uVar = uVar2;
                        bVar = (n4.b) obj;
                    }
                }
                this.f6442f = uVar2;
                this.f6443g = 3;
                obj = seriesEndpoint.animeCharactersMore(string, this);
                if (obj == d10) {
                    return d10;
                }
                uVar = uVar2;
                bVar = (n4.b) obj;
            } else if (i10 == 1) {
                uVar = (u) this.f6442f;
                vb.k.b(obj);
                bVar = (n4.b) obj;
            } else if (i10 == 2) {
                uVar = (u) this.f6442f;
                vb.k.b(obj);
                bVar = (n4.b) obj;
            } else {
                if (i10 != 3) {
                    if (i10 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                uVar = (u) this.f6442f;
                vb.k.b(obj);
                bVar = (n4.b) obj;
            }
            Iterator<T> it2 = bVar.a().iterator();
            while (it2.hasNext()) {
                ((e) it2.next()).i(uVar.f9191f);
            }
            b bVar2 = this.f6446j;
            List<e> a10 = bVar.a();
            this.f6442f = null;
            this.f6443g = 4;
            if (bVar2.publishResult(a10, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: CharactersBrowseRepository.kt */
    @f(c = "com.anslayer.ui.anime.characters.more.character.CharactersBrowseRepository$requestFromCache$1", f = "CharactersBrowseRepository.kt", l = {41}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends k implements p<q0, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f6447f;

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
            int i10 = this.f6447f;
            if (i10 == 0) {
                vb.k.b(obj);
                b bVar = b.this;
                this.f6447f = 1;
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
        b10 = rc.k.b(v1.f13343f, null, null, new C0123b(context, bundle, this, null), 3, null);
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
