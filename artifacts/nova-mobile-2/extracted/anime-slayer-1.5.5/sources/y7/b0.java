package y7;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import p7.f;

/* compiled from: VideoDecoder.java */
/* loaded from: classes.dex */
public class b0<T> implements p7.i<T, Bitmap> {

    /* renamed from: d, reason: collision with root package name */
    public static final p7.f<Long> f16643d = p7.f.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new a());

    /* renamed from: e, reason: collision with root package name */
    public static final p7.f<Integer> f16644e = p7.f.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new b());

    /* renamed from: f, reason: collision with root package name */
    public static final e f16645f = new e();

    /* renamed from: a, reason: collision with root package name */
    public final f<T> f16646a;

    /* renamed from: b, reason: collision with root package name */
    public final s7.e f16647b;

    /* renamed from: c, reason: collision with root package name */
    public final e f16648c;

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public class a implements f.b<Long> {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f16649a = ByteBuffer.allocate(8);

        @Override // p7.f.b
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(byte[] bArr, Long l10, MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f16649a) {
                this.f16649a.position(0);
                messageDigest.update(this.f16649a.putLong(l10.longValue()).array());
            }
        }
    }

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public class b implements f.b<Integer> {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f16650a = ByteBuffer.allocate(4);

        @Override // p7.f.b
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f16650a) {
                this.f16650a.position(0);
                messageDigest.update(this.f16650a.putInt(num.intValue()).array());
            }
        }
    }

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public static final class c implements f<AssetFileDescriptor> {
        public c() {
        }

        @Override // y7.b0.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }

        public /* synthetic */ c(a aVar) {
            this();
        }
    }

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public static final class d implements f<ByteBuffer> {

        /* compiled from: VideoDecoder.java */
        /* loaded from: classes.dex */
        public class a extends MediaDataSource {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ ByteBuffer f16651f;

            public a(ByteBuffer byteBuffer) {
                this.f16651f = byteBuffer;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // android.media.MediaDataSource
            public long getSize() {
                return this.f16651f.limit();
            }

            @Override // android.media.MediaDataSource
            public int readAt(long j10, byte[] bArr, int i10, int i11) {
                if (j10 >= this.f16651f.limit()) {
                    return -1;
                }
                this.f16651f.position((int) j10);
                int min = Math.min(i11, this.f16651f.remaining());
                this.f16651f.get(bArr, i10, min);
                return min;
            }
        }

        @Override // y7.b0.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(new a(byteBuffer));
        }
    }

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public static class e {
        public MediaMetadataRetriever a() {
            return new MediaMetadataRetriever();
        }
    }

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public interface f<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t10);
    }

    /* compiled from: VideoDecoder.java */
    /* loaded from: classes.dex */
    public static final class g implements f<ParcelFileDescriptor> {
        @Override // y7.b0.f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    public b0(s7.e eVar, f<T> fVar) {
        this(eVar, fVar, f16645f);
    }

    public static p7.i<AssetFileDescriptor, Bitmap> c(s7.e eVar) {
        return new b0(eVar, new c(null));
    }

    public static p7.i<ByteBuffer, Bitmap> d(s7.e eVar) {
        return new b0(eVar, new d());
    }

    public static Bitmap e(MediaMetadataRetriever mediaMetadataRetriever, long j10, int i10, int i11, int i12, l lVar) {
        Bitmap g10 = (Build.VERSION.SDK_INT < 27 || i11 == Integer.MIN_VALUE || i12 == Integer.MIN_VALUE || lVar == l.f16669f) ? null : g(mediaMetadataRetriever, j10, i10, i11, i12, lVar);
        return g10 == null ? f(mediaMetadataRetriever, j10, i10) : g10;
    }

    public static Bitmap f(MediaMetadataRetriever mediaMetadataRetriever, long j10, int i10) {
        return mediaMetadataRetriever.getFrameAtTime(j10, i10);
    }

    @TargetApi(27)
    public static Bitmap g(MediaMetadataRetriever mediaMetadataRetriever, long j10, int i10, int i11, int i12, l lVar) {
        try {
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 == 90 || parseInt3 == 270) {
                parseInt2 = parseInt;
                parseInt = parseInt2;
            }
            float b10 = lVar.b(parseInt, parseInt2, i11, i12);
            return mediaMetadataRetriever.getScaledFrameAtTime(j10, i10, Math.round(parseInt * b10), Math.round(b10 * parseInt2));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static p7.i<ParcelFileDescriptor, Bitmap> h(s7.e eVar) {
        return new b0(eVar, new g());
    }

    @Override // p7.i
    public boolean a(T t10, p7.g gVar) {
        return true;
    }

    @Override // p7.i
    public r7.u<Bitmap> b(T t10, int i10, int i11, p7.g gVar) throws IOException {
        long longValue = ((Long) gVar.c(f16643d)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
        Integer num = (Integer) gVar.c(f16644e);
        if (num == null) {
            num = 2;
        }
        l lVar = (l) gVar.c(l.f16671h);
        if (lVar == null) {
            lVar = l.f16670g;
        }
        l lVar2 = lVar;
        MediaMetadataRetriever a10 = this.f16648c.a();
        try {
            try {
                this.f16646a.a(a10, t10);
                Bitmap e10 = e(a10, longValue, num.intValue(), i10, i11, lVar2);
                a10.release();
                return y7.e.e(e10, this.f16647b);
            } catch (RuntimeException e11) {
                throw new IOException(e11);
            }
        } catch (Throwable th) {
            a10.release();
            throw th;
        }
    }

    public b0(s7.e eVar, f<T> fVar, e eVar2) {
        this.f16647b = eVar;
        this.f16646a = fVar;
        this.f16648c = eVar2;
    }
}
