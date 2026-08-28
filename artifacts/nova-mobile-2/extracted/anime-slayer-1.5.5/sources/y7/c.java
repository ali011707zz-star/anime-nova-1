package y7;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: BitmapEncoder.java */
/* loaded from: classes.dex */
public class c implements p7.j<Bitmap> {

    /* renamed from: b, reason: collision with root package name */
    public static final p7.f<Integer> f16653b = p7.f.f("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: c, reason: collision with root package name */
    public static final p7.f<Bitmap.CompressFormat> f16654c = p7.f.e("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    /* renamed from: a, reason: collision with root package name */
    public final s7.b f16655a;

    public c(s7.b bVar) {
        this.f16655a = bVar;
    }

    @Override // p7.j
    public p7.c a(p7.g gVar) {
        return p7.c.TRANSFORMED;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x005d, code lost:
    
        if (r6 == null) goto L24;
     */
    @Override // p7.d
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean b(r7.u<Bitmap> uVar, File file, p7.g gVar) {
        FileOutputStream fileOutputStream;
        Bitmap bitmap = uVar.get();
        Bitmap.CompressFormat d10 = d(bitmap, gVar);
        m8.b.c("encode: [%dx%d] %s", Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()), d10);
        try {
            long b10 = l8.f.b();
            int intValue = ((Integer) gVar.c(f16653b)).intValue();
            boolean z10 = false;
            OutputStream outputStream = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                outputStream = this.f16655a != null ? new com.bumptech.glide.load.data.c(fileOutputStream, this.f16655a) : fileOutputStream;
                bitmap.compress(d10, intValue, outputStream);
                outputStream.close();
                z10 = true;
            } catch (IOException unused2) {
                outputStream = fileOutputStream;
                Log.isLoggable("BitmapEncoder", 3);
            } catch (Throwable th2) {
                th = th2;
                outputStream = fileOutputStream;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
            try {
                outputStream.close();
            } catch (IOException unused4) {
                if (Log.isLoggable("BitmapEncoder", 2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Compressed with type: ");
                    sb2.append(d10);
                    sb2.append(" of size ");
                    sb2.append(l8.k.h(bitmap));
                    sb2.append(" in ");
                    sb2.append(l8.f.a(b10));
                    sb2.append(", options format: ");
                    sb2.append(gVar.c(f16654c));
                    sb2.append(", hasAlpha: ");
                    sb2.append(bitmap.hasAlpha());
                }
                return z10;
            }
        } finally {
            m8.b.d();
        }
    }

    public final Bitmap.CompressFormat d(Bitmap bitmap, p7.g gVar) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) gVar.c(f16654c);
        if (compressFormat != null) {
            return compressFormat;
        }
        if (bitmap.hasAlpha()) {
            return Bitmap.CompressFormat.PNG;
        }
        return Bitmap.CompressFormat.JPEG;
    }
}
