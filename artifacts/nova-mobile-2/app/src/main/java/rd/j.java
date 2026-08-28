package rd;

import java.lang.reflect.Method;
import kotlin.KotlinNullPointerException;
import rc.g1;
import retrofit2.HttpException;
import vb.j;

/* compiled from: KotlinExtensions.kt */
/* loaded from: classes2.dex */
public final class j {

    /* compiled from: KotlinExtensions.kt */
    /* loaded from: classes2.dex */
    public static final class a extends jc.m implements ic.l<Throwable, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ rd.b f13398f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(rd.b bVar) {
            super(1);
            this.f13398f = bVar;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
            invoke2(th);
            return vb.p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            this.f13398f.cancel();
        }
    }

    /* compiled from: KotlinExtensions.kt */
    /* loaded from: classes2.dex */
    public static final class b extends jc.m implements ic.l<Throwable, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ rd.b f13399f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(rd.b bVar) {
            super(1);
            this.f13399f = bVar;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
            invoke2(th);
            return vb.p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            this.f13399f.cancel();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: KotlinExtensions.kt */
    /* loaded from: classes2.dex */
    public static final class c<T> implements rd.d<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ rc.o f13400a;

        public c(rc.o oVar) {
            this.f13400a = oVar;
        }

        @Override // rd.d
        public void onFailure(rd.b<T> bVar, Throwable th) {
            jc.l.g(bVar, "call");
            jc.l.g(th, "t");
            rc.o oVar = this.f13400a;
            j.a aVar = vb.j.f15020f;
            oVar.resumeWith(vb.j.a(vb.k.a(th)));
        }

        @Override // rd.d
        public void onResponse(rd.b<T> bVar, q<T> qVar) {
            jc.l.g(bVar, "call");
            jc.l.g(qVar, "response");
            if (qVar.f()) {
                T a10 = qVar.a();
                if (a10 == null) {
                    Object tag = bVar.request().tag(i.class);
                    if (tag == null) {
                        jc.l.p();
                    }
                    jc.l.b(tag, "call.request().tag(Invocation::class.java)!!");
                    Method a11 = ((i) tag).a();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Response from ");
                    jc.l.b(a11, "method");
                    Class<?> declaringClass = a11.getDeclaringClass();
                    jc.l.b(declaringClass, "method.declaringClass");
                    sb2.append(declaringClass.getName());
                    sb2.append('.');
                    sb2.append(a11.getName());
                    sb2.append(" was null but response body type was declared as non-null");
                    KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException(sb2.toString());
                    rc.o oVar = this.f13400a;
                    j.a aVar = vb.j.f15020f;
                    oVar.resumeWith(vb.j.a(vb.k.a(kotlinNullPointerException)));
                    return;
                }
                rc.o oVar2 = this.f13400a;
                j.a aVar2 = vb.j.f15020f;
                oVar2.resumeWith(vb.j.a(a10));
                return;
            }
            rc.o oVar3 = this.f13400a;
            HttpException httpException = new HttpException(qVar);
            j.a aVar3 = vb.j.f15020f;
            oVar3.resumeWith(vb.j.a(vb.k.a(httpException)));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: KotlinExtensions.kt */
    /* loaded from: classes2.dex */
    public static final class d<T> implements rd.d<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ rc.o f13401a;

        public d(rc.o oVar) {
            this.f13401a = oVar;
        }

        @Override // rd.d
        public void onFailure(rd.b<T> bVar, Throwable th) {
            jc.l.g(bVar, "call");
            jc.l.g(th, "t");
            rc.o oVar = this.f13401a;
            j.a aVar = vb.j.f15020f;
            oVar.resumeWith(vb.j.a(vb.k.a(th)));
        }

        @Override // rd.d
        public void onResponse(rd.b<T> bVar, q<T> qVar) {
            jc.l.g(bVar, "call");
            jc.l.g(qVar, "response");
            if (qVar.f()) {
                rc.o oVar = this.f13401a;
                T a10 = qVar.a();
                j.a aVar = vb.j.f15020f;
                oVar.resumeWith(vb.j.a(a10));
                return;
            }
            rc.o oVar2 = this.f13401a;
            HttpException httpException = new HttpException(qVar);
            j.a aVar2 = vb.j.f15020f;
            oVar2.resumeWith(vb.j.a(vb.k.a(httpException)));
        }
    }

    /* compiled from: KotlinExtensions.kt */
    /* loaded from: classes2.dex */
    public static final class e extends jc.m implements ic.l<Throwable, vb.p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ rd.b f13402f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(rd.b bVar) {
            super(1);
            this.f13402f = bVar;
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
            invoke2(th);
            return vb.p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            this.f13402f.cancel();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: KotlinExtensions.kt */
    /* loaded from: classes2.dex */
    public static final class f<T> implements rd.d<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ rc.o f13403a;

        public f(rc.o oVar) {
            this.f13403a = oVar;
        }

        @Override // rd.d
        public void onFailure(rd.b<T> bVar, Throwable th) {
            jc.l.g(bVar, "call");
            jc.l.g(th, "t");
            rc.o oVar = this.f13403a;
            j.a aVar = vb.j.f15020f;
            oVar.resumeWith(vb.j.a(vb.k.a(th)));
        }

        @Override // rd.d
        public void onResponse(rd.b<T> bVar, q<T> qVar) {
            jc.l.g(bVar, "call");
            jc.l.g(qVar, "response");
            rc.o oVar = this.f13403a;
            j.a aVar = vb.j.f15020f;
            oVar.resumeWith(vb.j.a(qVar));
        }
    }

    /* compiled from: KotlinExtensions.kt */
    /* loaded from: classes2.dex */
    public static final class g implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ac.d f13404f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Exception f13405g;

        public g(ac.d dVar, Exception exc) {
            this.f13404f = dVar;
            this.f13405g = exc;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ac.d c10 = bc.b.c(this.f13404f);
            Exception exc = this.f13405g;
            j.a aVar = vb.j.f15020f;
            c10.resumeWith(vb.j.a(vb.k.a(exc)));
        }
    }

    /* compiled from: KotlinExtensions.kt */
    @cc.f(c = "retrofit2/KotlinExtensions", f = "KotlinExtensions.kt", l = {112, 119}, m = "suspendAndThrow")
    /* loaded from: classes2.dex */
    public static final class h extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f13406f;

        /* renamed from: g, reason: collision with root package name */
        public int f13407g;

        /* renamed from: h, reason: collision with root package name */
        public Object f13408h;

        public h(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f13406f = obj;
            this.f13407g |= Integer.MIN_VALUE;
            return j.d(null, this);
        }
    }

    public static final <T> Object a(rd.b<T> bVar, ac.d<? super T> dVar) {
        rc.p pVar = new rc.p(bc.b.c(dVar), 1);
        pVar.n(new a(bVar));
        bVar.c0(new c(pVar));
        Object v10 = pVar.v();
        if (v10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return v10;
    }

    public static final <T> Object b(rd.b<T> bVar, ac.d<? super T> dVar) {
        rc.p pVar = new rc.p(bc.b.c(dVar), 1);
        pVar.n(new b(bVar));
        bVar.c0(new d(pVar));
        Object v10 = pVar.v();
        if (v10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return v10;
    }

    public static final <T> Object c(rd.b<T> bVar, ac.d<? super q<T>> dVar) {
        rc.p pVar = new rc.p(bc.b.c(dVar), 1);
        pVar.n(new e(bVar));
        bVar.c0(new f(pVar));
        Object v10 = pVar.v();
        if (v10 == bc.c.d()) {
            cc.h.c(dVar);
        }
        return v10;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d(Exception exc, ac.d<?> dVar) {
        h hVar;
        int i10;
        if (dVar instanceof h) {
            hVar = (h) dVar;
            int i11 = hVar.f13407g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                hVar.f13407g = i11 - Integer.MIN_VALUE;
                Object obj = hVar.f13406f;
                Object d10 = bc.c.d();
                i10 = hVar.f13407g;
                if (i10 == 0) {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    if (obj instanceof j.b) {
                        throw ((j.b) obj).f15021f;
                    }
                } else if (!(obj instanceof j.b)) {
                    hVar.f13408h = exc;
                    hVar.f13407g = 1;
                    g1.a().H0(hVar.getContext(), new g(hVar, exc));
                    Object d11 = bc.c.d();
                    if (d11 == bc.c.d()) {
                        cc.h.c(hVar);
                    }
                    if (d11 == d10) {
                        return d10;
                    }
                } else {
                    throw ((j.b) obj).f15021f;
                }
                return vb.p.f15031a;
            }
        }
        hVar = new h(dVar);
        Object obj2 = hVar.f13406f;
        Object d102 = bc.c.d();
        i10 = hVar.f13407g;
        if (i10 == 0) {
        }
        return vb.p.f15031a;
    }
}
