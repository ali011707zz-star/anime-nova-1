package c8;

import com.bumptech.glide.load.ImageHeaderParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.internal.http2.Http2;
import r7.u;

/* compiled from: StreamGifDecoder.java */
/* loaded from: classes.dex */
public class j implements p7.i<InputStream, c> {

    /* renamed from: a, reason: collision with root package name */
    public final List<ImageHeaderParser> f3769a;

    /* renamed from: b, reason: collision with root package name */
    public final p7.i<ByteBuffer, c> f3770b;

    /* renamed from: c, reason: collision with root package name */
    public final s7.b f3771c;

    public j(List<ImageHeaderParser> list, p7.i<ByteBuffer, c> iVar, s7.b bVar) {
        this.f3769a = list;
        this.f3770b = iVar;
        this.f3771c = bVar;
    }

    public static byte[] e(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Http2.INITIAL_MAX_FRAME_SIZE);
        try {
            byte[] bArr = new byte[Http2.INITIAL_MAX_FRAME_SIZE];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // p7.i
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public u<c> b(InputStream inputStream, int i10, int i11, p7.g gVar) throws IOException {
        byte[] e10 = e(inputStream);
        if (e10 == null) {
            return null;
        }
        return this.f3770b.b(ByteBuffer.wrap(e10), i10, i11, gVar);
    }

    @Override // p7.i
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(InputStream inputStream, p7.g gVar) throws IOException {
        return !((Boolean) gVar.c(i.f3768b)).booleanValue() && com.bumptech.glide.load.a.e(this.f3769a, inputStream, this.f3771c) == ImageHeaderParser.ImageType.GIF;
    }
}
