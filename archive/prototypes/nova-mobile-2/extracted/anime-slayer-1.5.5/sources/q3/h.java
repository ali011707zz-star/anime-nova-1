package q3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.provider.Settings;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import g3.s;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal<PathMeasure> f12458a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal<Path> f12459b = new b();

    /* renamed from: c, reason: collision with root package name */
    public static final ThreadLocal<Path> f12460c = new c();

    /* renamed from: d, reason: collision with root package name */
    public static final ThreadLocal<float[]> f12461d = new d();

    /* renamed from: e, reason: collision with root package name */
    public static final float f12462e = (float) (Math.sqrt(2.0d) / 2.0d);

    /* renamed from: f, reason: collision with root package name */
    public static float f12463f = -1.0f;

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    public class a extends ThreadLocal<PathMeasure> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PathMeasure initialValue() {
            return new PathMeasure();
        }
    }

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    public class b extends ThreadLocal<Path> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Path initialValue() {
            return new Path();
        }
    }

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    public class c extends ThreadLocal<Path> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Path initialValue() {
            return new Path();
        }
    }

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    public class d extends ThreadLocal<float[]> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public float[] initialValue() {
            return new float[4];
        }
    }

    public static void a(Path path, float f10, float f11, float f12) {
        e3.c.a("applyTrimPathIfNeeded");
        PathMeasure pathMeasure = f12458a.get();
        Path path2 = f12459b.get();
        Path path3 = f12460c.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f10 == 1.0f && f11 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            e3.c.b("applyTrimPathIfNeeded");
            return;
        }
        if (length >= 1.0f && Math.abs((f11 - f10) - 1.0f) >= 0.01d) {
            float f13 = f10 * length;
            float f14 = f11 * length;
            float f15 = f12 * length;
            float min = Math.min(f13, f14) + f15;
            float max = Math.max(f13, f14) + f15;
            if (min >= length && max >= length) {
                min = g.g(min, length);
                max = g.g(max, length);
            }
            if (min < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                min = g.g(min, length);
            }
            if (max < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                max = g.g(max, length);
            }
            if (min == max) {
                path.reset();
                e3.c.b("applyTrimPathIfNeeded");
                return;
            }
            if (min >= max) {
                min -= length;
            }
            path2.reset();
            pathMeasure.getSegment(min, max, path2, true);
            if (max > length) {
                path3.reset();
                pathMeasure.getSegment(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, max % length, path3, true);
                path2.addPath(path3);
            } else if (min < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                path3.reset();
                pathMeasure.getSegment(min + length, length, path3, true);
                path2.addPath(path3);
            }
            path.set(path2);
            e3.c.b("applyTrimPathIfNeeded");
            return;
        }
        e3.c.b("applyTrimPathIfNeeded");
    }

    public static void b(Path path, s sVar) {
        if (sVar == null || sVar.j()) {
            return;
        }
        a(path, ((h3.d) sVar.h()).p() / 100.0f, ((h3.d) sVar.e()).p() / 100.0f, ((h3.d) sVar.f()).p() / 360.0f);
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static Path d(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 != null && pointF4 != null && (pointF3.length() != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || pointF4.length() != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD)) {
            float f10 = pointF3.x + pointF.x;
            float f11 = pointF.y + pointF3.y;
            float f12 = pointF2.x;
            float f13 = f12 + pointF4.x;
            float f14 = pointF2.y;
            path.cubicTo(f10, f11, f13, f14 + pointF4.y, f12, f14);
        } else {
            path.lineTo(pointF2.x, pointF2.y);
        }
        return path;
    }

    public static float e() {
        if (f12463f == -1.0f) {
            f12463f = Resources.getSystem().getDisplayMetrics().density;
        }
        return f12463f;
    }

    public static float f(Context context) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
        }
        return Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static float g(Matrix matrix) {
        float[] fArr = f12461d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f10 = f12462e;
        fArr[2] = f10;
        fArr[3] = f10;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static boolean h(Matrix matrix) {
        float[] fArr = f12461d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    public static int i(float f10, float f11, float f12, float f13) {
        int i10 = f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? (int) (527 * f10) : 17;
        if (f11 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            i10 = (int) (i10 * 31 * f11);
        }
        if (f12 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            i10 = (int) (i10 * 31 * f12);
        }
        return f13 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? (int) (i10 * 31 * f13) : i10;
    }

    public static boolean j(int i10, int i11, int i12, int i13, int i14, int i15) {
        if (i10 < i13) {
            return false;
        }
        if (i10 > i13) {
            return true;
        }
        if (i11 < i14) {
            return false;
        }
        return i11 > i14 || i12 >= i15;
    }

    public static boolean k(Throwable th) {
        return (th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException);
    }

    public static Bitmap l(Bitmap bitmap, int i10, int i11) {
        if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i10, i11, true);
        bitmap.recycle();
        return createScaledBitmap;
    }

    public static void m(Canvas canvas, RectF rectF, Paint paint) {
        n(canvas, rectF, paint, 31);
    }

    public static void n(Canvas canvas, RectF rectF, Paint paint, int i10) {
        e3.c.a("Utils#saveLayer");
        if (Build.VERSION.SDK_INT < 23) {
            canvas.saveLayer(rectF, paint, i10);
        } else {
            canvas.saveLayer(rectF, paint);
        }
        e3.c.b("Utils#saveLayer");
    }
}
