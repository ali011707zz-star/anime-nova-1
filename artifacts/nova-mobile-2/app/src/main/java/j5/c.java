package j5;

import ac.d;
import android.content.Context;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.y;
import cc.k;
import com.anslayer.api.endpoint.SeriesEndpoint;
import ic.p;
import jc.l;
import rc.q0;
import x4.f;

/* compiled from: AnimeStaticsViewModel.kt */
/* loaded from: classes.dex */
public final class c extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final SeriesEndpoint f8889a;

    /* renamed from: b, reason: collision with root package name */
    public y<f<l4.c>> f8890b = new y<>();

    /* compiled from: AnimeStaticsViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final Context f8891b;

        public a(Context context) {
            this.f8891b = context;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            Context context = this.f8891b;
            return new c(context == null ? null : (SeriesEndpoint) z3.b.f17284d.getInstance(context).b(SeriesEndpoint.class));
        }
    }

    /* compiled from: AnimeStaticsViewModel.kt */
    @cc.f(c = "com.anslayer.ui.anime.statics.AnimeStaticsViewModel$getAnimeStats$1", f = "AnimeStaticsViewModel.kt", l = {22}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f8892f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ long f8894h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j10, d<? super b> dVar) {
            super(2, dVar);
            this.f8894h = j10;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            return new b(this.f8894h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f8892f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    SeriesEndpoint d11 = c.this.d();
                    l.c(d11);
                    long j10 = this.f8894h;
                    this.f8892f = 1;
                    obj = d11.getAnimeStats(j10, this);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                c.this.f8890b.o(new f.b((l4.c) obj));
            } catch (Exception e10) {
                c.this.f8890b.o(new f.a(e10));
            }
            return vb.p.f15031a;
        }
    }

    public c(SeriesEndpoint seriesEndpoint) {
        this.f8889a = seriesEndpoint;
    }

    public final void b(long j10) {
        rc.k.d(j0.a(this), null, null, new b(j10, null), 3, null);
    }

    public final y<f<l4.c>> c() {
        return this.f8890b;
    }

    public final SeriesEndpoint d() {
        return this.f8889a;
    }
}
