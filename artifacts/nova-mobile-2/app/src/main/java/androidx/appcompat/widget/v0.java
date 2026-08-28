package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import g0.h;

/* compiled from: TintTypedArray.java */
/* loaded from: classes.dex */
public class v0 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1498a;

    /* renamed from: b, reason: collision with root package name */
    public final TypedArray f1499b;

    /* renamed from: c, reason: collision with root package name */
    public TypedValue f1500c;

    public v0(Context context, TypedArray typedArray) {
        this.f1498a = context;
        this.f1499b = typedArray;
    }

    public static v0 t(Context context, int i10, int[] iArr) {
        return new v0(context, context.obtainStyledAttributes(i10, iArr));
    }

    public static v0 u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new v0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static v0 v(Context context, AttributeSet attributeSet, int[] iArr, int i10, int i11) {
        return new v0(context, context.obtainStyledAttributes(attributeSet, iArr, i10, i11));
    }

    public boolean a(int i10, boolean z10) {
        return this.f1499b.getBoolean(i10, z10);
    }

    public int b(int i10, int i11) {
        return this.f1499b.getColor(i10, i11);
    }

    public ColorStateList c(int i10) {
        int resourceId;
        ColorStateList a10;
        return (!this.f1499b.hasValue(i10) || (resourceId = this.f1499b.getResourceId(i10, 0)) == 0 || (a10 = f.a.a(this.f1498a, resourceId)) == null) ? this.f1499b.getColorStateList(i10) : a10;
    }

    public float d(int i10, float f10) {
        return this.f1499b.getDimension(i10, f10);
    }

    public int e(int i10, int i11) {
        return this.f1499b.getDimensionPixelOffset(i10, i11);
    }

    public int f(int i10, int i11) {
        return this.f1499b.getDimensionPixelSize(i10, i11);
    }

    public Drawable g(int i10) {
        int resourceId;
        if (this.f1499b.hasValue(i10) && (resourceId = this.f1499b.getResourceId(i10, 0)) != 0) {
            return f.a.b(this.f1498a, resourceId);
        }
        return this.f1499b.getDrawable(i10);
    }

    public Drawable h(int i10) {
        int resourceId;
        if (!this.f1499b.hasValue(i10) || (resourceId = this.f1499b.getResourceId(i10, 0)) == 0) {
            return null;
        }
        return j.b().d(this.f1498a, resourceId, true);
    }

    public float i(int i10, float f10) {
        return this.f1499b.getFloat(i10, f10);
    }

    public Typeface j(int i10, int i11, h.d dVar) {
        int resourceId = this.f1499b.getResourceId(i10, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1500c == null) {
            this.f1500c = new TypedValue();
        }
        return g0.h.h(this.f1498a, resourceId, this.f1500c, i11, dVar);
    }

    public int k(int i10, int i11) {
        return this.f1499b.getInt(i10, i11);
    }

    public int l(int i10, int i11) {
        return this.f1499b.getInteger(i10, i11);
    }

    public int m(int i10, int i11) {
        return this.f1499b.getLayoutDimension(i10, i11);
    }

    public int n(int i10, int i11) {
        return this.f1499b.getResourceId(i10, i11);
    }

    public String o(int i10) {
        return this.f1499b.getString(i10);
    }

    public CharSequence p(int i10) {
        return this.f1499b.getText(i10);
    }

    public CharSequence[] q(int i10) {
        return this.f1499b.getTextArray(i10);
    }

    public TypedArray r() {
        return this.f1499b;
    }

    public boolean s(int i10) {
        return this.f1499b.hasValue(i10);
    }

    public void w() {
        this.f1499b.recycle();
    }
}
