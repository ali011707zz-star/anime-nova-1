package v7;

import com.bumptech.glide.load.data.d;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import v7.n;

/* compiled from: ByteArrayLoader.java */
/* loaded from: classes.dex */
public class b<Data> implements n<byte[], Data> {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0391b<Data> f14871a;

    /* compiled from: ByteArrayLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<byte[], ByteBuffer> {

        /* compiled from: ByteArrayLoader.java */
        /* renamed from: v7.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0390a implements InterfaceC0391b<ByteBuffer> {
            public C0390a() {
            }

            @Override // v7.b.InterfaceC0391b
            public Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            @Override // v7.b.InterfaceC0391b
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public ByteBuffer b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // v7.o
        public n<byte[], ByteBuffer> a(r rVar) {
            return new b(new C0390a());
        }
    }

    /* compiled from: ByteArrayLoader.java */
    /* renamed from: v7.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0391b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    /* compiled from: ByteArrayLoader.java */
    /* loaded from: classes.dex */
    public static class c<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: f, reason: collision with root package name */
        public final byte[] f14873f;

        /* renamed from: g, reason: collision with root package name */
        public final InterfaceC0391b<Data> f14874g;

        public c(byte[] bArr, InterfaceC0391b<Data> interfaceC0391b) {
            this.f14873f = bArr;
            this.f14874g = interfaceC0391b;
        }

        @Override // com.bumptech.glide.load.data.d
        public Class<Data> a() {
            return this.f14874g.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public p7.a e() {
            return p7.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void f(com.bumptech.glide.g gVar, d.a<? super Data> aVar) {
            aVar.d(this.f14874g.b(this.f14873f));
        }
    }

    /* compiled from: ByteArrayLoader.java */
    /* loaded from: classes.dex */
    public static class d implements o<byte[], InputStream> {

        /* compiled from: ByteArrayLoader.java */
        /* loaded from: classes.dex */
        public class a implements InterfaceC0391b<InputStream> {
            public a() {
            }

            @Override // v7.b.InterfaceC0391b
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // v7.b.InterfaceC0391b
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public InputStream b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // v7.o
        public n<byte[], InputStream> a(r rVar) {
            return new b(new a());
        }
    }

    public b(InterfaceC0391b<Data> interfaceC0391b) {
        this.f14871a = interfaceC0391b;
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<Data> a(byte[] bArr, int i10, int i11, p7.g gVar) {
        return new n.a<>(new k8.d(bArr), new c(bArr, this.f14871a));
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(byte[] bArr) {
        return true;
    }
}
