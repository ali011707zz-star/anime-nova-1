package y7;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.Log;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: TransformationUtils.java */
/* loaded from: classes.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public static final Paint f16723a = new Paint(6);

    /* renamed from: b, reason: collision with root package name */
    public static final Paint f16724b = new Paint(7);

    /* renamed from: c, reason: collision with root package name */
    public static final Paint f16725c;

    /* renamed from: d, reason: collision with root package name */
    public static final Set<String> f16726d;

    /* renamed from: e, reason: collision with root package name */
    public static final Lock f16727e;

    /* compiled from: TransformationUtils.java */
    /* loaded from: classes.dex */
    public static final class a implements Lock {
        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j10, TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f16726d = hashSet;
        f16727e = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new a();
        Paint paint = new Paint(7);
        f16725c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    public static void a(Bitmap bitmap, Bitmap bitmap2, Matrix matrix) {
        Lock lock = f16727e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f16723a);
            e(canvas);
            lock.unlock();
        } catch (Throwable th) {
            f16727e.unlock();
            throw th;
        }
    }

    public static Bitmap b(s7.e eVar, Bitmap bitmap, int i10, int i11) {
        float width;
        float height;
        if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        int width2 = bitmap.getWidth() * i11;
        int height2 = bitmap.getHeight() * i10;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (width2 > height2) {
            width = i11 / bitmap.getHeight();
            f10 = (i10 - (bitmap.getWidth() * width)) * 0.5f;
            height = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        } else {
            width = i10 / bitmap.getWidth();
            height = (i11 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (f10 + 0.5f), (int) (height + 0.5f));
        Bitmap c10 = eVar.c(i10, i11, k(bitmap));
        o(bitmap, c10);
        a(bitmap, c10, matrix);
        return c10;
    }

    public static Bitmap c(s7.e eVar, Bitmap bitmap, int i10, int i11) {
        return (bitmap.getWidth() > i10 || bitmap.getHeight() > i11) ? f(eVar, bitmap, i10, i11) : bitmap;
    }

    public static Bitmap d(s7.e eVar, Bitmap bitmap, int i10, int i11) {
        int min = Math.min(i10, i11);
        float f10 = min;
        float f11 = f10 / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float max = Math.max(f10 / width, f10 / height);
        float f12 = width * max;
        float f13 = max * height;
        float f14 = (f10 - f12) / 2.0f;
        float f15 = (f10 - f13) / 2.0f;
        RectF rectF = new RectF(f14, f15, f12 + f14, f13 + f15);
        Bitmap g10 = g(eVar, bitmap);
        Bitmap c10 = eVar.c(min, min, h(bitmap));
        c10.setHasAlpha(true);
        Lock lock = f16727e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(c10);
            canvas.drawCircle(f11, f11, f11, f16724b);
            canvas.drawBitmap(g10, (Rect) null, rectF, f16725c);
            e(canvas);
            lock.unlock();
            if (!g10.equals(bitmap)) {
                eVar.d(g10);
            }
            return c10;
        } catch (Throwable th) {
            f16727e.unlock();
            throw th;
        }
    }

    public static void e(Canvas canvas) {
        canvas.setBitmap(null);
    }

    public static Bitmap f(s7.e eVar, Bitmap bitmap, int i10, int i11) {
        if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
            return bitmap;
        }
        float min = Math.min(i10 / bitmap.getWidth(), i11 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            return bitmap;
        }
        Bitmap c10 = eVar.c((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), k(bitmap));
        o(bitmap, c10);
        if (Log.isLoggable("TransformationUtils", 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("request: ");
            sb2.append(i10);
            sb2.append("x");
            sb2.append(i11);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("toFit:   ");
            sb3.append(bitmap.getWidth());
            sb3.append("x");
            sb3.append(bitmap.getHeight());
            StringBuilder sb4 = new StringBuilder();
            sb4.append("toReuse: ");
            sb4.append(c10.getWidth());
            sb4.append("x");
            sb4.append(c10.getHeight());
            StringBuilder sb5 = new StringBuilder();
            sb5.append("minPct:   ");
            sb5.append(min);
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        a(bitmap, c10, matrix);
        return c10;
    }

    public static Bitmap g(s7.e eVar, Bitmap bitmap) {
        Bitmap.Config h10 = h(bitmap);
        if (h10.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap c10 = eVar.c(bitmap.getWidth(), bitmap.getHeight(), h10);
        new Canvas(c10).drawBitmap(bitmap, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (Paint) null);
        return c10;
    }

    public static Bitmap.Config h(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) {
            return Bitmap.Config.RGBA_F16;
        }
        return Bitmap.Config.ARGB_8888;
    }

    public static Lock i() {
        return f16727e;
    }

    public static int j(int i10) {
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

    public static Bitmap.Config k(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    public static void l(int i10, Matrix matrix) {
        switch (i10) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
    }

    public static boolean m(int i10) {
        switch (i10) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static Bitmap n(s7.e eVar, Bitmap bitmap, int i10) {
        if (!m(i10)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        l(i10, matrix);
        RectF rectF = new RectF(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap c10 = eVar.c(Math.round(rectF.width()), Math.round(rectF.height()), k(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        c10.setHasAlpha(bitmap.hasAlpha());
        a(bitmap, c10, matrix);
        return c10;
    }

    public static void o(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }
}
