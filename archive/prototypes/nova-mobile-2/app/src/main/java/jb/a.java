package jb;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.net.Uri;
import android.os.AsyncTask;
import android.view.WindowManager;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: BitmapLoadUtils.java */
/* loaded from: classes.dex */
public class a {
    public static int a(BitmapFactory.Options options, int i10, int i11) {
        int i12 = options.outHeight;
        int i13 = options.outWidth;
        int i14 = 1;
        if (i12 > i11 || i13 > i10) {
            while (true) {
                if (i12 / i14 <= i11 && i13 / i14 <= i10) {
                    break;
                }
                i14 *= 2;
            }
        }
        return i14;
    }

    public static int b(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point();
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getSize(point);
        }
        int sqrt = (int) Math.sqrt(Math.pow(point.x, 2.0d) + Math.pow(point.y, 2.0d));
        Canvas canvas = new Canvas();
        int min = Math.min(canvas.getMaximumBitmapWidth(), canvas.getMaximumBitmapHeight());
        if (min > 0) {
            sqrt = Math.min(sqrt, min);
        }
        int c10 = c.c();
        if (c10 > 0) {
            sqrt = Math.min(sqrt, c10);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("maxBitmapSize: ");
        sb2.append(sqrt);
        return sqrt;
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void d(Context context, Uri uri, Uri uri2, int i10, int i11, gb.b bVar) {
        new ib.b(context, uri, uri2, i10, i11, bVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static int e(int i10) {
        switch (i10) {
            case 3:
            case 4:
                return BaseTransientBottomBar.ANIMATION_FADE_DURATION;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    public static int f(int i10) {
        return (i10 == 2 || i10 == 7 || i10 == 4 || i10 == 5) ? -1 : 1;
    }

    public static int g(Context context, Uri uri) {
        int i10 = 0;
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                return 0;
            }
            i10 = new f(openInputStream).c();
            c(openInputStream);
            return i10;
        } catch (IOException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getExifOrientation: ");
            sb2.append(uri.toString());
            return i10;
        }
    }

    public static Bitmap h(Bitmap bitmap, Matrix matrix) {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            return !bitmap.sameAs(createBitmap) ? createBitmap : bitmap;
        } catch (OutOfMemoryError unused) {
            return bitmap;
        }
    }
}
