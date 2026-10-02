package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import fb.a;
import fb.b;
import fb.h;
import gb.d;
import jb.g;

/* loaded from: classes.dex */
public class OverlayView extends View {
    public float A;
    public int B;
    public int C;
    public int D;
    public int E;
    public d F;
    public boolean G;

    /* renamed from: f, reason: collision with root package name */
    public final RectF f5131f;

    /* renamed from: g, reason: collision with root package name */
    public final RectF f5132g;

    /* renamed from: h, reason: collision with root package name */
    public int f5133h;

    /* renamed from: i, reason: collision with root package name */
    public int f5134i;

    /* renamed from: j, reason: collision with root package name */
    public float[] f5135j;

    /* renamed from: k, reason: collision with root package name */
    public float[] f5136k;

    /* renamed from: l, reason: collision with root package name */
    public int f5137l;

    /* renamed from: m, reason: collision with root package name */
    public int f5138m;

    /* renamed from: n, reason: collision with root package name */
    public float f5139n;

    /* renamed from: o, reason: collision with root package name */
    public float[] f5140o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f5141p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5142q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f5143r;

    /* renamed from: s, reason: collision with root package name */
    public int f5144s;

    /* renamed from: t, reason: collision with root package name */
    public Path f5145t;

    /* renamed from: u, reason: collision with root package name */
    public Paint f5146u;

    /* renamed from: v, reason: collision with root package name */
    public Paint f5147v;

    /* renamed from: w, reason: collision with root package name */
    public Paint f5148w;

    /* renamed from: x, reason: collision with root package name */
    public Paint f5149x;

    /* renamed from: y, reason: collision with root package name */
    public int f5150y;

    /* renamed from: z, reason: collision with root package name */
    public float f5151z;

    public OverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void a(Canvas canvas) {
        if (this.f5142q) {
            if (this.f5140o == null && !this.f5131f.isEmpty()) {
                this.f5140o = new float[(this.f5137l * 4) + (this.f5138m * 4)];
                int i10 = 0;
                for (int i11 = 0; i11 < this.f5137l; i11++) {
                    float[] fArr = this.f5140o;
                    int i12 = i10 + 1;
                    RectF rectF = this.f5131f;
                    fArr[i10] = rectF.left;
                    int i13 = i12 + 1;
                    float f10 = i11 + 1.0f;
                    float height = rectF.height() * (f10 / (this.f5137l + 1));
                    RectF rectF2 = this.f5131f;
                    fArr[i12] = height + rectF2.top;
                    float[] fArr2 = this.f5140o;
                    int i14 = i13 + 1;
                    fArr2[i13] = rectF2.right;
                    i10 = i14 + 1;
                    fArr2[i14] = (rectF2.height() * (f10 / (this.f5137l + 1))) + this.f5131f.top;
                }
                for (int i15 = 0; i15 < this.f5138m; i15++) {
                    float[] fArr3 = this.f5140o;
                    int i16 = i10 + 1;
                    float f11 = i15 + 1.0f;
                    float width = this.f5131f.width() * (f11 / (this.f5138m + 1));
                    RectF rectF3 = this.f5131f;
                    fArr3[i10] = width + rectF3.left;
                    float[] fArr4 = this.f5140o;
                    int i17 = i16 + 1;
                    fArr4[i16] = rectF3.top;
                    int i18 = i17 + 1;
                    float width2 = rectF3.width() * (f11 / (this.f5138m + 1));
                    RectF rectF4 = this.f5131f;
                    fArr4[i17] = width2 + rectF4.left;
                    i10 = i18 + 1;
                    this.f5140o[i18] = rectF4.bottom;
                }
            }
            float[] fArr5 = this.f5140o;
            if (fArr5 != null) {
                canvas.drawLines(fArr5, this.f5147v);
            }
        }
        if (this.f5141p) {
            canvas.drawRect(this.f5131f, this.f5148w);
        }
        if (this.f5150y != 0) {
            canvas.save();
            this.f5132g.set(this.f5131f);
            this.f5132g.inset(this.E, -r1);
            canvas.clipRect(this.f5132g, Region.Op.DIFFERENCE);
            this.f5132g.set(this.f5131f);
            this.f5132g.inset(-r1, this.E);
            canvas.clipRect(this.f5132g, Region.Op.DIFFERENCE);
            canvas.drawRect(this.f5131f, this.f5149x);
            canvas.restore();
        }
    }

    public void b(Canvas canvas) {
        canvas.save();
        if (this.f5143r) {
            canvas.clipPath(this.f5145t, Region.Op.DIFFERENCE);
        } else {
            canvas.clipRect(this.f5131f, Region.Op.DIFFERENCE);
        }
        canvas.drawColor(this.f5144s);
        canvas.restore();
        if (this.f5143r) {
            canvas.drawCircle(this.f5131f.centerX(), this.f5131f.centerY(), Math.min(this.f5131f.width(), this.f5131f.height()) / 2.0f, this.f5146u);
        }
    }

    public final int c(float f10, float f11) {
        double d10 = this.C;
        int i10 = -1;
        for (int i11 = 0; i11 < 8; i11 += 2) {
            double sqrt = Math.sqrt(Math.pow(f10 - this.f5135j[i11], 2.0d) + Math.pow(f11 - this.f5135j[i11 + 1], 2.0d));
            if (sqrt < d10) {
                i10 = i11 / 2;
                d10 = sqrt;
            }
        }
        if (this.f5150y == 1 && i10 < 0 && this.f5131f.contains(f10, f11)) {
            return 4;
        }
        return i10;
    }

    public void d() {
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    public final void e(TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(h.f6603a0, getResources().getDimensionPixelSize(b.f6555a));
        int color = typedArray.getColor(h.Z, getResources().getColor(a.f6544c));
        this.f5148w.setStrokeWidth(dimensionPixelSize);
        this.f5148w.setColor(color);
        this.f5148w.setStyle(Paint.Style.STROKE);
        this.f5149x.setStrokeWidth(dimensionPixelSize * 3);
        this.f5149x.setColor(color);
        this.f5149x.setStyle(Paint.Style.STROKE);
    }

    public final void f(TypedArray typedArray) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(h.f6611e0, getResources().getDimensionPixelSize(b.f6556b));
        int color = typedArray.getColor(h.f6605b0, getResources().getColor(a.f6545d));
        this.f5147v.setStrokeWidth(dimensionPixelSize);
        this.f5147v.setColor(color);
        this.f5137l = typedArray.getInt(h.f6609d0, 2);
        this.f5138m = typedArray.getInt(h.f6607c0, 2);
    }

    public void g(TypedArray typedArray) {
        this.f5143r = typedArray.getBoolean(h.X, false);
        int color = typedArray.getColor(h.Y, getResources().getColor(a.f6546e));
        this.f5144s = color;
        this.f5146u.setColor(color);
        this.f5146u.setStyle(Paint.Style.STROKE);
        this.f5146u.setStrokeWidth(1.0f);
        e(typedArray);
        this.f5141p = typedArray.getBoolean(h.f6613f0, true);
        f(typedArray);
        this.f5142q = typedArray.getBoolean(h.f6615g0, true);
    }

    public RectF getCropViewRect() {
        return this.f5131f;
    }

    public int getFreestyleCropMode() {
        return this.f5150y;
    }

    public d getOverlayViewChangeListener() {
        return this.F;
    }

    public void h() {
        int i10 = this.f5133h;
        float f10 = this.f5139n;
        int i11 = (int) (i10 / f10);
        int i12 = this.f5134i;
        if (i11 > i12) {
            int i13 = (i10 - ((int) (i12 * f10))) / 2;
            this.f5131f.set(getPaddingLeft() + i13, getPaddingTop(), getPaddingLeft() + r1 + i13, getPaddingTop() + this.f5134i);
        } else {
            int i14 = (i12 - i11) / 2;
            this.f5131f.set(getPaddingLeft(), getPaddingTop() + i14, getPaddingLeft() + this.f5133h, getPaddingTop() + i11 + i14);
        }
        d dVar = this.F;
        if (dVar != null) {
            dVar.a(this.f5131f);
        }
        j();
    }

    public final void i(float f10, float f11) {
        this.f5132g.set(this.f5131f);
        int i10 = this.B;
        if (i10 == 0) {
            RectF rectF = this.f5132g;
            RectF rectF2 = this.f5131f;
            rectF.set(f10, f11, rectF2.right, rectF2.bottom);
        } else if (i10 == 1) {
            RectF rectF3 = this.f5132g;
            RectF rectF4 = this.f5131f;
            rectF3.set(rectF4.left, f11, f10, rectF4.bottom);
        } else if (i10 == 2) {
            RectF rectF5 = this.f5132g;
            RectF rectF6 = this.f5131f;
            rectF5.set(rectF6.left, rectF6.top, f10, f11);
        } else if (i10 == 3) {
            RectF rectF7 = this.f5132g;
            RectF rectF8 = this.f5131f;
            rectF7.set(f10, rectF8.top, rectF8.right, f11);
        } else if (i10 == 4) {
            this.f5132g.offset(f10 - this.f5151z, f11 - this.A);
            if (this.f5132g.left <= getLeft() || this.f5132g.top <= getTop() || this.f5132g.right >= getRight() || this.f5132g.bottom >= getBottom()) {
                return;
            }
            this.f5131f.set(this.f5132g);
            j();
            postInvalidate();
            return;
        }
        boolean z10 = this.f5132g.height() >= ((float) this.D);
        boolean z11 = this.f5132g.width() >= ((float) this.D);
        RectF rectF9 = this.f5131f;
        rectF9.set(z11 ? this.f5132g.left : rectF9.left, z10 ? this.f5132g.top : rectF9.top, z11 ? this.f5132g.right : rectF9.right, z10 ? this.f5132g.bottom : rectF9.bottom);
        if (z10 || z11) {
            j();
            postInvalidate();
        }
    }

    public final void j() {
        this.f5135j = g.b(this.f5131f);
        this.f5136k = g.a(this.f5131f);
        this.f5140o = null;
        this.f5145t.reset();
        this.f5145t.addCircle(this.f5131f.centerX(), this.f5131f.centerY(), Math.min(this.f5131f.width(), this.f5131f.height()) / 2.0f, Path.Direction.CW);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        b(canvas);
        a(canvas);
    }

    @Override // android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            this.f5133h = width - paddingLeft;
            this.f5134i = height - paddingTop;
            if (this.G) {
                this.G = false;
                setTargetAspectRatio(this.f5139n);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f5131f.isEmpty() && this.f5150y != 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if ((motionEvent.getAction() & BaseProgressIndicator.MAX_ALPHA) == 0) {
                int c10 = c(x10, y10);
                this.B = c10;
                boolean z10 = c10 != -1;
                if (!z10) {
                    this.f5151z = -1.0f;
                    this.A = -1.0f;
                } else if (this.f5151z < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    this.f5151z = x10;
                    this.A = y10;
                }
                return z10;
            }
            if ((motionEvent.getAction() & BaseProgressIndicator.MAX_ALPHA) == 2 && motionEvent.getPointerCount() == 1 && this.B != -1) {
                float min = Math.min(Math.max(x10, getPaddingLeft()), getWidth() - getPaddingRight());
                float min2 = Math.min(Math.max(y10, getPaddingTop()), getHeight() - getPaddingBottom());
                i(min, min2);
                this.f5151z = min;
                this.A = min2;
                return true;
            }
            if ((motionEvent.getAction() & BaseProgressIndicator.MAX_ALPHA) == 1) {
                this.f5151z = -1.0f;
                this.A = -1.0f;
                this.B = -1;
                d dVar = this.F;
                if (dVar != null) {
                    dVar.a(this.f5131f);
                }
            }
        }
        return false;
    }

    public void setCircleDimmedLayer(boolean z10) {
        this.f5143r = z10;
    }

    public void setCropFrameColor(int i10) {
        this.f5148w.setColor(i10);
    }

    public void setCropFrameStrokeWidth(int i10) {
        this.f5148w.setStrokeWidth(i10);
    }

    public void setCropGridColor(int i10) {
        this.f5147v.setColor(i10);
    }

    public void setCropGridColumnCount(int i10) {
        this.f5138m = i10;
        this.f5140o = null;
    }

    public void setCropGridRowCount(int i10) {
        this.f5137l = i10;
        this.f5140o = null;
    }

    public void setCropGridStrokeWidth(int i10) {
        this.f5147v.setStrokeWidth(i10);
    }

    public void setDimmedColor(int i10) {
        this.f5144s = i10;
    }

    @Deprecated
    public void setFreestyleCropEnabled(boolean z10) {
        this.f5150y = z10 ? 1 : 0;
    }

    public void setFreestyleCropMode(int i10) {
        this.f5150y = i10;
        postInvalidate();
    }

    public void setOverlayViewChangeListener(d dVar) {
        this.F = dVar;
    }

    public void setShowCropFrame(boolean z10) {
        this.f5141p = z10;
    }

    public void setShowCropGrid(boolean z10) {
        this.f5142q = z10;
    }

    public void setTargetAspectRatio(float f10) {
        this.f5139n = f10;
        if (this.f5133h > 0) {
            h();
            postInvalidate();
        } else {
            this.G = true;
        }
    }

    public OverlayView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f5131f = new RectF();
        this.f5132g = new RectF();
        this.f5140o = null;
        this.f5145t = new Path();
        this.f5146u = new Paint(1);
        this.f5147v = new Paint(1);
        this.f5148w = new Paint(1);
        this.f5149x = new Paint(1);
        this.f5150y = 0;
        this.f5151z = -1.0f;
        this.A = -1.0f;
        this.B = -1;
        this.C = getResources().getDimensionPixelSize(b.f6558d);
        this.D = getResources().getDimensionPixelSize(b.f6559e);
        this.E = getResources().getDimensionPixelSize(b.f6557c);
        d();
    }
}
