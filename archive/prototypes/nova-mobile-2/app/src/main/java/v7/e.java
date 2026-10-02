package v7;

import android.util.Base64;
import com.bumptech.glide.load.data.d;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import v7.n;

/* compiled from: DataUrlLoader.java */
/* loaded from: classes.dex */
public final class e<Model, Data> implements n<Model, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final a<Data> f14877a;

    /* compiled from: DataUrlLoader.java */
    /* loaded from: classes.dex */
    public interface a<Data> {
        Class<Data> a();

        void b(Data data) throws IOException;

        Data c(String str) throws IllegalArgumentException;
    }

    /* compiled from: DataUrlLoader.java */
    /* loaded from: classes.dex */
    public static final class b<Data> implements com.bumptech.glide.load.data.d<Data> {

        /* renamed from: f, reason: collision with root package name */
        public final String f14878f;

        /* renamed from: g, reason: collision with root package name */
        public final a<Data> f14879g;

        /* renamed from: h, reason: collision with root package name */
        public Data f14880h;

        public b(String str, a<Data> aVar) {
            this.f14878f = str;
            this.f14879g = aVar;
        }

        @Override // com.bumptech.glide.load.data.d
        public Class<Data> a() {
            return this.f14879g.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            try {
                this.f14879g.b(this.f14880h);
            } catch (IOException unused) {
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public p7.a e() {
            return p7.a.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.d
        public void f(com.bumptech.glide.g gVar, d.a<? super Data> aVar) {
            try {
                Data c10 = this.f14879g.c(this.f14878f);
                this.f14880h = c10;
                aVar.d(c10);
            } catch (IllegalArgumentException e10) {
                aVar.c(e10);
            }
        }
    }

    /* compiled from: DataUrlLoader.java */
    /* loaded from: classes.dex */
    public static final class c<Model> implements o<Model, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final a<InputStream> f14881a = new a();

        /* compiled from: DataUrlLoader.java */
        /* loaded from: classes.dex */
        public class a implements a<InputStream> {
            public a() {
            }

            @Override // v7.e.a
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // v7.e.a
            /* renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // v7.e.a
            /* renamed from: e, reason: merged with bridge method [inline-methods] */
            public InputStream c(String str) {
                if (str.startsWith("data:image")) {
                    int indexOf = str.indexOf(44);
                    if (indexOf != -1) {
                        if (str.substring(0, indexOf).endsWith(";base64")) {
                            return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                        }
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                throw new IllegalArgumentException("Not a valid image data URL.");
            }
        }

        @Override // v7.o
        public n<Model, InputStream> a(r rVar) {
            return new e(this.f14881a);
        }
    }

    public e(a<Data> aVar) {
        this.f14877a = aVar;
    }

    @Override // v7.n
    public n.a<Data> a(Model model, int i10, int i11, p7.g gVar) {
        return new n.a<>(new k8.d(model), new b(model.toString(), this.f14877a));
    }

    @Override // v7.n
    public boolean b(Model model) {
        return model.toString().startsWith("data:image");
    }
}
