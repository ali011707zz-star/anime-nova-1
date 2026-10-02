package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;

/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f1843k = PorterDuff.Mode.SRC_IN;

    /* renamed from: a, reason: collision with root package name */
    public int f1844a;

    /* renamed from: b, reason: collision with root package name */
    public Object f1845b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f1846c;

    /* renamed from: d, reason: collision with root package name */
    public Parcelable f1847d;

    /* renamed from: e, reason: collision with root package name */
    public int f1848e;

    /* renamed from: f, reason: collision with root package name */
    public int f1849f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f1850g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f1851h;

    /* renamed from: i, reason: collision with root package name */
    public String f1852i;

    /* renamed from: j, reason: collision with root package name */
    public String f1853j;

    public IconCompat() {
        this.f1844a = -1;
        this.f1846c = null;
        this.f1847d = null;
        this.f1848e = 0;
        this.f1849f = 0;
        this.f1850g = null;
        this.f1851h = f1843k;
        this.f1852i = null;
    }

    public static Bitmap a(Bitmap bitmap, boolean z10) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f10 = min;
        float f11 = 0.5f * f10;
        float f12 = 0.9166667f * f11;
        if (z10) {
            float f13 = 0.010416667f * f10;
            paint.setColor(0);
            paint.setShadowLayer(f13, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f10 * 0.020833334f, 1023410176);
            canvas.drawCircle(f11, f11, f12, paint);
            paint.setShadowLayer(f13, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 503316480);
            canvas.drawCircle(f11, f11, f12, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2, (-(bitmap.getHeight() - min)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f11, f11, f12, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    public static IconCompat b(Bitmap bitmap) {
        if (bitmap != null) {
            IconCompat iconCompat = new IconCompat(1);
            iconCompat.f1845b = bitmap;
            return iconCompat;
        }
        throw new IllegalArgumentException("Bitmap must not be null.");
    }

    public static IconCompat c(Resources resources, String str, int i10) {
        if (str == null) {
            throw new IllegalArgumentException("Package must not be null.");
        }
        if (i10 != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f1848e = i10;
            if (resources != null) {
                try {
                    iconCompat.f1845b = resources.getResourceName(i10);
                } catch (Resources.NotFoundException unused) {
                    throw new IllegalArgumentException("Icon resource cannot be found");
                }
            } else {
                iconCompat.f1845b = str;
            }
            iconCompat.f1853j = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Drawable resource ID must not be 0");
    }

    public static int f(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return 0;
        }
    }

    public static String h(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResPackage();
        }
        try {
            return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    public static int j(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getType();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to get icon type ");
            sb2.append(icon);
            return -1;
        } catch (NoSuchMethodException unused2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unable to get icon type ");
            sb3.append(icon);
            return -1;
        } catch (InvocationTargetException unused3) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Unable to get icon type ");
            sb4.append(icon);
            return -1;
        }
    }

    public static Uri l(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getUri();
        }
        try {
            return (Uri) icon.getClass().getMethod("getUri", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    public static String r(int i10) {
        switch (i10) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    public Bitmap d() {
        int i10 = this.f1844a;
        if (i10 == -1 && Build.VERSION.SDK_INT >= 23) {
            Object obj = this.f1845b;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i10 == 1) {
            return (Bitmap) this.f1845b;
        }
        if (i10 == 5) {
            return a((Bitmap) this.f1845b, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    public int e() {
        int i10 = this.f1844a;
        if (i10 == -1 && Build.VERSION.SDK_INT >= 23) {
            return f((Icon) this.f1845b);
        }
        if (i10 == 2) {
            return this.f1848e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public String g() {
        int i10 = this.f1844a;
        if (i10 == -1 && Build.VERSION.SDK_INT >= 23) {
            return h((Icon) this.f1845b);
        }
        if (i10 == 2) {
            if (TextUtils.isEmpty(this.f1853j)) {
                return ((String) this.f1845b).split(":", -1)[0];
            }
            return this.f1853j;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public int i() {
        int i10 = this.f1844a;
        return (i10 != -1 || Build.VERSION.SDK_INT < 23) ? i10 : j((Icon) this.f1845b);
    }

    public Uri k() {
        int i10 = this.f1844a;
        if (i10 == -1 && Build.VERSION.SDK_INT >= 23) {
            return l((Icon) this.f1845b);
        }
        if (i10 != 4 && i10 != 6) {
            throw new IllegalStateException("called getUri() on " + this);
        }
        return Uri.parse((String) this.f1845b);
    }

    public InputStream m(Context context) {
        Uri k10 = k();
        String scheme = k10.getScheme();
        if (!"content".equals(scheme) && !"file".equals(scheme)) {
            try {
                return new FileInputStream(new File((String) this.f1845b));
            } catch (FileNotFoundException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unable to load image from path: ");
                sb2.append(k10);
                return null;
            }
        }
        try {
            return context.getContentResolver().openInputStream(k10);
        } catch (Exception unused2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unable to load image from URI: ");
            sb3.append(k10);
            return null;
        }
    }

    public void n() {
        this.f1851h = PorterDuff.Mode.valueOf(this.f1852i);
        switch (this.f1844a) {
            case -1:
                Parcelable parcelable = this.f1847d;
                if (parcelable != null) {
                    this.f1845b = parcelable;
                    return;
                }
                throw new IllegalArgumentException("Invalid icon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f1847d;
                if (parcelable2 != null) {
                    this.f1845b = parcelable2;
                    return;
                }
                byte[] bArr = this.f1846c;
                this.f1845b = bArr;
                this.f1844a = 3;
                this.f1848e = 0;
                this.f1849f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.f1846c, Charset.forName(HTTP.UTF_16));
                this.f1845b = str;
                if (this.f1844a == 2 && this.f1853j == null) {
                    this.f1853j = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f1845b = this.f1846c;
                return;
        }
    }

    public void o(boolean z10) {
        this.f1852i = this.f1851h.name();
        switch (this.f1844a) {
            case -1:
                if (!z10) {
                    this.f1847d = (Parcelable) this.f1845b;
                    return;
                }
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (z10) {
                    Bitmap bitmap = (Bitmap) this.f1845b;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    this.f1846c = byteArrayOutputStream.toByteArray();
                    return;
                }
                this.f1847d = (Parcelable) this.f1845b;
                return;
            case 2:
                this.f1846c = ((String) this.f1845b).getBytes(Charset.forName(HTTP.UTF_16));
                return;
            case 3:
                this.f1846c = (byte[]) this.f1845b;
                return;
            case 4:
            case 6:
                this.f1846c = this.f1845b.toString().getBytes(Charset.forName(HTTP.UTF_16));
                return;
        }
    }

    @Deprecated
    public Icon p() {
        return q(null);
    }

    public Icon q(Context context) {
        Icon createWithBitmap;
        switch (this.f1844a) {
            case -1:
                return (Icon) this.f1845b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                createWithBitmap = Icon.createWithBitmap((Bitmap) this.f1845b);
                break;
            case 2:
                createWithBitmap = Icon.createWithResource(g(), this.f1848e);
                break;
            case 3:
                createWithBitmap = Icon.createWithData((byte[]) this.f1845b, this.f1848e, this.f1849f);
                break;
            case 4:
                createWithBitmap = Icon.createWithContentUri((String) this.f1845b);
                break;
            case 5:
                if (Build.VERSION.SDK_INT >= 26) {
                    createWithBitmap = Icon.createWithAdaptiveBitmap((Bitmap) this.f1845b);
                    break;
                } else {
                    createWithBitmap = Icon.createWithBitmap(a((Bitmap) this.f1845b, false));
                    break;
                }
            case 6:
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 30) {
                    createWithBitmap = Icon.createWithAdaptiveBitmapContentUri(k());
                    break;
                } else if (context != null) {
                    InputStream m10 = m(context);
                    if (m10 == null) {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + k());
                    }
                    if (i10 >= 26) {
                        createWithBitmap = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(m10));
                        break;
                    } else {
                        createWithBitmap = Icon.createWithBitmap(a(BitmapFactory.decodeStream(m10), false));
                        break;
                    }
                } else {
                    throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + k());
                }
        }
        ColorStateList colorStateList = this.f1850g;
        if (colorStateList != null) {
            createWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f1851h;
        if (mode != f1843k) {
            createWithBitmap.setTintMode(mode);
        }
        return createWithBitmap;
    }

    public String toString() {
        if (this.f1844a == -1) {
            return String.valueOf(this.f1845b);
        }
        StringBuilder sb2 = new StringBuilder("Icon(typ=");
        sb2.append(r(this.f1844a));
        switch (this.f1844a) {
            case 1:
            case 5:
                sb2.append(" size=");
                sb2.append(((Bitmap) this.f1845b).getWidth());
                sb2.append("x");
                sb2.append(((Bitmap) this.f1845b).getHeight());
                break;
            case 2:
                sb2.append(" pkg=");
                sb2.append(this.f1853j);
                sb2.append(" id=");
                sb2.append(String.format("0x%08x", Integer.valueOf(e())));
                break;
            case 3:
                sb2.append(" len=");
                sb2.append(this.f1848e);
                if (this.f1849f != 0) {
                    sb2.append(" off=");
                    sb2.append(this.f1849f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb2.append(" uri=");
                sb2.append(this.f1845b);
                break;
        }
        if (this.f1850g != null) {
            sb2.append(" tint=");
            sb2.append(this.f1850g);
        }
        if (this.f1851h != f1843k) {
            sb2.append(" mode=");
            sb2.append(this.f1851h);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public IconCompat(int i10) {
        this.f1844a = -1;
        this.f1846c = null;
        this.f1847d = null;
        this.f1848e = 0;
        this.f1849f = 0;
        this.f1850g = null;
        this.f1851h = f1843k;
        this.f1852i = null;
        this.f1844a = i10;
    }
}
