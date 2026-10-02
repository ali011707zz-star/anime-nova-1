package c8;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;
import l8.k;
import o7.a;

/* compiled from: ByteBufferGifDecoder.java */
/* loaded from: classes.dex */
public class a implements p7.i<ByteBuffer, c> {

    /* renamed from: f, reason: collision with root package name */
    public static final C0078a f3719f = new C0078a();

    /* renamed from: g, reason: collision with root package name */
    public static final b f3720g = new b();

    /* renamed from: a, reason: collision with root package name */
    public final Context f3721a;

    /* renamed from: b, reason: collision with root package name */
    public final List<ImageHeaderParser> f3722b;

    /* renamed from: c, reason: collision with root package name */
    public final b f3723c;

    /* renamed from: d, reason: collision with root package name */
    public final C0078a f3724d;

    /* renamed from: e, reason: collision with root package name */
    public final c8.b f3725e;

    /* compiled from: ByteBufferGifDecoder.java */
    /* renamed from: c8.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0078a {
        public o7.a a(a.InterfaceC0295a interfaceC0295a, o7.c cVar, ByteBuffer byteBuffer, int i10) {
            return new o7.e(interfaceC0295a, cVar, byteBuffer, i10);
        }
    }

    /* compiled from: ByteBufferGifDecoder.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final Queue<o7.d> f3726a = k.f(0);

        public synchronized o7.d a(ByteBuffer byteBuffer) {
            o7.d poll;
            poll = this.f3726a.poll();
            if (poll == null) {
                poll = new o7.d();
            }
            return poll.p(byteBuffer);
        }

        public synchronized void b(o7.d dVar) {
            dVar.a();
            this.f3726a.offer(dVar);
        }
    }

    public a(Context context, List<ImageHeaderParser> list, s7.e eVar, s7.b bVar) {
        this(context, list, eVar, bVar, f3720g, f3719f);
    }

    public static int e(o7.c cVar, int i10, int i11) {
        int min = Math.min(cVar.a() / i11, cVar.d() / i10);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Downsampling GIF, sampleSize: ");
            sb2.append(max);
            sb2.append(", target dimens: [");
            sb2.append(i10);
            sb2.append("x");
            sb2.append(i11);
            sb2.append("], actual dimens: [");
            sb2.append(cVar.d());
            sb2.append("x");
            sb2.append(cVar.a());
            sb2.append("]");
        }
        return max;
    }

    public final e c(ByteBuffer byteBuffer, int i10, int i11, o7.d dVar, p7.g gVar) {
        Bitmap.Config config;
        long b10 = l8.f.b();
        try {
            o7.c c10 = dVar.c();
            if (c10.b() > 0 && c10.c() == 0) {
                if (gVar.c(i.f3767a) == p7.b.PREFER_RGB_565) {
                    config = Bitmap.Config.RGB_565;
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                o7.a a10 = this.f3724d.a(this.f3725e, c10, byteBuffer, e(c10, i10, i11));
                a10.g(config);
                a10.c();
                Bitmap b11 = a10.b();
                if (b11 == null) {
                    return null;
                }
                e eVar = new e(new c(this.f3721a, a10, x7.c.c(), i10, i11, b11));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Decoded GIF from stream in ");
                    sb2.append(l8.f.a(b10));
                }
                return eVar;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Decoded GIF from stream in ");
                sb3.append(l8.f.a(b10));
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Decoded GIF from stream in ");
                sb4.append(l8.f.a(b10));
            }
        }
    }

    @Override // p7.i
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public e b(ByteBuffer byteBuffer, int i10, int i11, p7.g gVar) {
        o7.d a10 = this.f3723c.a(byteBuffer);
        try {
            return c(byteBuffer, i10, i11, a10, gVar);
        } finally {
            this.f3723c.b(a10);
        }
    }

    @Override // p7.i
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public boolean a(ByteBuffer byteBuffer, p7.g gVar) throws IOException {
        return !((Boolean) gVar.c(i.f3768b)).booleanValue() && com.bumptech.glide.load.a.f(this.f3722b, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    public a(Context context, List<ImageHeaderParser> list, s7.e eVar, s7.b bVar, b bVar2, C0078a c0078a) {
        this.f3721a = context.getApplicationContext();
        this.f3722b = list;
        this.f3724d = c0078a;
        this.f3725e = new c8.b(eVar, bVar);
        this.f3723c = bVar2;
    }
}
