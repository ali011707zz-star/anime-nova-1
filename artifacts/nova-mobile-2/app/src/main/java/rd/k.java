package rd;

import cd.c0;
import java.io.IOException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* compiled from: OkHttpCall.java */
/* loaded from: classes.dex */
public final class k<T> implements rd.b<T> {

    /* renamed from: f, reason: collision with root package name */
    public final p f13409f;

    /* renamed from: g, reason: collision with root package name */
    public final Object[] f13410g;

    /* renamed from: h, reason: collision with root package name */
    public final Call.Factory f13411h;

    /* renamed from: i, reason: collision with root package name */
    public final f<ResponseBody, T> f13412i;

    /* renamed from: j, reason: collision with root package name */
    public volatile boolean f13413j;

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    public Call f13414k;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    public Throwable f13415l;

    /* renamed from: m, reason: collision with root package name */
    @GuardedBy("this")
    public boolean f13416m;

    /* compiled from: OkHttpCall.java */
    /* loaded from: classes2.dex */
    public class a implements Callback {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ d f13417a;

        public a(d dVar) {
            this.f13417a = dVar;
        }

        public final void a(Throwable th) {
            try {
                this.f13417a.onFailure(k.this, th);
            } catch (Throwable th2) {
                v.t(th2);
                th2.printStackTrace();
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            a(iOException);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) {
            try {
                try {
                    this.f13417a.onResponse(k.this, k.this.c(response));
                } catch (Throwable th) {
                    v.t(th);
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                v.t(th2);
                a(th2);
            }
        }
    }

    /* compiled from: OkHttpCall.java */
    /* loaded from: classes.dex */
    public static final class b extends ResponseBody {

        /* renamed from: f, reason: collision with root package name */
        public final ResponseBody f13419f;

        /* renamed from: g, reason: collision with root package name */
        public final cd.h f13420g;

        /* renamed from: h, reason: collision with root package name */
        @Nullable
        public IOException f13421h;

        /* compiled from: OkHttpCall.java */
        /* loaded from: classes2.dex */
        public class a extends cd.k {
            public a(c0 c0Var) {
                super(c0Var);
            }

            @Override // cd.k, cd.c0
            public long read(cd.f fVar, long j10) throws IOException {
                try {
                    return super.read(fVar, j10);
                } catch (IOException e10) {
                    b.this.f13421h = e10;
                    throw e10;
                }
            }
        }

        public b(ResponseBody responseBody) {
            this.f13419f = responseBody;
            this.f13420g = cd.p.d(new a(responseBody.source()));
        }

        public void b() throws IOException {
            IOException iOException = this.f13421h;
            if (iOException != null) {
                throw iOException;
            }
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f13419f.close();
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.f13419f.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.f13419f.contentType();
        }

        @Override // okhttp3.ResponseBody
        public cd.h source() {
            return this.f13420g;
        }
    }

    /* compiled from: OkHttpCall.java */
    /* loaded from: classes.dex */
    public static final class c extends ResponseBody {

        /* renamed from: f, reason: collision with root package name */
        @Nullable
        public final MediaType f13423f;

        /* renamed from: g, reason: collision with root package name */
        public final long f13424g;

        public c(@Nullable MediaType mediaType, long j10) {
            this.f13423f = mediaType;
            this.f13424g = j10;
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.f13424g;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.f13423f;
        }

        @Override // okhttp3.ResponseBody
        public cd.h source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    public k(p pVar, Object[] objArr, Call.Factory factory, f<ResponseBody, T> fVar) {
        this.f13409f = pVar;
        this.f13410g = objArr;
        this.f13411h = factory;
        this.f13412i = fVar;
    }

    @Override // rd.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public k<T> clone() {
        return new k<>(this.f13409f, this.f13410g, this.f13411h, this.f13412i);
    }

    public final Call b() throws IOException {
        Call newCall = this.f13411h.newCall(this.f13409f.a(this.f13410g));
        if (newCall != null) {
            return newCall;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    public q<T> c(Response response) throws IOException {
        ResponseBody body = response.body();
        Response build = response.newBuilder().body(new c(body.contentType(), body.contentLength())).build();
        int code = build.code();
        if (code < 200 || code >= 300) {
            try {
                return q.c(v.a(body), build);
            } finally {
                body.close();
            }
        }
        if (code != 204 && code != 205) {
            b bVar = new b(body);
            try {
                return q.h(this.f13412i.convert(bVar), build);
            } catch (RuntimeException e10) {
                bVar.b();
                throw e10;
            }
        }
        body.close();
        return q.h(null, build);
    }

    @Override // rd.b
    public void c0(d<T> dVar) {
        Call call;
        Throwable th;
        v.b(dVar, "callback == null");
        synchronized (this) {
            if (!this.f13416m) {
                this.f13416m = true;
                call = this.f13414k;
                th = this.f13415l;
                if (call == null && th == null) {
                    try {
                        Call b10 = b();
                        this.f13414k = b10;
                        call = b10;
                    } catch (Throwable th2) {
                        th = th2;
                        v.t(th);
                        this.f13415l = th;
                    }
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (th != null) {
            dVar.onFailure(this, th);
            return;
        }
        if (this.f13413j) {
            call.cancel();
        }
        call.enqueue(new a(dVar));
    }

    @Override // rd.b
    public void cancel() {
        Call call;
        this.f13413j = true;
        synchronized (this) {
            call = this.f13414k;
        }
        if (call != null) {
            call.cancel();
        }
    }

    @Override // rd.b
    public q<T> execute() throws IOException {
        Call call;
        synchronized (this) {
            if (!this.f13416m) {
                this.f13416m = true;
                Throwable th = this.f13415l;
                if (th != null) {
                    if (!(th instanceof IOException)) {
                        if (th instanceof RuntimeException) {
                            throw ((RuntimeException) th);
                        }
                        throw ((Error) th);
                    }
                    throw ((IOException) th);
                }
                call = this.f13414k;
                if (call == null) {
                    try {
                        call = b();
                        this.f13414k = call;
                    } catch (IOException | Error | RuntimeException e10) {
                        v.t(e10);
                        this.f13415l = e10;
                        throw e10;
                    }
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (this.f13413j) {
            call.cancel();
        }
        return c(call.execute());
    }

    @Override // rd.b
    public boolean isCanceled() {
        boolean z10 = true;
        if (this.f13413j) {
            return true;
        }
        synchronized (this) {
            Call call = this.f13414k;
            if (call == null || !call.isCanceled()) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // rd.b
    public synchronized Request request() {
        Call call = this.f13414k;
        if (call != null) {
            return call.request();
        }
        Throwable th = this.f13415l;
        if (th != null) {
            if (!(th instanceof IOException)) {
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw ((Error) th);
            }
            throw new RuntimeException("Unable to create request.", this.f13415l);
        }
        try {
            Call b10 = b();
            this.f13414k = b10;
            return b10.request();
        } catch (IOException e10) {
            this.f13415l = e10;
            throw new RuntimeException("Unable to create request.", e10);
        } catch (Error e11) {
            e = e11;
            v.t(e);
            this.f13415l = e;
            throw e;
        } catch (RuntimeException e12) {
            e = e12;
            v.t(e);
            this.f13415l = e;
            throw e;
        }
    }
}
