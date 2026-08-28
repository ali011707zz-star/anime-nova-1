package r5;

import android.content.Context;
import f4.d;
import ic.l;
import io.wax911.support.util.InstanceUtil;
import jc.g;
import jc.m;
import vb.e;
import vb.f;
import z3.a;

/* compiled from: BasePresenter.kt */
/* loaded from: classes.dex */
public class a extends r5.b<d> {

    /* renamed from: f, reason: collision with root package name */
    public static final C0315a f12858f = new C0315a(null);

    /* renamed from: d, reason: collision with root package name */
    public final e f12859d;

    /* renamed from: e, reason: collision with root package name */
    public final e f12860e;

    /* compiled from: BasePresenter.kt */
    /* renamed from: r5.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0315a extends InstanceUtil<a, Context> {

        /* compiled from: BasePresenter.kt */
        /* renamed from: r5.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0316a extends m implements l<Context, a> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0316a f12861f = new C0316a();

            public C0316a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final a invoke(Context context) {
                return new a(context);
            }
        }

        public C0315a() {
            super(C0316a.f12861f);
        }

        public /* synthetic */ C0315a(g gVar) {
            this();
        }
    }

    /* compiled from: BasePresenter.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<z3.a> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f12862f = new b();

        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final z3.a invoke() {
            return a.C0435a.b(z3.a.f17279b, false, 1, null);
        }
    }

    /* compiled from: BasePresenter.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<d> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f12863f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(0);
            this.f12863f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final d invoke() {
            Context context = this.f12863f;
            if (context == null) {
                return null;
            }
            return d.f6409r.newInstance(context);
        }
    }

    public a(Context context) {
        super(context);
        this.f12859d = f.a(b.f12862f);
        this.f12860e = f.a(new c(context));
    }

    public final w4.e f() {
        bb.f<w4.e> N;
        d e10 = e();
        if (e10 == null || (N = e10.N()) == null) {
            return null;
        }
        return N.get();
    }

    public final z3.a g() {
        return (z3.a) this.f12859d.getValue();
    }

    @Override // r5.b
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public d e() {
        return (d) this.f12860e.getValue();
    }

    public final void i(w4.e eVar) {
        bb.f<w4.e> N;
        jc.l.f(eVar, "user");
        d e10 = e();
        if (e10 == null || (N = e10.N()) == null) {
            return;
        }
        N.set(eVar);
    }

    @Override // io.wax911.support.custom.recycler.SupportScrollListener
    public int paginationSize() {
        return 30;
    }
}
