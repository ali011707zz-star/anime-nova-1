package kb;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import hb.c;
import jb.d;
import jb.g;

/* compiled from: TransformImageView.java */
/* loaded from: classes.dex */
public class b extends AppCompatImageView {

    /* renamed from: f, reason: collision with root package name */
    public final float[] f10149f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f10150g;

    /* renamed from: h, reason: collision with root package name */
    public final float[] f10151h;

    /* renamed from: i, reason: collision with root package name */
    public Matrix f10152i;

    /* renamed from: j, reason: collision with root package name */
    public int f10153j;

    /* renamed from: k, reason: collision with root package name */
    public int f10154k;

    /* renamed from: l, reason: collision with root package name */
    public InterfaceC0217b f10155l;

    /* renamed from: m, reason: collision with root package name */
    public float[] f10156m;

    /* renamed from: n, reason: collision with root package name */
    public float[] f10157n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f10158o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f10159p;

    /* renamed from: q, reason: collision with root package name */
    public int f10160q;

    /* renamed from: r, reason: collision with root package name */
    public String f10161r;

    /* renamed from: s, reason: collision with root package name */
    public String f10162s;

    /* renamed from: t, reason: collision with root package name */
    public c f10163t;

    /* compiled from: TransformImageView.java */
    /* loaded from: classes.dex */
    public class a implements gb.b {
        public a() {
        }

        @Override // gb.b
        public void a(Bitmap bitmap, c cVar, String str, String str2) {
            b.this.f10161r = str;
            b.this.f10162s = str2;
            b.this.f10163t = cVar;
            b bVar = b.this;
            bVar.f10158o = true;
            bVar.setImageBitmap(bitmap);
        }

        @Override // gb.b
        public void onFailure(Exception exc) {
            InterfaceC0217b interfaceC0217b = b.this.f10155l;
            if (interfaceC0217b != null) {
                interfaceC0217b.a(exc);
            }
        }
    }

    /* compiled from: TransformImageView.java */
    /* renamed from: kb.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0217b {
        void a(Exception exc);

        void b(float f10);

        void c(float f10);

        void d();
    }

    public b(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public float f(Matrix matrix) {
        return (float) (-(Math.atan2(h(matrix, 1), h(matrix, 0)) * 57.29577951308232d));
    }

    public float g(Matrix matrix) {
        return (float) Math.sqrt(Math.pow(h(matrix, 0), 2.0d) + Math.pow(h(matrix, 3), 2.0d));
    }

    public float getCurrentAngle() {
        return f(this.f10152i);
    }

    public float getCurrentScale() {
        return g(this.f10152i);
    }

    public c getExifInfo() {
        return this.f10163t;
    }

    public String getImageInputPath() {
        return this.f10161r;
    }

    public String getImageOutputPath() {
        return this.f10162s;
    }

    public int getMaxBitmapSize() {
        if (this.f10160q <= 0) {
            this.f10160q = jb.a.b(getContext());
        }
        return this.f10160q;
    }

    public Bitmap getViewBitmap() {
        if (getDrawable() == null || !(getDrawable() instanceof d)) {
            return null;
        }
        return ((d) getDrawable()).a();
    }

    public float h(Matrix matrix, int i10) {
        matrix.getValues(this.f10151h);
        return this.f10151h[i10];
    }

    public void i() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public void j() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        String.format("Image size: [%d:%d]", Integer.valueOf((int) intrinsicWidth), Integer.valueOf((int) intrinsicHeight));
        RectF rectF = new RectF(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, intrinsicWidth, intrinsicHeight);
        this.f10156m = g.b(rectF);
        this.f10157n = g.a(rectF);
        this.f10159p = true;
        InterfaceC0217b interfaceC0217b = this.f10155l;
        if (interfaceC0217b != null) {
            interfaceC0217b.d();
        }
    }

    public void k(float f10, float f11, float f12) {
        if (f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f10152i.postRotate(f10, f11, f12);
            setImageMatrix(this.f10152i);
            InterfaceC0217b interfaceC0217b = this.f10155l;
            if (interfaceC0217b != null) {
                interfaceC0217b.c(f(this.f10152i));
            }
        }
    }

    public void l(float f10, float f11, float f12) {
        if (f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f10152i.postScale(f10, f10, f11, f12);
            setImageMatrix(this.f10152i);
            InterfaceC0217b interfaceC0217b = this.f10155l;
            if (interfaceC0217b != null) {
                interfaceC0217b.b(g(this.f10152i));
            }
        }
    }

    public void m(float f10, float f11) {
        if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f11 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            return;
        }
        this.f10152i.postTranslate(f10, f11);
        setImageMatrix(this.f10152i);
    }

    public void n(Uri uri, Uri uri2) throws Exception {
        int maxBitmapSize = getMaxBitmapSize();
        jb.a.d(getContext(), uri, uri2, maxBitmapSize, maxBitmapSize, new a());
    }

    public final void o() {
        this.f10152i.mapPoints(this.f10149f, this.f10156m);
        this.f10152i.mapPoints(this.f10150g, this.f10157n);
    }

    @Override // android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10 || (this.f10158o && !this.f10159p)) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            this.f10153j = width - paddingLeft;
            this.f10154k = height - paddingTop;
            j();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        setImageDrawable(new d(bitmap));
    }

    @Override // android.widget.ImageView
    public void setImageMatrix(Matrix matrix) {
        super.setImageMatrix(matrix);
        this.f10152i.set(matrix);
        o();
    }

    public void setMaxBitmapSize(int i10) {
        this.f10160q = i10;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.MATRIX) {
            super.setScaleType(scaleType);
        }
    }

    public void setTransformImageListener(InterfaceC0217b interfaceC0217b) {
        this.f10155l = interfaceC0217b;
    }

    public b(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10149f = new float[8];
        this.f10150g = new float[2];
        this.f10151h = new float[9];
        this.f10152i = new Matrix();
        this.f10158o = false;
        this.f10159p = false;
        this.f10160q = 0;
        i();
    }
}
