package rd;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import rd.c;
import retrofit2.HttpException;

/* compiled from: CompletableFutureCallAdapterFactory.java */
@IgnoreJRERequirement
/* loaded from: classes.dex */
public final class e extends c.a {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f13366a = new e();

    /* compiled from: CompletableFutureCallAdapterFactory.java */
    @IgnoreJRERequirement
    /* loaded from: classes2.dex */
    public static final class a<R> implements c<R, CompletableFuture<R>> {

        /* renamed from: a, reason: collision with root package name */
        public final Type f13367a;

        /* compiled from: CompletableFutureCallAdapterFactory.java */
        /* renamed from: rd.e$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0329a extends CompletableFuture<R> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ rd.b f13368f;

            public C0329a(rd.b bVar) {
                this.f13368f = bVar;
            }

            @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
            public boolean cancel(boolean z10) {
                if (z10) {
                    this.f13368f.cancel();
                }
                return super.cancel(z10);
            }
        }

        /* compiled from: CompletableFutureCallAdapterFactory.java */
        /* loaded from: classes2.dex */
        public class b implements d<R> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ CompletableFuture f13370a;

            public b(CompletableFuture completableFuture) {
                this.f13370a = completableFuture;
            }

            @Override // rd.d
            public void onFailure(rd.b<R> bVar, Throwable th) {
                this.f13370a.completeExceptionally(th);
            }

            @Override // rd.d
            public void onResponse(rd.b<R> bVar, q<R> qVar) {
                if (qVar.f()) {
                    this.f13370a.complete(qVar.a());
                } else {
                    this.f13370a.completeExceptionally(new HttpException(qVar));
                }
            }
        }

        public a(Type type) {
            this.f13367a = type;
        }

        @Override // rd.c
        public Type b() {
            return this.f13367a;
        }

        @Override // rd.c
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public CompletableFuture<R> a(rd.b<R> bVar) {
            C0329a c0329a = new C0329a(bVar);
            bVar.c0(new b(c0329a));
            return c0329a;
        }
    }

    /* compiled from: CompletableFutureCallAdapterFactory.java */
    @IgnoreJRERequirement
    /* loaded from: classes2.dex */
    public static final class b<R> implements c<R, CompletableFuture<q<R>>> {

        /* renamed from: a, reason: collision with root package name */
        public final Type f13372a;

        /* compiled from: CompletableFutureCallAdapterFactory.java */
        /* loaded from: classes2.dex */
        public class a extends CompletableFuture<q<R>> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ rd.b f13373f;

            public a(rd.b bVar) {
                this.f13373f = bVar;
            }

            @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
            public boolean cancel(boolean z10) {
                if (z10) {
                    this.f13373f.cancel();
                }
                return super.cancel(z10);
            }
        }

        /* compiled from: CompletableFutureCallAdapterFactory.java */
        /* renamed from: rd.e$b$b, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0330b implements d<R> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ CompletableFuture f13375a;

            public C0330b(CompletableFuture completableFuture) {
                this.f13375a = completableFuture;
            }

            @Override // rd.d
            public void onFailure(rd.b<R> bVar, Throwable th) {
                this.f13375a.completeExceptionally(th);
            }

            @Override // rd.d
            public void onResponse(rd.b<R> bVar, q<R> qVar) {
                this.f13375a.complete(qVar);
            }
        }

        public b(Type type) {
            this.f13372a = type;
        }

        @Override // rd.c
        public Type b() {
            return this.f13372a;
        }

        @Override // rd.c
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public CompletableFuture<q<R>> a(rd.b<R> bVar) {
            a aVar = new a(bVar);
            bVar.c0(new C0330b(aVar));
            return aVar;
        }
    }

    @Override // rd.c.a
    @Nullable
    public c<?, ?> a(Type type, Annotation[] annotationArr, r rVar) {
        if (c.a.c(type) != CompletableFuture.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type b10 = c.a.b(0, (ParameterizedType) type);
            if (c.a.c(b10) != q.class) {
                return new a(b10);
            }
            if (b10 instanceof ParameterizedType) {
                return new b(c.a.b(0, (ParameterizedType) b10));
            }
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        }
        throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
    }
}
