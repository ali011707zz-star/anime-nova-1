package y1;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import h0.g;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.apache.http.cookie.ClientCookie;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: VectorDrawableCompat.java */
/* loaded from: classes.dex */
public class i extends y1.h {

    /* renamed from: p, reason: collision with root package name */
    public static final PorterDuff.Mode f16355p = PorterDuff.Mode.SRC_IN;

    /* renamed from: g, reason: collision with root package name */
    public h f16356g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuffColorFilter f16357h;

    /* renamed from: i, reason: collision with root package name */
    public ColorFilter f16358i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f16359j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f16360k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable.ConstantState f16361l;

    /* renamed from: m, reason: collision with root package name */
    public final float[] f16362m;

    /* renamed from: n, reason: collision with root package name */
    public final Matrix f16363n;

    /* renamed from: o, reason: collision with root package name */
    public final Rect f16364o;

    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class b extends f {
        public b() {
        }

        @Override // y1.i.f
        public boolean c() {
            return true;
        }

        public void e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (g0.i.r(xmlPullParser, "pathData")) {
                TypedArray s10 = g0.i.s(resources, theme, attributeSet, y1.a.f16327d);
                f(s10, xmlPullParser);
                s10.recycle();
            }
        }

        public final void f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f16391b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f16390a = h0.g.d(string2);
            }
            this.f16392c = g0.i.k(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        public b(b bVar) {
            super(bVar);
        }
    }

    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static abstract class e {
        public e() {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }
    }

    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class h extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public int f16411a;

        /* renamed from: b, reason: collision with root package name */
        public g f16412b;

        /* renamed from: c, reason: collision with root package name */
        public ColorStateList f16413c;

        /* renamed from: d, reason: collision with root package name */
        public PorterDuff.Mode f16414d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f16415e;

        /* renamed from: f, reason: collision with root package name */
        public Bitmap f16416f;

        /* renamed from: g, reason: collision with root package name */
        public ColorStateList f16417g;

        /* renamed from: h, reason: collision with root package name */
        public PorterDuff.Mode f16418h;

        /* renamed from: i, reason: collision with root package name */
        public int f16419i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f16420j;

        /* renamed from: k, reason: collision with root package name */
        public boolean f16421k;

        /* renamed from: l, reason: collision with root package name */
        public Paint f16422l;

        public h(h hVar) {
            this.f16413c = null;
            this.f16414d = i.f16355p;
            if (hVar != null) {
                this.f16411a = hVar.f16411a;
                g gVar = new g(hVar.f16412b);
                this.f16412b = gVar;
                if (hVar.f16412b.f16399e != null) {
                    gVar.f16399e = new Paint(hVar.f16412b.f16399e);
                }
                if (hVar.f16412b.f16398d != null) {
                    this.f16412b.f16398d = new Paint(hVar.f16412b.f16398d);
                }
                this.f16413c = hVar.f16413c;
                this.f16414d = hVar.f16414d;
                this.f16415e = hVar.f16415e;
            }
        }

        public boolean a(int i10, int i11) {
            return i10 == this.f16416f.getWidth() && i11 == this.f16416f.getHeight();
        }

        public boolean b() {
            return !this.f16421k && this.f16417g == this.f16413c && this.f16418h == this.f16414d && this.f16420j == this.f16415e && this.f16419i == this.f16412b.getRootAlpha();
        }

        public void c(int i10, int i11) {
            if (this.f16416f == null || !a(i10, i11)) {
                this.f16416f = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
                this.f16421k = true;
            }
        }

        public void d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f16416f, (Rect) null, rect, e(colorFilter));
        }

        public Paint e(ColorFilter colorFilter) {
            if (!f() && colorFilter == null) {
                return null;
            }
            if (this.f16422l == null) {
                Paint paint = new Paint();
                this.f16422l = paint;
                paint.setFilterBitmap(true);
            }
            this.f16422l.setAlpha(this.f16412b.getRootAlpha());
            this.f16422l.setColorFilter(colorFilter);
            return this.f16422l;
        }

        public boolean f() {
            return this.f16412b.getRootAlpha() < 255;
        }

        public boolean g() {
            return this.f16412b.f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f16411a;
        }

        public boolean h(int[] iArr) {
            boolean g10 = this.f16412b.g(iArr);
            this.f16421k |= g10;
            return g10;
        }

        public void i() {
            this.f16417g = this.f16413c;
            this.f16418h = this.f16414d;
            this.f16419i = this.f16412b.getRootAlpha();
            this.f16420j = this.f16415e;
            this.f16421k = false;
        }

        public void j(int i10, int i11) {
            this.f16416f.eraseColor(0);
            this.f16412b.b(new Canvas(this.f16416f), i10, i11, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new i(this);
        }

        public h() {
            this.f16413c = null;
            this.f16414d = i.f16355p;
            this.f16412b = new g();
        }
    }

    public i() {
        this.f16360k = true;
        this.f16362m = new float[9];
        this.f16363n = new Matrix();
        this.f16364o = new Rect();
        this.f16356g = new h();
    }

    public static int a(int i10, float f10) {
        return (i10 & 16777215) | (((int) (Color.alpha(i10) * f10)) << 24);
    }

    public static i b(Resources resources, int i10, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            i iVar = new i();
            iVar.f16354f = g0.h.e(resources, i10, theme);
            iVar.f16361l = new C0427i(iVar.f16354f.getConstantState());
            return iVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i10);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return c(resources, xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException | XmlPullParserException unused) {
            return null;
        }
    }

    public static i c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        i iVar = new i();
        iVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return iVar;
    }

    public static PorterDuff.Mode g(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 != 9) {
            switch (i10) {
                case 14:
                    return PorterDuff.Mode.MULTIPLY;
                case 15:
                    return PorterDuff.Mode.SCREEN;
                case 16:
                    return PorterDuff.Mode.ADD;
                default:
                    return mode;
            }
        }
        return PorterDuff.Mode.SRC_ATOP;
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f16354f;
        if (drawable == null) {
            return false;
        }
        i0.a.b(drawable);
        return false;
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    public Object d(String str) {
        return this.f16356g.f16412b.f16410p.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f16364o);
        if (this.f16364o.width() <= 0 || this.f16364o.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f16358i;
        if (colorFilter == null) {
            colorFilter = this.f16357h;
        }
        canvas.getMatrix(this.f16363n);
        this.f16363n.getValues(this.f16362m);
        float abs = Math.abs(this.f16362m[0]);
        float abs2 = Math.abs(this.f16362m[4]);
        float abs3 = Math.abs(this.f16362m[1]);
        float abs4 = Math.abs(this.f16362m[3]);
        if (abs3 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || abs4 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int min = Math.min(RecyclerView.e0.FLAG_MOVED, (int) (this.f16364o.width() * abs));
        int min2 = Math.min(RecyclerView.e0.FLAG_MOVED, (int) (this.f16364o.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        Rect rect = this.f16364o;
        canvas.translate(rect.left, rect.top);
        if (f()) {
            canvas.translate(this.f16364o.width(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f16364o.offsetTo(0, 0);
        this.f16356g.c(min, min2);
        if (!this.f16360k) {
            this.f16356g.j(min, min2);
        } else if (!this.f16356g.b()) {
            this.f16356g.j(min, min2);
            this.f16356g.i();
        }
        this.f16356g.d(canvas, colorFilter, this.f16364o);
        canvas.restoreToCount(save);
    }

    public final void e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        h hVar = this.f16356g;
        g gVar = hVar.f16412b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar.f16402h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z10 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                if (ClientCookie.PATH_ATTR.equals(name)) {
                    c cVar = new c();
                    cVar.g(resources, attributeSet, theme, xmlPullParser);
                    dVar.f16378b.add(cVar);
                    if (cVar.getPathName() != null) {
                        gVar.f16410p.put(cVar.getPathName(), cVar);
                    }
                    z10 = false;
                    hVar.f16411a = cVar.f16393d | hVar.f16411a;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.e(resources, attributeSet, theme, xmlPullParser);
                    dVar.f16378b.add(bVar);
                    if (bVar.getPathName() != null) {
                        gVar.f16410p.put(bVar.getPathName(), bVar);
                    }
                    hVar.f16411a = bVar.f16393d | hVar.f16411a;
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.c(resources, attributeSet, theme, xmlPullParser);
                    dVar.f16378b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        gVar.f16410p.put(dVar2.getGroupName(), dVar2);
                    }
                    hVar.f16411a = dVar2.f16387k | hVar.f16411a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z10) {
            throw new XmlPullParserException("no path defined");
        }
    }

    public final boolean f() {
        return Build.VERSION.SDK_INT >= 17 && isAutoMirrored() && i0.a.f(this) == 1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return i0.a.d(drawable);
        }
        return this.f16356g.f16412b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f16356g.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return i0.a.e(drawable);
        }
        return this.f16358i;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f16354f != null && Build.VERSION.SDK_INT >= 24) {
            return new C0427i(this.f16354f.getConstantState());
        }
        this.f16356g.f16411a = getChangingConfigurations();
        return this.f16356g;
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return (int) this.f16356g.f16412b.f16404j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.f16356g.f16412b.f16403i;
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    public void h(boolean z10) {
        this.f16360k = z10;
    }

    public final void i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        h hVar = this.f16356g;
        g gVar = hVar.f16412b;
        hVar.f16414d = g(g0.i.k(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList g10 = g0.i.g(typedArray, xmlPullParser, theme, "tint", 1);
        if (g10 != null) {
            hVar.f16413c = g10;
        }
        hVar.f16415e = g0.i.e(typedArray, xmlPullParser, "autoMirrored", 5, hVar.f16415e);
        gVar.f16405k = g0.i.j(typedArray, xmlPullParser, "viewportWidth", 7, gVar.f16405k);
        float j10 = g0.i.j(typedArray, xmlPullParser, "viewportHeight", 8, gVar.f16406l);
        gVar.f16406l = j10;
        if (gVar.f16405k <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (j10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            gVar.f16403i = typedArray.getDimension(3, gVar.f16403i);
            float dimension = typedArray.getDimension(2, gVar.f16404j);
            gVar.f16404j = dimension;
            if (gVar.f16403i <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                gVar.setAlpha(g0.i.j(typedArray, xmlPullParser, "alpha", 4, gVar.getAlpha()));
                String string = typedArray.getString(0);
                if (string != null) {
                    gVar.f16408n = string;
                    gVar.f16410p.put(string, gVar);
                    return;
                }
                return;
            }
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return i0.a.h(drawable);
        }
        return this.f16356g.f16415e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        h hVar;
        ColorStateList colorStateList;
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((hVar = this.f16356g) != null && (hVar.g() || ((colorStateList = this.f16356g.f16413c) != null && colorStateList.isStateful())));
    }

    public PorterDuffColorFilter j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f16359j && super.mutate() == this) {
            this.f16356g = new h(this.f16356g);
            this.f16359j = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z10 = false;
        h hVar = this.f16356g;
        ColorStateList colorStateList = hVar.f16413c;
        if (colorStateList != null && (mode = hVar.f16414d) != null) {
            this.f16357h = j(this.f16357h, colorStateList, mode);
            invalidateSelf();
            z10 = true;
        }
        if (!hVar.g() || !hVar.h(iArr)) {
            return z10;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j10) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j10);
        } else {
            super.scheduleSelf(runnable, j10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.setAlpha(i10);
        } else if (this.f16356g.f16412b.getRootAlpha() != i10) {
            this.f16356g.f16412b.setRootAlpha(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            i0.a.j(drawable, z10);
        } else {
            this.f16356g.f16415e = z10;
        }
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i10) {
        super.setChangingConfigurations(i10);
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i10, PorterDuff.Mode mode) {
        super.setColorFilter(i10, mode);
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z10) {
        super.setFilterBitmap(z10);
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f10, float f11) {
        super.setHotspot(f10, f11);
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i10, int i11, int i12, int i13) {
        super.setHotspotBounds(i10, i11, i12, i13);
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, i0.b
    public void setTint(int i10) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            i0.a.n(drawable, i10);
        } else {
            setTintList(ColorStateList.valueOf(i10));
        }
    }

    @Override // android.graphics.drawable.Drawable, i0.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            i0.a.o(drawable, colorStateList);
            return;
        }
        h hVar = this.f16356g;
        if (hVar.f16413c != colorStateList) {
            hVar.f16413c = colorStateList;
            this.f16357h = j(this.f16357h, colorStateList, hVar.f16414d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, i0.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            i0.a.p(drawable, mode);
            return;
        }
        h hVar = this.f16356g;
        if (hVar.f16414d != mode) {
            hVar.f16414d = mode;
            this.f16357h = j(this.f16357h, hVar.f16413c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.setVisible(z10, z11);
        }
        return super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* compiled from: VectorDrawableCompat.java */
    /* renamed from: y1.i$i, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0427i extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final Drawable.ConstantState f16423a;

        public C0427i(Drawable.ConstantState constantState) {
            this.f16423a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f16423a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f16423a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            i iVar = new i();
            iVar.f16354f = (VectorDrawable) this.f16423a.newDrawable();
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            i iVar = new i();
            iVar.f16354f = (VectorDrawable) this.f16423a.newDrawable(resources);
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            i iVar = new i();
            iVar.f16354f = (VectorDrawable) this.f16423a.newDrawable(resources, theme);
            return iVar;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f16358i = colorFilter;
            invalidateSelf();
        }
    }

    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static abstract class f extends e {

        /* renamed from: a, reason: collision with root package name */
        public g.b[] f16390a;

        /* renamed from: b, reason: collision with root package name */
        public String f16391b;

        /* renamed from: c, reason: collision with root package name */
        public int f16392c;

        /* renamed from: d, reason: collision with root package name */
        public int f16393d;

        public f() {
            super();
            this.f16390a = null;
            this.f16392c = 0;
        }

        public boolean c() {
            return false;
        }

        public void d(Path path) {
            path.reset();
            g.b[] bVarArr = this.f16390a;
            if (bVarArr != null) {
                g.b.e(bVarArr, path);
            }
        }

        public g.b[] getPathData() {
            return this.f16390a;
        }

        public String getPathName() {
            return this.f16391b;
        }

        public void setPathData(g.b[] bVarArr) {
            if (!h0.g.b(this.f16390a, bVarArr)) {
                this.f16390a = h0.g.f(bVarArr);
            } else {
                h0.g.j(this.f16390a, bVarArr);
            }
        }

        public f(f fVar) {
            super();
            this.f16390a = null;
            this.f16392c = 0;
            this.f16391b = fVar.f16391b;
            this.f16393d = fVar.f16393d;
            this.f16390a = h0.g.f(fVar.f16390a);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            i0.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        h hVar = this.f16356g;
        hVar.f16412b = new g();
        TypedArray s10 = g0.i.s(resources, theme, attributeSet, y1.a.f16324a);
        i(s10, xmlPullParser, theme);
        s10.recycle();
        hVar.f16411a = getChangingConfigurations();
        hVar.f16421k = true;
        e(resources, xmlPullParser, attributeSet, theme);
        this.f16357h = j(this.f16357h, hVar.f16413c, hVar.f16414d);
    }

    public i(h hVar) {
        this.f16360k = true;
        this.f16362m = new float[9];
        this.f16363n = new Matrix();
        this.f16364o = new Rect();
        this.f16356g = hVar;
        this.f16357h = j(this.f16357h, hVar.f16413c, hVar.f16414d);
    }

    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class c extends f {

        /* renamed from: e, reason: collision with root package name */
        public int[] f16365e;

        /* renamed from: f, reason: collision with root package name */
        public g0.d f16366f;

        /* renamed from: g, reason: collision with root package name */
        public float f16367g;

        /* renamed from: h, reason: collision with root package name */
        public g0.d f16368h;

        /* renamed from: i, reason: collision with root package name */
        public float f16369i;

        /* renamed from: j, reason: collision with root package name */
        public float f16370j;

        /* renamed from: k, reason: collision with root package name */
        public float f16371k;

        /* renamed from: l, reason: collision with root package name */
        public float f16372l;

        /* renamed from: m, reason: collision with root package name */
        public float f16373m;

        /* renamed from: n, reason: collision with root package name */
        public Paint.Cap f16374n;

        /* renamed from: o, reason: collision with root package name */
        public Paint.Join f16375o;

        /* renamed from: p, reason: collision with root package name */
        public float f16376p;

        public c() {
            this.f16367g = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16369i = 1.0f;
            this.f16370j = 1.0f;
            this.f16371k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16372l = 1.0f;
            this.f16373m = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16374n = Paint.Cap.BUTT;
            this.f16375o = Paint.Join.MITER;
            this.f16376p = 4.0f;
        }

        @Override // y1.i.e
        public boolean a() {
            return this.f16368h.i() || this.f16366f.i();
        }

        @Override // y1.i.e
        public boolean b(int[] iArr) {
            return this.f16366f.j(iArr) | this.f16368h.j(iArr);
        }

        public final Paint.Cap e(int i10, Paint.Cap cap) {
            if (i10 == 0) {
                return Paint.Cap.BUTT;
            }
            if (i10 != 1) {
                return i10 != 2 ? cap : Paint.Cap.SQUARE;
            }
            return Paint.Cap.ROUND;
        }

        public final Paint.Join f(int i10, Paint.Join join) {
            if (i10 == 0) {
                return Paint.Join.MITER;
            }
            if (i10 != 1) {
                return i10 != 2 ? join : Paint.Join.BEVEL;
            }
            return Paint.Join.ROUND;
        }

        public void g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray s10 = g0.i.s(resources, theme, attributeSet, y1.a.f16326c);
            h(s10, xmlPullParser, theme);
            s10.recycle();
        }

        public float getFillAlpha() {
            return this.f16370j;
        }

        public int getFillColor() {
            return this.f16368h.e();
        }

        public float getStrokeAlpha() {
            return this.f16369i;
        }

        public int getStrokeColor() {
            return this.f16366f.e();
        }

        public float getStrokeWidth() {
            return this.f16367g;
        }

        public float getTrimPathEnd() {
            return this.f16372l;
        }

        public float getTrimPathOffset() {
            return this.f16373m;
        }

        public float getTrimPathStart() {
            return this.f16371k;
        }

        public final void h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f16365e = null;
            if (g0.i.r(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f16391b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f16390a = h0.g.d(string2);
                }
                this.f16368h = g0.i.i(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f16370j = g0.i.j(typedArray, xmlPullParser, "fillAlpha", 12, this.f16370j);
                this.f16374n = e(g0.i.k(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f16374n);
                this.f16375o = f(g0.i.k(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f16375o);
                this.f16376p = g0.i.j(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f16376p);
                this.f16366f = g0.i.i(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f16369i = g0.i.j(typedArray, xmlPullParser, "strokeAlpha", 11, this.f16369i);
                this.f16367g = g0.i.j(typedArray, xmlPullParser, "strokeWidth", 4, this.f16367g);
                this.f16372l = g0.i.j(typedArray, xmlPullParser, "trimPathEnd", 6, this.f16372l);
                this.f16373m = g0.i.j(typedArray, xmlPullParser, "trimPathOffset", 7, this.f16373m);
                this.f16371k = g0.i.j(typedArray, xmlPullParser, "trimPathStart", 5, this.f16371k);
                this.f16392c = g0.i.k(typedArray, xmlPullParser, "fillType", 13, this.f16392c);
            }
        }

        public void setFillAlpha(float f10) {
            this.f16370j = f10;
        }

        public void setFillColor(int i10) {
            this.f16368h.k(i10);
        }

        public void setStrokeAlpha(float f10) {
            this.f16369i = f10;
        }

        public void setStrokeColor(int i10) {
            this.f16366f.k(i10);
        }

        public void setStrokeWidth(float f10) {
            this.f16367g = f10;
        }

        public void setTrimPathEnd(float f10) {
            this.f16372l = f10;
        }

        public void setTrimPathOffset(float f10) {
            this.f16373m = f10;
        }

        public void setTrimPathStart(float f10) {
            this.f16371k = f10;
        }

        public c(c cVar) {
            super(cVar);
            this.f16367g = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16369i = 1.0f;
            this.f16370j = 1.0f;
            this.f16371k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16372l = 1.0f;
            this.f16373m = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16374n = Paint.Cap.BUTT;
            this.f16375o = Paint.Join.MITER;
            this.f16376p = 4.0f;
            this.f16365e = cVar.f16365e;
            this.f16366f = cVar.f16366f;
            this.f16367g = cVar.f16367g;
            this.f16369i = cVar.f16369i;
            this.f16368h = cVar.f16368h;
            this.f16392c = cVar.f16392c;
            this.f16370j = cVar.f16370j;
            this.f16371k = cVar.f16371k;
            this.f16372l = cVar.f16372l;
            this.f16373m = cVar.f16373m;
            this.f16374n = cVar.f16374n;
            this.f16375o = cVar.f16375o;
            this.f16376p = cVar.f16376p;
        }
    }

    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class g {

        /* renamed from: q, reason: collision with root package name */
        public static final Matrix f16394q = new Matrix();

        /* renamed from: a, reason: collision with root package name */
        public final Path f16395a;

        /* renamed from: b, reason: collision with root package name */
        public final Path f16396b;

        /* renamed from: c, reason: collision with root package name */
        public final Matrix f16397c;

        /* renamed from: d, reason: collision with root package name */
        public Paint f16398d;

        /* renamed from: e, reason: collision with root package name */
        public Paint f16399e;

        /* renamed from: f, reason: collision with root package name */
        public PathMeasure f16400f;

        /* renamed from: g, reason: collision with root package name */
        public int f16401g;

        /* renamed from: h, reason: collision with root package name */
        public final d f16402h;

        /* renamed from: i, reason: collision with root package name */
        public float f16403i;

        /* renamed from: j, reason: collision with root package name */
        public float f16404j;

        /* renamed from: k, reason: collision with root package name */
        public float f16405k;

        /* renamed from: l, reason: collision with root package name */
        public float f16406l;

        /* renamed from: m, reason: collision with root package name */
        public int f16407m;

        /* renamed from: n, reason: collision with root package name */
        public String f16408n;

        /* renamed from: o, reason: collision with root package name */
        public Boolean f16409o;

        /* renamed from: p, reason: collision with root package name */
        public final s.a<String, Object> f16410p;

        public g() {
            this.f16397c = new Matrix();
            this.f16403i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16404j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16405k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16406l = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16407m = BaseProgressIndicator.MAX_ALPHA;
            this.f16408n = null;
            this.f16409o = null;
            this.f16410p = new s.a<>();
            this.f16402h = new d();
            this.f16395a = new Path();
            this.f16396b = new Path();
        }

        public static float a(float f10, float f11, float f12, float f13) {
            return (f10 * f13) - (f11 * f12);
        }

        public void b(Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            c(this.f16402h, f16394q, canvas, i10, i11, colorFilter);
        }

        public final void c(d dVar, Matrix matrix, Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            dVar.f16377a.set(matrix);
            dVar.f16377a.preConcat(dVar.f16386j);
            canvas.save();
            for (int i12 = 0; i12 < dVar.f16378b.size(); i12++) {
                e eVar = dVar.f16378b.get(i12);
                if (eVar instanceof d) {
                    c((d) eVar, dVar.f16377a, canvas, i10, i11, colorFilter);
                } else if (eVar instanceof f) {
                    d(dVar, (f) eVar, canvas, i10, i11, colorFilter);
                }
            }
            canvas.restore();
        }

        public final void d(d dVar, f fVar, Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            float f10 = i10 / this.f16405k;
            float f11 = i11 / this.f16406l;
            float min = Math.min(f10, f11);
            Matrix matrix = dVar.f16377a;
            this.f16397c.set(matrix);
            this.f16397c.postScale(f10, f11);
            float e10 = e(matrix);
            if (e10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                return;
            }
            fVar.d(this.f16395a);
            Path path = this.f16395a;
            this.f16396b.reset();
            if (fVar.c()) {
                this.f16396b.setFillType(fVar.f16392c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f16396b.addPath(path, this.f16397c);
                canvas.clipPath(this.f16396b);
                return;
            }
            c cVar = (c) fVar;
            float f12 = cVar.f16371k;
            if (f12 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || cVar.f16372l != 1.0f) {
                float f13 = cVar.f16373m;
                float f14 = (f12 + f13) % 1.0f;
                float f15 = (cVar.f16372l + f13) % 1.0f;
                if (this.f16400f == null) {
                    this.f16400f = new PathMeasure();
                }
                this.f16400f.setPath(this.f16395a, false);
                float length = this.f16400f.getLength();
                float f16 = f14 * length;
                float f17 = f15 * length;
                path.reset();
                if (f16 > f17) {
                    this.f16400f.getSegment(f16, length, path, true);
                    this.f16400f.getSegment(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f17, path, true);
                } else {
                    this.f16400f.getSegment(f16, f17, path, true);
                }
                path.rLineTo(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
            this.f16396b.addPath(path, this.f16397c);
            if (cVar.f16368h.l()) {
                g0.d dVar2 = cVar.f16368h;
                if (this.f16399e == null) {
                    Paint paint = new Paint(1);
                    this.f16399e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f16399e;
                if (dVar2.h()) {
                    Shader f18 = dVar2.f();
                    f18.setLocalMatrix(this.f16397c);
                    paint2.setShader(f18);
                    paint2.setAlpha(Math.round(cVar.f16370j * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(BaseProgressIndicator.MAX_ALPHA);
                    paint2.setColor(i.a(dVar2.e(), cVar.f16370j));
                }
                paint2.setColorFilter(colorFilter);
                this.f16396b.setFillType(cVar.f16392c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f16396b, paint2);
            }
            if (cVar.f16366f.l()) {
                g0.d dVar3 = cVar.f16366f;
                if (this.f16398d == null) {
                    Paint paint3 = new Paint(1);
                    this.f16398d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f16398d;
                Paint.Join join = cVar.f16375o;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = cVar.f16374n;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(cVar.f16376p);
                if (dVar3.h()) {
                    Shader f19 = dVar3.f();
                    f19.setLocalMatrix(this.f16397c);
                    paint4.setShader(f19);
                    paint4.setAlpha(Math.round(cVar.f16369i * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(BaseProgressIndicator.MAX_ALPHA);
                    paint4.setColor(i.a(dVar3.e(), cVar.f16369i));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(cVar.f16367g * min * e10);
                canvas.drawPath(this.f16396b, paint4);
            }
        }

        public final float e(Matrix matrix) {
            float[] fArr = {StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f, 1.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot(fArr[0], fArr[1]);
            float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float a10 = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            return max > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? Math.abs(a10) / max : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }

        public boolean f() {
            if (this.f16409o == null) {
                this.f16409o = Boolean.valueOf(this.f16402h.a());
            }
            return this.f16409o.booleanValue();
        }

        public boolean g(int[] iArr) {
            return this.f16402h.b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f16407m;
        }

        public void setAlpha(float f10) {
            setRootAlpha((int) (f10 * 255.0f));
        }

        public void setRootAlpha(int i10) {
            this.f16407m = i10;
        }

        public g(g gVar) {
            this.f16397c = new Matrix();
            this.f16403i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16404j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16405k = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16406l = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16407m = BaseProgressIndicator.MAX_ALPHA;
            this.f16408n = null;
            this.f16409o = null;
            s.a<String, Object> aVar = new s.a<>();
            this.f16410p = aVar;
            this.f16402h = new d(gVar.f16402h, aVar);
            this.f16395a = new Path(gVar.f16395a);
            this.f16396b = new Path(gVar.f16396b);
            this.f16403i = gVar.f16403i;
            this.f16404j = gVar.f16404j;
            this.f16405k = gVar.f16405k;
            this.f16406l = gVar.f16406l;
            this.f16401g = gVar.f16401g;
            this.f16407m = gVar.f16407m;
            this.f16408n = gVar.f16408n;
            String str = gVar.f16408n;
            if (str != null) {
                aVar.put(str, this);
            }
            this.f16409o = gVar.f16409o;
        }
    }

    /* compiled from: VectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class d extends e {

        /* renamed from: a, reason: collision with root package name */
        public final Matrix f16377a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList<e> f16378b;

        /* renamed from: c, reason: collision with root package name */
        public float f16379c;

        /* renamed from: d, reason: collision with root package name */
        public float f16380d;

        /* renamed from: e, reason: collision with root package name */
        public float f16381e;

        /* renamed from: f, reason: collision with root package name */
        public float f16382f;

        /* renamed from: g, reason: collision with root package name */
        public float f16383g;

        /* renamed from: h, reason: collision with root package name */
        public float f16384h;

        /* renamed from: i, reason: collision with root package name */
        public float f16385i;

        /* renamed from: j, reason: collision with root package name */
        public final Matrix f16386j;

        /* renamed from: k, reason: collision with root package name */
        public int f16387k;

        /* renamed from: l, reason: collision with root package name */
        public int[] f16388l;

        /* renamed from: m, reason: collision with root package name */
        public String f16389m;

        public d(d dVar, s.a<String, Object> aVar) {
            super();
            f bVar;
            this.f16377a = new Matrix();
            this.f16378b = new ArrayList<>();
            this.f16379c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16380d = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16381e = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16382f = 1.0f;
            this.f16383g = 1.0f;
            this.f16384h = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16385i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            Matrix matrix = new Matrix();
            this.f16386j = matrix;
            this.f16389m = null;
            this.f16379c = dVar.f16379c;
            this.f16380d = dVar.f16380d;
            this.f16381e = dVar.f16381e;
            this.f16382f = dVar.f16382f;
            this.f16383g = dVar.f16383g;
            this.f16384h = dVar.f16384h;
            this.f16385i = dVar.f16385i;
            this.f16388l = dVar.f16388l;
            String str = dVar.f16389m;
            this.f16389m = str;
            this.f16387k = dVar.f16387k;
            if (str != null) {
                aVar.put(str, this);
            }
            matrix.set(dVar.f16386j);
            ArrayList<e> arrayList = dVar.f16378b;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                e eVar = arrayList.get(i10);
                if (eVar instanceof d) {
                    this.f16378b.add(new d((d) eVar, aVar));
                } else {
                    if (eVar instanceof c) {
                        bVar = new c((c) eVar);
                    } else if (eVar instanceof b) {
                        bVar = new b((b) eVar);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f16378b.add(bVar);
                    String str2 = bVar.f16391b;
                    if (str2 != null) {
                        aVar.put(str2, bVar);
                    }
                }
            }
        }

        @Override // y1.i.e
        public boolean a() {
            for (int i10 = 0; i10 < this.f16378b.size(); i10++) {
                if (this.f16378b.get(i10).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // y1.i.e
        public boolean b(int[] iArr) {
            boolean z10 = false;
            for (int i10 = 0; i10 < this.f16378b.size(); i10++) {
                z10 |= this.f16378b.get(i10).b(iArr);
            }
            return z10;
        }

        public void c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray s10 = g0.i.s(resources, theme, attributeSet, y1.a.f16325b);
            e(s10, xmlPullParser);
            s10.recycle();
        }

        public final void d() {
            this.f16386j.reset();
            this.f16386j.postTranslate(-this.f16380d, -this.f16381e);
            this.f16386j.postScale(this.f16382f, this.f16383g);
            this.f16386j.postRotate(this.f16379c, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            this.f16386j.postTranslate(this.f16384h + this.f16380d, this.f16385i + this.f16381e);
        }

        public final void e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f16388l = null;
            this.f16379c = g0.i.j(typedArray, xmlPullParser, "rotation", 5, this.f16379c);
            this.f16380d = typedArray.getFloat(1, this.f16380d);
            this.f16381e = typedArray.getFloat(2, this.f16381e);
            this.f16382f = g0.i.j(typedArray, xmlPullParser, "scaleX", 3, this.f16382f);
            this.f16383g = g0.i.j(typedArray, xmlPullParser, "scaleY", 4, this.f16383g);
            this.f16384h = g0.i.j(typedArray, xmlPullParser, "translateX", 6, this.f16384h);
            this.f16385i = g0.i.j(typedArray, xmlPullParser, "translateY", 7, this.f16385i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f16389m = string;
            }
            d();
        }

        public String getGroupName() {
            return this.f16389m;
        }

        public Matrix getLocalMatrix() {
            return this.f16386j;
        }

        public float getPivotX() {
            return this.f16380d;
        }

        public float getPivotY() {
            return this.f16381e;
        }

        public float getRotation() {
            return this.f16379c;
        }

        public float getScaleX() {
            return this.f16382f;
        }

        public float getScaleY() {
            return this.f16383g;
        }

        public float getTranslateX() {
            return this.f16384h;
        }

        public float getTranslateY() {
            return this.f16385i;
        }

        public void setPivotX(float f10) {
            if (f10 != this.f16380d) {
                this.f16380d = f10;
                d();
            }
        }

        public void setPivotY(float f10) {
            if (f10 != this.f16381e) {
                this.f16381e = f10;
                d();
            }
        }

        public void setRotation(float f10) {
            if (f10 != this.f16379c) {
                this.f16379c = f10;
                d();
            }
        }

        public void setScaleX(float f10) {
            if (f10 != this.f16382f) {
                this.f16382f = f10;
                d();
            }
        }

        public void setScaleY(float f10) {
            if (f10 != this.f16383g) {
                this.f16383g = f10;
                d();
            }
        }

        public void setTranslateX(float f10) {
            if (f10 != this.f16384h) {
                this.f16384h = f10;
                d();
            }
        }

        public void setTranslateY(float f10) {
            if (f10 != this.f16385i) {
                this.f16385i = f10;
                d();
            }
        }

        public d() {
            super();
            this.f16377a = new Matrix();
            this.f16378b = new ArrayList<>();
            this.f16379c = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16380d = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16381e = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16382f = 1.0f;
            this.f16383g = 1.0f;
            this.f16384h = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16385i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f16386j = new Matrix();
            this.f16389m = null;
        }
    }
}
