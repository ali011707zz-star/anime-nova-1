package r2;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.util.TypedValue;
import r2.a;

/* compiled from: TextBadge.java */
/* loaded from: classes.dex */
public class h extends r2.a {

    /* renamed from: h, reason: collision with root package name */
    public static final boolean f12819h;

    /* renamed from: i, reason: collision with root package name */
    public static final boolean f12820i;

    /* renamed from: c, reason: collision with root package name */
    public final b f12821c;

    /* renamed from: d, reason: collision with root package name */
    public final Paint f12822d;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f12823e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f12824f;

    /* renamed from: g, reason: collision with root package name */
    public String f12825g;

    /* compiled from: TextBadge.java */
    /* loaded from: classes.dex */
    public static abstract class a<T extends h> implements a.b<T> {

        /* renamed from: a, reason: collision with root package name */
        public final b f12826a;

        /* renamed from: b, reason: collision with root package name */
        public final int f12827b;

        /* renamed from: c, reason: collision with root package name */
        public final int f12828c;

        public a(Context context, b bVar) {
            this(bVar, h.a(context), h.b(context));
        }

        public a(b bVar, int i10, int i11) {
            this.f12826a = bVar;
            this.f12827b = i10;
            this.f12828c = i11;
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        f12819h = i10 >= 21;
        f12820i = i10 < 23;
    }

    public h(b bVar, int i10, int i11) {
        Paint paint = new Paint();
        this.f12822d = paint;
        Paint paint2 = new Paint();
        this.f12823e = paint2;
        this.f12824f = true;
        this.f12825g = "";
        this.f12821c = bVar;
        paint.setColor(i10);
        paint2.setColor(i11);
    }

    @SuppressLint({"NewApi"})
    public static int a(Context context) {
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(e.f12812a, typedValue, true)) {
            return typedValue.data;
        }
        if (theme.resolveAttribute(e.f12814c, typedValue, true)) {
            return typedValue.data;
        }
        if (f12819h && theme.resolveAttribute(R.attr.colorAccent, typedValue, true)) {
            return typedValue.data;
        }
        if (f12820i) {
            return context.getResources().getColor(f.f12816a);
        }
        return context.getColor(f.f12816a);
    }

    @SuppressLint({"NewApi"})
    public static int b(Context context) {
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(e.f12813b, typedValue, true)) {
            return typedValue.data;
        }
        if (theme.resolveAttribute(e.f12815d, typedValue, true)) {
            return typedValue.data;
        }
        if (f12820i) {
            return context.getResources().getColor(f.f12817b);
        }
        if (theme.resolveAttribute(R.attr.titleTextColor, typedValue, true)) {
            return typedValue.data;
        }
        return context.getColor(f.f12817b);
    }

    public void c(Paint paint) {
        paint.setAntiAlias(true);
    }

    public void d(Paint paint) {
        paint.setAntiAlias(true);
        paint.setTextAlign(Paint.Align.CENTER);
    }

    @Override // android.graphics.drawable.Drawable
    @SuppressLint({"NewApi"})
    public void draw(Canvas canvas) {
        if (this.f12825g.length() == 0) {
            return;
        }
        if (this.f12824f) {
            this.f12824f = false;
            c(this.f12822d);
            d(this.f12823e);
        }
        Rect b10 = this.f12821c.b(canvas, getBounds(), this.f12822d, getLayoutDirection());
        this.f12823e.setTextSize(b10.height() * 0.6f);
        canvas.drawText(this.f12825g, b10.exactCenterX(), b10.exactCenterY() - ((this.f12823e.ascent() + this.f12823e.descent()) * 0.5f), this.f12823e);
    }

    public final void e(CharSequence charSequence) {
        String trim = charSequence == null ? "" : charSequence.toString().trim();
        if (this.f12825g.equals(trim)) {
            return;
        }
        this.f12825g = trim;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getLayoutDirection() {
        if (Build.VERSION.SDK_INT >= 23) {
            return super.getLayoutDirection();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i10) {
        invalidateSelf();
        return true;
    }

    @Override // r2.a, android.graphics.drawable.Drawable
    @SuppressLint({"NewApi"})
    public void setAlpha(int i10) {
        if (getAlpha() != i10) {
            this.f12822d.setAlpha(i10);
            this.f12823e.setAlpha(i10);
            super.setAlpha(i10);
        }
    }

    @Override // r2.a, android.graphics.drawable.Drawable
    @SuppressLint({"NewApi"})
    public void setColorFilter(ColorFilter colorFilter) {
        if (getColorFilter() != colorFilter) {
            this.f12822d.setColorFilter(colorFilter);
            this.f12823e.setColorFilter(colorFilter);
            super.setColorFilter(colorFilter);
        }
    }
}
