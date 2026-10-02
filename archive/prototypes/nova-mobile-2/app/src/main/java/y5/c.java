package y5;

import ac.d;
import android.app.Activity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.l0;
import androidx.lifecycle.y;
import cc.f;
import cc.k;
import com.anslayer.api.endpoint.CustomListEndPoint;
import g7.c;
import ic.p;
import jc.l;
import rc.q0;
import vb.i;
import vb.n;

/* compiled from: CreateCustomListViewModel.kt */
/* loaded from: classes.dex */
public final class c extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final CustomListEndPoint f16433a;

    /* renamed from: b, reason: collision with root package name */
    public final long f16434b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f16435c;

    /* renamed from: d, reason: collision with root package name */
    public y<g7.a<g7.c<i<String, String>>>> f16436d;

    /* renamed from: e, reason: collision with root package name */
    public final LiveData<g7.a<g7.c<i<String, String>>>> f16437e;

    /* compiled from: CreateCustomListViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends l0.d {

        /* renamed from: b, reason: collision with root package name */
        public final boolean f16438b;

        /* renamed from: c, reason: collision with root package name */
        public final long f16439c;

        /* renamed from: d, reason: collision with root package name */
        public final CustomListEndPoint f16440d;

        public a(Activity activity) {
            l.f(activity, "activity");
            this.f16438b = activity.getIntent().getBooleanExtra("edit_mode", false);
            this.f16439c = activity.getIntent().getLongExtra("id", -1L);
            this.f16440d = (CustomListEndPoint) z3.b.f17284d.getInstance(activity).b(CustomListEndPoint.class);
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            l.f(cls, "modelClass");
            return new c(this.f16440d, this.f16439c, this.f16438b);
        }
    }

    /* compiled from: CreateCustomListViewModel.kt */
    @f(c = "com.anslayer.ui.customlist.create.CreateCustomListViewModel$createOrUpdateList$1", f = "CreateCustomListViewModel.kt", l = {20, 22}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f16441f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f16443h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ String f16444i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, String str2, d<? super b> dVar) {
            super(2, dVar);
            this.f16443h = str;
            this.f16444i = str2;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            return new b(this.f16443h, this.f16444i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f16441f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    if (c.this.f() && c.this.d() != -1) {
                        CustomListEndPoint e10 = c.this.e();
                        long d11 = c.this.d();
                        String str = this.f16443h;
                        String str2 = this.f16444i;
                        this.f16441f = 1;
                        if (e10.updateCustomList(d11, str, str2, this) == d10) {
                            return d10;
                        }
                    } else {
                        CustomListEndPoint e11 = c.this.e();
                        String str3 = this.f16443h;
                        String str4 = this.f16444i;
                        this.f16441f = 2;
                        if (e11.addCustomList(str3, str4, this) == d10) {
                            return d10;
                        }
                    }
                } else {
                    if (i10 != 1 && i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                c.this.f16436d.o(new g7.a(new c.C0133c(n.a(this.f16443h, this.f16444i))));
            } catch (Exception e12) {
                c.this.f16436d.o(new g7.a(new c.a(e12)));
            }
            return vb.p.f15031a;
        }
    }

    public c(CustomListEndPoint customListEndPoint, long j10, boolean z10) {
        l.f(customListEndPoint, "service");
        this.f16433a = customListEndPoint;
        this.f16434b = j10;
        this.f16435c = z10;
        y<g7.a<g7.c<i<String, String>>>> yVar = new y<>();
        this.f16436d = yVar;
        this.f16437e = yVar;
    }

    public final void b(String str, String str2) {
        l.f(str, "listName");
        rc.k.d(j0.a(this), null, null, new b(str, str2, null), 3, null);
    }

    public final LiveData<g7.a<g7.c<i<String, String>>>> c() {
        return this.f16437e;
    }

    public final long d() {
        return this.f16434b;
    }

    public final CustomListEndPoint e() {
        return this.f16433a;
    }

    public final boolean f() {
        return this.f16435c;
    }
}
