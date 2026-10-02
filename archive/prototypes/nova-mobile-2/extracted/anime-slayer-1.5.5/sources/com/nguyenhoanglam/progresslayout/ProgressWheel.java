package com.nguyenhoanglam.progresslayout;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import pa.e;

/* loaded from: classes.dex */
public class ProgressWheel extends View {
    public static final String E = ProgressWheel.class.getSimpleName();
    public float A;
    public boolean B;
    public b C;
    public boolean D;

    /* renamed from: f, reason: collision with root package name */
    public final int f4903f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4904g;

    /* renamed from: h, reason: collision with root package name */
    public final long f4905h;

    /* renamed from: i, reason: collision with root package name */
    public int f4906i;

    /* renamed from: j, reason: collision with root package name */
    public int f4907j;

    /* renamed from: k, reason: collision with root package name */
    public int f4908k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f4909l;

    /* renamed from: m, reason: collision with root package name */
    public double f4910m;

    /* renamed from: n, reason: collision with root package name */
    public double f4911n;

    /* renamed from: o, reason: collision with root package name */
    public float f4912o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f4913p;

    /* renamed from: q, reason: collision with root package name */
    public long f4914q;

    /* renamed from: r, reason: collision with root package name */
    public int f4915r;

    /* renamed from: s, reason: collision with root package name */
    public int f4916s;

    /* renamed from: t, reason: collision with root package name */
    public Paint f4917t;

    /* renamed from: u, reason: collision with root package name */
    public Paint f4918u;

    /* renamed from: v, reason: collision with root package name */
    public RectF f4919v;

    /* renamed from: w, reason: collision with root package name */
    public float f4920w;

    /* renamed from: x, reason: collision with root package name */
    public long f4921x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f4922y;

    /* renamed from: z, reason: collision with root package name */
    public float f4923z;

    /* loaded from: classes.dex */
    public interface b {
        void a(float f10);
    }

    /* loaded from: classes.dex */
    public static class c extends View.BaseSavedState {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public float f4924f;

        /* renamed from: g, reason: collision with root package name */
        public float f4925g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f4926h;

        /* renamed from: i, reason: collision with root package name */
        public float f4927i;

        /* renamed from: j, reason: collision with root package name */
        public int f4928j;

        /* renamed from: k, reason: collision with root package name */
        public int f4929k;

        /* renamed from: l, reason: collision with root package name */
        public int f4930l;

        /* renamed from: m, reason: collision with root package name */
        public int f4931m;

        /* renamed from: n, reason: collision with root package name */
        public int f4932n;

        /* renamed from: o, reason: collision with root package name */
        public boolean f4933o;

        /* renamed from: p, reason: collision with root package name */
        public boolean f4934p;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i10) {
                return new c[i10];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeFloat(this.f4924f);
            parcel.writeFloat(this.f4925g);
            parcel.writeByte(this.f4926h ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.f4927i);
            parcel.writeInt(this.f4928j);
            parcel.writeInt(this.f4929k);
            parcel.writeInt(this.f4930l);
            parcel.writeInt(this.f4931m);
            parcel.writeInt(this.f4932n);
            parcel.writeByte(this.f4933o ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f4934p ? (byte) 1 : (byte) 0);
        }

        public c(Parcelable parcelable) {
            super(parcelable);
        }

        public c(Parcel parcel) {
            super(parcel);
            this.f4924f = parcel.readFloat();
            this.f4925g = parcel.readFloat();
            this.f4926h = parcel.readByte() != 0;
            this.f4927i = parcel.readFloat();
            this.f4928j = parcel.readInt();
            this.f4929k = parcel.readInt();
            this.f4930l = parcel.readInt();
            this.f4931m = parcel.readInt();
            this.f4932n = parcel.readInt();
            this.f4933o = parcel.readByte() != 0;
            this.f4934p = parcel.readByte() != 0;
        }
    }

    public ProgressWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4903f = 16;
        this.f4904g = 270;
        this.f4905h = 200L;
        this.f4906i = 28;
        this.f4907j = 4;
        this.f4908k = 4;
        this.f4909l = false;
        this.f4910m = ShadowDrawableWrapper.COS_45;
        this.f4911n = 460.0d;
        this.f4912o = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f4913p = true;
        this.f4914q = 0L;
        this.f4915r = -1442840576;
        this.f4916s = 16777215;
        this.f4917t = new Paint();
        this.f4918u = new Paint();
        this.f4919v = new RectF();
        this.f4920w = 230.0f;
        this.f4921x = 0L;
        this.f4923z = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.A = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.B = false;
        a(context.obtainStyledAttributes(attributeSet, e.P));
        d();
    }

    public final void a(TypedArray typedArray) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.f4907j = (int) TypedValue.applyDimension(1, this.f4907j, displayMetrics);
        this.f4908k = (int) TypedValue.applyDimension(1, this.f4908k, displayMetrics);
        int applyDimension = (int) TypedValue.applyDimension(1, this.f4906i, displayMetrics);
        this.f4906i = applyDimension;
        this.f4906i = (int) typedArray.getDimension(e.T, applyDimension);
        this.f4909l = typedArray.getBoolean(e.U, false);
        this.f4907j = (int) typedArray.getDimension(e.S, this.f4907j);
        this.f4908k = (int) typedArray.getDimension(e.Y, this.f4908k);
        this.f4920w = typedArray.getFloat(e.Z, this.f4920w / 360.0f) * 360.0f;
        this.f4911n = typedArray.getInt(e.R, (int) this.f4911n);
        this.f4915r = typedArray.getColor(e.Q, this.f4915r);
        this.f4916s = typedArray.getColor(e.X, this.f4916s);
        this.f4922y = typedArray.getBoolean(e.V, false);
        if (typedArray.getBoolean(e.W, false)) {
            g();
        }
        typedArray.recycle();
    }

    public final void b() {
        if (this.C != null) {
            this.C.a(Math.round((this.f4923z * 100.0f) / 360.0f) / 100.0f);
        }
    }

    public final void c(float f10) {
        b bVar = this.C;
        if (bVar != null) {
            bVar.a(f10);
        }
    }

    @TargetApi(17)
    public final void d() {
        float f10;
        if (Build.VERSION.SDK_INT >= 17) {
            f10 = Settings.Global.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f);
        } else {
            f10 = Settings.System.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f);
        }
        this.D = f10 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public final void e(int i10, int i11) {
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (!this.f4909l) {
            int i12 = (i10 - paddingLeft) - paddingRight;
            int min = Math.min(Math.min(i12, (i11 - paddingBottom) - paddingTop), (this.f4906i * 2) - (this.f4907j * 2));
            int i13 = ((i12 - min) / 2) + paddingLeft;
            int i14 = ((((i11 - paddingTop) - paddingBottom) - min) / 2) + paddingTop;
            int i15 = this.f4907j;
            this.f4919v = new RectF(i13 + i15, i14 + i15, (i13 + min) - i15, (i14 + min) - i15);
            return;
        }
        int i16 = this.f4907j;
        this.f4919v = new RectF(paddingLeft + i16, paddingTop + i16, (i10 - paddingRight) - i16, (i11 - paddingBottom) - i16);
    }

    public final void f() {
        this.f4917t.setColor(this.f4915r);
        this.f4917t.setAntiAlias(true);
        this.f4917t.setStyle(Paint.Style.STROKE);
        this.f4917t.setStrokeWidth(this.f4907j);
        this.f4918u.setColor(this.f4916s);
        this.f4918u.setAntiAlias(true);
        this.f4918u.setStyle(Paint.Style.STROKE);
        this.f4918u.setStrokeWidth(this.f4908k);
    }

    public void g() {
        this.f4921x = SystemClock.uptimeMillis();
        this.B = true;
        invalidate();
    }

    public int getBarColor() {
        return this.f4915r;
    }

    public int getBarWidth() {
        return this.f4907j;
    }

    public int getCircleRadius() {
        return this.f4906i;
    }

    public float getProgress() {
        if (this.B) {
            return -1.0f;
        }
        return this.f4923z / 360.0f;
    }

    public int getRimColor() {
        return this.f4916s;
    }

    public int getRimWidth() {
        return this.f4908k;
    }

    public float getSpinSpeed() {
        return this.f4920w / 360.0f;
    }

    public final void h(long j10) {
        long j11 = this.f4914q;
        if (j11 >= 200) {
            double d10 = this.f4910m;
            double d11 = j10;
            Double.isNaN(d11);
            double d12 = d10 + d11;
            this.f4910m = d12;
            double d13 = this.f4911n;
            if (d12 > d13) {
                this.f4910m = d12 - d13;
                this.f4914q = 0L;
                this.f4913p = !this.f4913p;
            }
            float cos = (((float) Math.cos(((this.f4910m / d13) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
            if (this.f4913p) {
                this.f4912o = cos * 254.0f;
                return;
            }
            float f10 = (1.0f - cos) * 254.0f;
            this.f4923z += this.f4912o - f10;
            this.f4912o = f10;
            return;
        }
        this.f4914q = j11 + j10;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f10;
        float f11;
        super.onDraw(canvas);
        canvas.drawArc(this.f4919v, 360.0f, 360.0f, false, this.f4918u);
        if (this.D) {
            boolean z10 = this.B;
            float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            boolean z11 = true;
            if (z10) {
                long uptimeMillis = SystemClock.uptimeMillis() - this.f4921x;
                float f13 = (((float) uptimeMillis) * this.f4920w) / 1000.0f;
                h(uptimeMillis);
                float f14 = this.f4923z + f13;
                this.f4923z = f14;
                if (f14 > 360.0f) {
                    this.f4923z = f14 - 360.0f;
                    c(-1.0f);
                }
                this.f4921x = SystemClock.uptimeMillis();
                float f15 = this.f4923z - 90.0f;
                float f16 = this.f4912o + 16.0f;
                if (isInEditMode()) {
                    f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    f11 = 135.0f;
                } else {
                    f10 = f15;
                    f11 = f16;
                }
                canvas.drawArc(this.f4919v, f10, f11, false, this.f4917t);
            } else {
                float f17 = this.f4923z;
                if (f17 != this.A) {
                    this.f4923z = Math.min(this.f4923z + ((((float) (SystemClock.uptimeMillis() - this.f4921x)) / 1000.0f) * this.f4920w), this.A);
                    this.f4921x = SystemClock.uptimeMillis();
                } else {
                    z11 = false;
                }
                if (f17 != this.f4923z) {
                    b();
                }
                float f18 = this.f4923z;
                if (!this.f4922y) {
                    f12 = ((float) (1.0d - Math.pow(1.0f - (f18 / 360.0f), 4.0f))) * 360.0f;
                    f18 = ((float) (1.0d - Math.pow(1.0f - (this.f4923z / 360.0f), 2.0f))) * 360.0f;
                }
                canvas.drawArc(this.f4919v, f12 - 90.0f, isInEditMode() ? 360.0f : f18, false, this.f4917t);
            }
            if (z11) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int paddingLeft = this.f4906i + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.f4906i + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode == 1073741824) {
            paddingLeft = size;
        } else if (mode == Integer.MIN_VALUE) {
            paddingLeft = Math.min(paddingLeft, size);
        }
        if (mode2 == 1073741824 || mode == 1073741824) {
            paddingTop = size2;
        } else if (mode2 == Integer.MIN_VALUE) {
            paddingTop = Math.min(paddingTop, size2);
        }
        setMeasuredDimension(paddingLeft, paddingTop);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        this.f4923z = cVar.f4924f;
        this.A = cVar.f4925g;
        this.B = cVar.f4926h;
        this.f4920w = cVar.f4927i;
        this.f4907j = cVar.f4928j;
        this.f4915r = cVar.f4929k;
        this.f4908k = cVar.f4930l;
        this.f4916s = cVar.f4931m;
        this.f4906i = cVar.f4932n;
        this.f4922y = cVar.f4933o;
        this.f4909l = cVar.f4934p;
        this.f4921x = SystemClock.uptimeMillis();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.f4924f = this.f4923z;
        cVar.f4925g = this.A;
        cVar.f4926h = this.B;
        cVar.f4927i = this.f4920w;
        cVar.f4928j = this.f4907j;
        cVar.f4929k = this.f4915r;
        cVar.f4930l = this.f4908k;
        cVar.f4931m = this.f4916s;
        cVar.f4932n = this.f4906i;
        cVar.f4933o = this.f4922y;
        cVar.f4934p = this.f4909l;
        return cVar;
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        e(i10, i11);
        f();
        invalidate();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (i10 == 0) {
            this.f4921x = SystemClock.uptimeMillis();
        }
    }

    public void setBarColor(int i10) {
        this.f4915r = i10;
        f();
        if (this.B) {
            return;
        }
        invalidate();
    }

    public void setBarWidth(int i10) {
        this.f4907j = i10;
        if (this.B) {
            return;
        }
        invalidate();
    }

    public void setCallback(b bVar) {
        this.C = bVar;
        if (this.B) {
            return;
        }
        b();
    }

    public void setCircleRadius(int i10) {
        this.f4906i = i10;
        if (this.B) {
            return;
        }
        invalidate();
    }

    public void setInstantProgress(float f10) {
        if (this.B) {
            this.f4923z = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.B = false;
        }
        if (f10 > 1.0f) {
            f10 -= 1.0f;
        } else if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        if (f10 == this.A) {
            return;
        }
        float min = Math.min(f10 * 360.0f, 360.0f);
        this.A = min;
        this.f4923z = min;
        this.f4921x = SystemClock.uptimeMillis();
        invalidate();
    }

    public void setLinearProgress(boolean z10) {
        this.f4922y = z10;
        if (this.B) {
            return;
        }
        invalidate();
    }

    public void setProgress(float f10) {
        if (this.B) {
            this.f4923z = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.B = false;
            b();
        }
        if (f10 > 1.0f) {
            f10 -= 1.0f;
        } else if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        float f11 = this.A;
        if (f10 == f11) {
            return;
        }
        if (this.f4923z == f11) {
            this.f4921x = SystemClock.uptimeMillis();
        }
        this.A = Math.min(f10 * 360.0f, 360.0f);
        invalidate();
    }

    public void setRimColor(int i10) {
        this.f4916s = i10;
        f();
        if (this.B) {
            return;
        }
        invalidate();
    }

    public void setRimWidth(int i10) {
        this.f4908k = i10;
        if (this.B) {
            return;
        }
        invalidate();
    }

    public void setSpinSpeed(float f10) {
        this.f4920w = f10 * 360.0f;
    }
}
