package t8;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.Build;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import jc.l;
import okhttp3.internal.http2.Http2;

/* compiled from: ImageUtil.kt */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final f f14096a = new f();

    public final int a(BitmapFactory.Options options, int i10, int i11) {
        int i12 = options.outHeight;
        int i13 = options.outWidth;
        if (i12 <= i11 && i13 <= i10) {
            return 1;
        }
        int i14 = 2;
        int i15 = i12 / 2;
        int i16 = i13 / 2;
        while (i15 / i14 >= i11 && i16 / i14 >= i10) {
            i14 *= 2;
        }
        return i14;
    }

    public final boolean b(Bitmap bitmap, BitmapFactory.Options options) {
        if (Build.VERSION.SDK_INT >= 19) {
            int i10 = options.outWidth;
            int i11 = options.inSampleSize;
            int i12 = (i10 / i11) * (options.outHeight / i11);
            Bitmap.Config config = bitmap.getConfig();
            l.b(config, "candidate.config");
            if (i12 * e(config) > bitmap.getAllocationByteCount()) {
                return false;
            }
        } else if (bitmap.getWidth() != options.outWidth || bitmap.getHeight() != options.outHeight || options.inSampleSize != 1) {
            return false;
        }
        return true;
    }

    public final File c(File file, float f10, float f11, Bitmap.CompressFormat compressFormat, int i10, String str) throws IOException {
        FileOutputStream fileOutputStream;
        l.g(file, "imageFile");
        l.g(compressFormat, "compressFormat");
        l.g(str, "destinationPath");
        File parentFile = new File(str).getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(str);
        } catch (Throwable th) {
            th = th;
        }
        try {
            Bitmap d10 = d(file, f10, f11);
            if (d10 == null) {
                l.p();
            }
            d10.compress(compressFormat, i10, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return new File(str);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                fileOutputStream2.flush();
                fileOutputStream2.close();
            }
            throw th;
        }
    }

    public final Bitmap d(File file, float f10, float f11) throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        int i10 = options.outHeight;
        int i11 = options.outWidth;
        float f12 = i11;
        float f13 = i10;
        float f14 = f12 / f13;
        float f15 = f10 / f11;
        if (f13 > f11 || f12 > f10) {
            if (f14 < f15) {
                i11 = (int) ((f11 / f13) * f12);
                i10 = (int) f11;
            } else {
                if (f14 > f15) {
                    f11 = (f10 / f12) * f13;
                }
                i10 = (int) f11;
                i11 = (int) f10;
            }
        }
        options.inSampleSize = a(options, i11, i10);
        options.inJustDecodeBounds = false;
        if (decodeFile != null && b(decodeFile, options)) {
            options.inMutable = true;
            options.inBitmap = decodeFile;
        }
        options.inTempStorage = new byte[Http2.INITIAL_MAX_FRAME_SIZE];
        try {
            decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
        }
        Bitmap bitmap = null;
        try {
            bitmap = Bitmap.createBitmap(i11, i10, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError e11) {
            e11.printStackTrace();
        }
        Bitmap bitmap2 = bitmap;
        float f16 = i11;
        float f17 = f16 / options.outWidth;
        float f18 = i10;
        float f19 = f18 / options.outHeight;
        float f20 = f16 / 2.0f;
        float f21 = f18 / 2.0f;
        Matrix matrix = new Matrix();
        matrix.setScale(f17, f19, f20, f21);
        if (bitmap2 == null) {
            l.p();
        }
        Canvas canvas = new Canvas(bitmap2);
        canvas.setMatrix(matrix);
        if (decodeFile == null) {
            l.p();
        }
        canvas.drawBitmap(decodeFile, f20 - (decodeFile.getWidth() / 2), f21 - (decodeFile.getHeight() / 2), new Paint(2));
        decodeFile.recycle();
        return Bitmap.createBitmap(bitmap2, 0, 0, bitmap2.getWidth(), bitmap2.getHeight(), new Matrix(), true);
    }

    public final int e(Bitmap.Config config) {
        int i10 = e.f14095a[config.ordinal()];
        if (i10 != 1) {
            return (i10 == 2 || i10 == 3) ? 2 : 1;
        }
        return 4;
    }
}
