package j9;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import java.io.IOException;

/* compiled from: AutoBatchedLogRequestEncoder.java */
/* loaded from: classes.dex */
public final class b implements Configurator {

    /* renamed from: a, reason: collision with root package name */
    public static final Configurator f8932a = new b();

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes.dex */
    public static final class a implements ObjectEncoder<j9.a> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f8933a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f8934b = FieldDescriptor.of("sdkVersion");

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f8935c = FieldDescriptor.of("model");

        /* renamed from: d, reason: collision with root package name */
        public static final FieldDescriptor f8936d = FieldDescriptor.of("hardware");

        /* renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f8937e = FieldDescriptor.of("device");

        /* renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f8938f = FieldDescriptor.of("product");

        /* renamed from: g, reason: collision with root package name */
        public static final FieldDescriptor f8939g = FieldDescriptor.of("osBuild");

        /* renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f8940h = FieldDescriptor.of("manufacturer");

        /* renamed from: i, reason: collision with root package name */
        public static final FieldDescriptor f8941i = FieldDescriptor.of("fingerprint");

        /* renamed from: j, reason: collision with root package name */
        public static final FieldDescriptor f8942j = FieldDescriptor.of("locale");

        /* renamed from: k, reason: collision with root package name */
        public static final FieldDescriptor f8943k = FieldDescriptor.of("country");

        /* renamed from: l, reason: collision with root package name */
        public static final FieldDescriptor f8944l = FieldDescriptor.of("mccMnc");

        /* renamed from: m, reason: collision with root package name */
        public static final FieldDescriptor f8945m = FieldDescriptor.of("applicationBuild");

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(j9.a aVar, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f8934b, aVar.m());
            objectEncoderContext.add(f8935c, aVar.j());
            objectEncoderContext.add(f8936d, aVar.f());
            objectEncoderContext.add(f8937e, aVar.d());
            objectEncoderContext.add(f8938f, aVar.l());
            objectEncoderContext.add(f8939g, aVar.k());
            objectEncoderContext.add(f8940h, aVar.h());
            objectEncoderContext.add(f8941i, aVar.e());
            objectEncoderContext.add(f8942j, aVar.g());
            objectEncoderContext.add(f8943k, aVar.c());
            objectEncoderContext.add(f8944l, aVar.i());
            objectEncoderContext.add(f8945m, aVar.b());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* renamed from: j9.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0165b implements ObjectEncoder<j> {

        /* renamed from: a, reason: collision with root package name */
        public static final C0165b f8946a = new C0165b();

        /* renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f8947b = FieldDescriptor.of("logRequest");

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(j jVar, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f8947b, jVar.c());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes.dex */
    public static final class c implements ObjectEncoder<k> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f8948a = new c();

        /* renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f8949b = FieldDescriptor.of("clientType");

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f8950c = FieldDescriptor.of("androidClientInfo");

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(k kVar, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f8949b, kVar.c());
            objectEncoderContext.add(f8950c, kVar.b());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes.dex */
    public static final class d implements ObjectEncoder<l> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f8951a = new d();

        /* renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f8952b = FieldDescriptor.of("eventTimeMs");

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f8953c = FieldDescriptor.of("eventCode");

        /* renamed from: d, reason: collision with root package name */
        public static final FieldDescriptor f8954d = FieldDescriptor.of("eventUptimeMs");

        /* renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f8955e = FieldDescriptor.of("sourceExtension");

        /* renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f8956f = FieldDescriptor.of("sourceExtensionJsonProto3");

        /* renamed from: g, reason: collision with root package name */
        public static final FieldDescriptor f8957g = FieldDescriptor.of("timezoneOffsetSeconds");

        /* renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f8958h = FieldDescriptor.of("networkConnectionInfo");

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(l lVar, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f8952b, lVar.c());
            objectEncoderContext.add(f8953c, lVar.b());
            objectEncoderContext.add(f8954d, lVar.d());
            objectEncoderContext.add(f8955e, lVar.f());
            objectEncoderContext.add(f8956f, lVar.g());
            objectEncoderContext.add(f8957g, lVar.h());
            objectEncoderContext.add(f8958h, lVar.e());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes.dex */
    public static final class e implements ObjectEncoder<m> {

        /* renamed from: a, reason: collision with root package name */
        public static final e f8959a = new e();

        /* renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f8960b = FieldDescriptor.of("requestTimeMs");

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f8961c = FieldDescriptor.of("requestUptimeMs");

        /* renamed from: d, reason: collision with root package name */
        public static final FieldDescriptor f8962d = FieldDescriptor.of("clientInfo");

        /* renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f8963e = FieldDescriptor.of("logSource");

        /* renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f8964f = FieldDescriptor.of("logSourceName");

        /* renamed from: g, reason: collision with root package name */
        public static final FieldDescriptor f8965g = FieldDescriptor.of("logEvent");

        /* renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f8966h = FieldDescriptor.of("qosTier");

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(m mVar, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f8960b, mVar.g());
            objectEncoderContext.add(f8961c, mVar.h());
            objectEncoderContext.add(f8962d, mVar.b());
            objectEncoderContext.add(f8963e, mVar.d());
            objectEncoderContext.add(f8964f, mVar.e());
            objectEncoderContext.add(f8965g, mVar.c());
            objectEncoderContext.add(f8966h, mVar.f());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes.dex */
    public static final class f implements ObjectEncoder<o> {

        /* renamed from: a, reason: collision with root package name */
        public static final f f8967a = new f();

        /* renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f8968b = FieldDescriptor.of("networkType");

        /* renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f8969c = FieldDescriptor.of("mobileSubtype");

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(o oVar, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.add(f8968b, oVar.c());
            objectEncoderContext.add(f8969c, oVar.b());
        }
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void configure(EncoderConfig<?> encoderConfig) {
        C0165b c0165b = C0165b.f8946a;
        encoderConfig.registerEncoder(j.class, c0165b);
        encoderConfig.registerEncoder(j9.d.class, c0165b);
        e eVar = e.f8959a;
        encoderConfig.registerEncoder(m.class, eVar);
        encoderConfig.registerEncoder(g.class, eVar);
        c cVar = c.f8948a;
        encoderConfig.registerEncoder(k.class, cVar);
        encoderConfig.registerEncoder(j9.e.class, cVar);
        a aVar = a.f8933a;
        encoderConfig.registerEncoder(j9.a.class, aVar);
        encoderConfig.registerEncoder(j9.c.class, aVar);
        d dVar = d.f8951a;
        encoderConfig.registerEncoder(l.class, dVar);
        encoderConfig.registerEncoder(j9.f.class, dVar);
        f fVar = f.f8967a;
        encoderConfig.registerEncoder(o.class, fVar);
        encoderConfig.registerEncoder(i.class, fVar);
    }
}
