package v7;

import com.bumptech.glide.load.data.d;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import v7.n;

/* compiled from: ByteBufferFileLoader.java */
/* loaded from: classes.dex */
public class d implements n<File, ByteBuffer> {

    /* compiled from: ByteBufferFileLoader.java */
    /* loaded from: classes.dex */
    public static final class a implements com.bumptech.glide.load.data.d<ByteBuffer> {

        /* renamed from: f, reason: collision with root package name */
        public final File f14876f;

        public a(File file) {
            this.f14876f = file;
        }

        @Override // com.bumptech.glide.load.data.d
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
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
        public void f(com.bumptech.glide.g gVar, d.a<? super ByteBuffer> aVar) {
            try {
                aVar.d(l8.a.a(this.f14876f));
            } catch (IOException e10) {
                aVar.c(e10);
            }
        }
    }

    /* compiled from: ByteBufferFileLoader.java */
    /* loaded from: classes.dex */
    public static class b implements o<File, ByteBuffer> {
        @Override // v7.o
        public n<File, ByteBuffer> a(r rVar) {
            return new d();
        }
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<ByteBuffer> a(File file, int i10, int i11, p7.g gVar) {
        return new n.a<>(new k8.d(file), new a(file));
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(File file) {
        return true;
    }
}
