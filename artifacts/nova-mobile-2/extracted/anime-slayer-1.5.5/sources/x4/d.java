package x4;

import cd.c0;
import cd.h;
import cd.k;
import cd.p;
import java.io.IOException;
import jc.l;
import jc.m;
import okhttp3.MediaType;
import okhttp3.ResponseBody;

/* compiled from: ProgressResponseBody.kt */
/* loaded from: classes.dex */
public final class d extends ResponseBody {

    /* renamed from: f, reason: collision with root package name */
    public final ResponseBody f15961f;

    /* renamed from: g, reason: collision with root package name */
    public final c f15962g;

    /* renamed from: h, reason: collision with root package name */
    public final vb.e f15963h;

    /* compiled from: ProgressResponseBody.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<h> {
        public a() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final h invoke() {
            d dVar = d.this;
            h source = dVar.f15961f.source();
            l.e(source, "responseBody.source()");
            return p.d(dVar.x(source));
        }
    }

    /* compiled from: ProgressResponseBody.kt */
    /* loaded from: classes.dex */
    public static final class b extends k {

        /* renamed from: f, reason: collision with root package name */
        public long f15965f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ c0 f15966g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ d f15967h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(c0 c0Var, d dVar) {
            super(c0Var);
            this.f15966g = c0Var;
            this.f15967h = dVar;
        }

        @Override // cd.k, cd.c0
        public long read(cd.f fVar, long j10) throws IOException {
            l.f(fVar, "sink");
            long read = super.read(fVar, j10);
            this.f15965f += read != -1 ? read : 0L;
            this.f15967h.f15962g.a(this.f15965f, this.f15967h.f15961f.contentLength(), read == -1);
            return read;
        }
    }

    public d(ResponseBody responseBody, c cVar) {
        l.f(responseBody, "responseBody");
        l.f(cVar, "progressListener");
        this.f15961f = responseBody;
        this.f15962g = cVar;
        this.f15963h = vb.f.a(new a());
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.f15961f.contentLength();
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        MediaType contentType = this.f15961f.contentType();
        l.c(contentType);
        l.e(contentType, "responseBody.contentType()!!");
        return contentType;
    }

    public final h k() {
        return (h) this.f15963h.getValue();
    }

    @Override // okhttp3.ResponseBody
    public h source() {
        return k();
    }

    public final c0 x(c0 c0Var) {
        return new b(c0Var, this);
    }
}
