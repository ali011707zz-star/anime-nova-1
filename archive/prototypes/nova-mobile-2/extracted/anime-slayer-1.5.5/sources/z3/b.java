package z3;

import android.content.Context;
import com.anslayer.api.converter.BodyConverter;
import ic.l;
import io.wax911.support.util.SingletonUtil;
import java.util.concurrent.TimeUnit;
import jc.g;
import jc.m;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import rd.r;
import vb.f;

/* compiled from: RetroFactory.kt */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: d, reason: collision with root package name */
    public static final a f17284d = new a(null);

    /* renamed from: e, reason: collision with root package name */
    public static final vb.e<OkHttpClient> f17285e = f.a(C0437b.f17291f);

    /* renamed from: f, reason: collision with root package name */
    public static final vb.e<OkHttpClient> f17286f = f.a(c.f17292f);

    /* renamed from: a, reason: collision with root package name */
    public final Context f17287a;

    /* renamed from: b, reason: collision with root package name */
    public final vb.e f17288b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.e f17289c;

    /* compiled from: RetroFactory.kt */
    /* loaded from: classes.dex */
    public static final class a extends SingletonUtil<b, Context> {

        /* compiled from: RetroFactory.kt */
        /* renamed from: z3.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0436a extends m implements l<Context, b> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0436a f17290f = new C0436a();

            public C0436a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final b invoke(Context context) {
                jc.l.f(context, "it");
                return new b(context);
            }
        }

        public a() {
            super(C0436a.f17290f);
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final OkHttpClient a() {
            return (OkHttpClient) b.f17285e.getValue();
        }
    }

    /* compiled from: RetroFactory.kt */
    /* renamed from: z3.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0437b extends m implements ic.a<OkHttpClient> {

        /* renamed from: f, reason: collision with root package name */
        public static final C0437b f17291f = new C0437b();

        public C0437b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OkHttpClient invoke() {
            new HttpLoggingInterceptor().setLevel(HttpLoggingInterceptor.Level.BODY);
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            builder.connectTimeout(15L, timeUnit);
            builder.readTimeout(15L, timeUnit);
            return builder.build();
        }
    }

    /* compiled from: RetroFactory.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<OkHttpClient> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f17292f = new c();

        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OkHttpClient invoke() {
            new HttpLoggingInterceptor().setLevel(HttpLoggingInterceptor.Level.HEADERS);
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            builder.writeTimeout(3L, timeUnit);
            builder.connectTimeout(3L, timeUnit);
            builder.readTimeout(3L, timeUnit);
            return builder.build();
        }
    }

    /* compiled from: RetroFactory.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<OkHttpClient> {
        public d() {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OkHttpClient invoke() {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            return builder.readTimeout(35L, timeUnit).connectTimeout(35L, timeUnit).retryOnConnectionFailure(true).addInterceptor(new a4.a(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0)).addInterceptor(new a4.b(b.this.c(), null, null, 6, null)).build();
        }
    }

    /* compiled from: RetroFactory.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<r> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r invoke() {
            return new r.b().f(b.this.d()).a(new BodyConverter()).b(x3.d.f15855a.a()).d();
        }
    }

    public b(Context context) {
        jc.l.f(context, "context");
        this.f17287a = context;
        this.f17288b = f.a(new d());
        this.f17289c = f.a(new e());
    }

    public final <S> S b(Class<S> cls) {
        jc.l.f(cls, "serviceClass");
        return (S) e().b(cls);
    }

    public final Context c() {
        return this.f17287a;
    }

    public final OkHttpClient d() {
        return (OkHttpClient) this.f17288b.getValue();
    }

    public final r e() {
        Object value = this.f17289c.getValue();
        jc.l.e(value, "<get-retrofit>(...)");
        return (r) value;
    }
}
