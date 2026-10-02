package z7;

import com.bumptech.glide.load.data.e;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferRewinder.java */
/* loaded from: classes.dex */
public class a implements e<ByteBuffer> {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f17431a;

    /* compiled from: ByteBufferRewinder.java */
    /* renamed from: z7.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0445a implements e.a<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.e.a
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.e.a
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public e<ByteBuffer> b(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }
    }

    public a(ByteBuffer byteBuffer) {
        this.f17431a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.e
    public void b() {
    }

    @Override // com.bumptech.glide.load.data.e
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public ByteBuffer a() {
        this.f17431a.position(0);
        return this.f17431a;
    }
}
