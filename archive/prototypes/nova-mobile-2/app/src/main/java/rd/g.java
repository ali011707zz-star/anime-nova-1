package rd;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import okhttp3.Request;
import rd.c;

/* compiled from: DefaultCallAdapterFactory.java */
/* loaded from: classes.dex */
public final class g extends c.a {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final Executor f13377a;

    /* compiled from: DefaultCallAdapterFactory.java */
    /* loaded from: classes2.dex */
    public class a implements c<Object, rd.b<?>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Type f13378a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Executor f13379b;

        public a(Type type, Executor executor) {
            this.f13378a = type;
            this.f13379b = executor;
        }

        @Override // rd.c
        public Type b() {
            return this.f13378a;
        }

        @Override // rd.c
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public rd.b<Object> a(rd.b<Object> bVar) {
            Executor executor = this.f13379b;
            return executor == null ? bVar : new b(executor, bVar);
        }
    }

    /* compiled from: DefaultCallAdapterFactory.java */
    /* loaded from: classes2.dex */
    public static final class b<T> implements rd.b<T> {

        /* renamed from: f, reason: collision with root package name */
        public final Executor f13381f;

        /* renamed from: g, reason: collision with root package name */
        public final rd.b<T> f13382g;

        /* compiled from: DefaultCallAdapterFactory.java */
        /* loaded from: classes2.dex */
        public class a implements d<T> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ d f13383a;

            /* compiled from: DefaultCallAdapterFactory.java */
            /* renamed from: rd.g$b$a$a, reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class RunnableC0331a implements Runnable {

                /* renamed from: f, reason: collision with root package name */
                public final /* synthetic */ q f13385f;

                public RunnableC0331a(q qVar) {
                    this.f13385f = qVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.f13382g.isCanceled()) {
                        a aVar = a.this;
                        aVar.f13383a.onFailure(b.this, new IOException("Canceled"));
                    } else {
                        a aVar2 = a.this;
                        aVar2.f13383a.onResponse(b.this, this.f13385f);
                    }
                }
            }

            /* compiled from: DefaultCallAdapterFactory.java */
            /* renamed from: rd.g$b$a$b, reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class RunnableC0332b implements Runnable {

                /* renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Throwable f13387f;

                public RunnableC0332b(Throwable th) {
                    this.f13387f = th;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a aVar = a.this;
                    aVar.f13383a.onFailure(b.this, this.f13387f);
                }
            }

            public a(d dVar) {
                this.f13383a = dVar;
            }

            @Override // rd.d
            public void onFailure(rd.b<T> bVar, Throwable th) {
                b.this.f13381f.execute(new RunnableC0332b(th));
            }

            @Override // rd.d
            public void onResponse(rd.b<T> bVar, q<T> qVar) {
                b.this.f13381f.execute(new RunnableC0331a(qVar));
            }
        }

        public b(Executor executor, rd.b<T> bVar) {
            this.f13381f = executor;
            this.f13382g = bVar;
        }

        @Override // rd.b
        public void c0(d<T> dVar) {
            v.b(dVar, "callback == null");
            this.f13382g.c0(new a(dVar));
        }

        @Override // rd.b
        public void cancel() {
            this.f13382g.cancel();
        }

        @Override // rd.b
        public q<T> execute() throws IOException {
            return this.f13382g.execute();
        }

        @Override // rd.b
        public boolean isCanceled() {
            return this.f13382g.isCanceled();
        }

        @Override // rd.b
        public Request request() {
            return this.f13382g.request();
        }

        @Override // rd.b
        public rd.b<T> clone() {
            return new b(this.f13381f, this.f13382g.clone());
        }
    }

    public g(@Nullable Executor executor) {
        this.f13377a = executor;
    }

    @Override // rd.c.a
    @Nullable
    public c<?, ?> a(Type type, Annotation[] annotationArr, r rVar) {
        if (c.a.c(type) != rd.b.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return new a(v.h(0, (ParameterizedType) type), v.m(annotationArr, t.class) ? null : this.f13377a);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}
