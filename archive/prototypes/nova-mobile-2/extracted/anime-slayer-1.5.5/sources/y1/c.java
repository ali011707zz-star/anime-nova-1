package y1;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: AnimatedVectorDrawableCompat.java */
/* loaded from: classes.dex */
public class c extends h implements Animatable {

    /* renamed from: g, reason: collision with root package name */
    public b f16337g;

    /* renamed from: h, reason: collision with root package name */
    public Context f16338h;

    /* renamed from: i, reason: collision with root package name */
    public ArgbEvaluator f16339i;

    /* renamed from: j, reason: collision with root package name */
    public Animator.AnimatorListener f16340j;

    /* renamed from: k, reason: collision with root package name */
    public ArrayList<y1.b> f16341k;

    /* renamed from: l, reason: collision with root package name */
    public final Drawable.Callback f16342l;

    /* compiled from: AnimatedVectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public class a implements Drawable.Callback {
        public a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            c.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
            c.this.scheduleSelf(runnable, j10);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            c.this.unscheduleSelf(runnable);
        }
    }

    /* compiled from: AnimatedVectorDrawableCompat.java */
    /* loaded from: classes.dex */
    public static class b extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public int f16344a;

        /* renamed from: b, reason: collision with root package name */
        public i f16345b;

        /* renamed from: c, reason: collision with root package name */
        public AnimatorSet f16346c;

        /* renamed from: d, reason: collision with root package name */
        public ArrayList<Animator> f16347d;

        /* renamed from: e, reason: collision with root package name */
        public s.a<Animator, String> f16348e;

        public b(Context context, b bVar, Drawable.Callback callback, Resources resources) {
            if (bVar != null) {
                this.f16344a = bVar.f16344a;
                i iVar = bVar.f16345b;
                if (iVar != null) {
                    Drawable.ConstantState constantState = iVar.getConstantState();
                    if (resources != null) {
                        this.f16345b = (i) constantState.newDrawable(resources);
                    } else {
                        this.f16345b = (i) constantState.newDrawable();
                    }
                    i iVar2 = (i) this.f16345b.mutate();
                    this.f16345b = iVar2;
                    iVar2.setCallback(callback);
                    this.f16345b.setBounds(bVar.f16345b.getBounds());
                    this.f16345b.h(false);
                }
                ArrayList<Animator> arrayList = bVar.f16347d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f16347d = new ArrayList<>(size);
                    this.f16348e = new s.a<>(size);
                    for (int i10 = 0; i10 < size; i10++) {
                        Animator animator = bVar.f16347d.get(i10);
                        Animator clone = animator.clone();
                        String str = bVar.f16348e.get(animator);
                        clone.setTarget(this.f16345b.d(str));
                        this.f16347d.add(clone);
                        this.f16348e.put(clone, str);
                    }
                    a();
                }
            }
        }

        public void a() {
            if (this.f16346c == null) {
                this.f16346c = new AnimatorSet();
            }
            this.f16346c.playTogether(this.f16347d);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f16344a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    public c() {
        this(null, null, null);
    }

    public static c a(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        c cVar = new c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            i0.a.a(drawable, theme);
        }
    }

    public final void b(String str, Animator animator) {
        animator.setTarget(this.f16337g.f16345b.d(str));
        if (Build.VERSION.SDK_INT < 21) {
            c(animator);
        }
        b bVar = this.f16337g;
        if (bVar.f16347d == null) {
            bVar.f16347d = new ArrayList<>();
            this.f16337g.f16348e = new s.a<>();
        }
        this.f16337g.f16347d.add(animator);
        this.f16337g.f16348e.put(animator, str);
    }

    public final void c(Animator animator) {
        ArrayList<Animator> childAnimations;
        if ((animator instanceof AnimatorSet) && (childAnimations = ((AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i10 = 0; i10 < childAnimations.size(); i10++) {
                c(childAnimations.get(i10));
            }
        }
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f16339i == null) {
                    this.f16339i = new ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f16339i);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return i0.a.b(drawable);
        }
        return false;
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f16337g.f16345b.draw(canvas);
        if (this.f16337g.f16346c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return i0.a.d(drawable);
        }
        return this.f16337g.f16345b.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f16337g.f16344a;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return i0.a.e(drawable);
        }
        return this.f16337g.f16345b.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f16354f == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new C0426c(this.f16354f.getConstantState());
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
        return this.f16337g.f16345b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return this.f16337g.f16345b.getIntrinsicWidth();
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
        return this.f16337g.f16345b.getOpacity();
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

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            i0.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray s10 = g0.i.s(resources, theme, attributeSet, y1.a.f16328e);
                    int resourceId = s10.getResourceId(0, 0);
                    if (resourceId != 0) {
                        i b10 = i.b(resources, resourceId, theme);
                        b10.h(false);
                        b10.setCallback(this.f16342l);
                        i iVar = this.f16337g.f16345b;
                        if (iVar != null) {
                            iVar.setCallback(null);
                        }
                        this.f16337g.f16345b = b10;
                    }
                    s10.recycle();
                } else if ("target".equals(name)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, y1.a.f16329f);
                    String string = obtainAttributes.getString(0);
                    int resourceId2 = obtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f16338h;
                        if (context != null) {
                            b(string, e.i(context, resourceId2));
                        } else {
                            obtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                    }
                    obtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f16337g.a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return i0.a.h(drawable);
        }
        return this.f16337g.f16345b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return ((AnimatedVectorDrawable) drawable).isRunning();
        }
        return this.f16337g.f16346c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return this.f16337g.f16345b.isStateful();
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
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f16337g.f16345b.setBounds(rect);
        }
    }

    @Override // y1.h, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i10) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.setLevel(i10);
        }
        return this.f16337g.f16345b.setLevel(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        return this.f16337g.f16345b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.setAlpha(i10);
        } else {
            this.f16337g.f16345b.setAlpha(i10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            i0.a.j(drawable, z10);
        } else {
            this.f16337g.f16345b.setAutoMirrored(z10);
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
            this.f16337g.f16345b.setTint(i10);
        }
    }

    @Override // android.graphics.drawable.Drawable, i0.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            i0.a.o(drawable, colorStateList);
        } else {
            this.f16337g.f16345b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, i0.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            i0.a.p(drawable, mode);
        } else {
            this.f16337g.f16345b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            return drawable.setVisible(z10, z11);
        }
        this.f16337g.f16345b.setVisible(z10, z11);
        return super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else {
            if (this.f16337g.f16346c.isStarted()) {
                return;
            }
            this.f16337g.f16346c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f16337g.f16346c.end();
        }
    }

    public c(Context context) {
        this(context, null, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f16354f;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f16337g.f16345b.setColorFilter(colorFilter);
        }
    }

    /* compiled from: AnimatedVectorDrawableCompat.java */
    /* renamed from: y1.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0426c extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final Drawable.ConstantState f16349a;

        public C0426c(Drawable.ConstantState constantState) {
            this.f16349a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f16349a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f16349a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            c cVar = new c();
            Drawable newDrawable = this.f16349a.newDrawable();
            cVar.f16354f = newDrawable;
            newDrawable.setCallback(cVar.f16342l);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            c cVar = new c();
            Drawable newDrawable = this.f16349a.newDrawable(resources);
            cVar.f16354f = newDrawable;
            newDrawable.setCallback(cVar.f16342l);
            return cVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            Drawable newDrawable = this.f16349a.newDrawable(resources, theme);
            cVar.f16354f = newDrawable;
            newDrawable.setCallback(cVar.f16342l);
            return cVar;
        }
    }

    public c(Context context, b bVar, Resources resources) {
        this.f16339i = null;
        this.f16340j = null;
        this.f16341k = null;
        a aVar = new a();
        this.f16342l = aVar;
        this.f16338h = context;
        if (bVar != null) {
            this.f16337g = bVar;
        } else {
            this.f16337g = new b(context, bVar, aVar, resources);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
