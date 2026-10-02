package y8;

import android.graphics.drawable.Drawable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: BaseEntry.java */
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: f, reason: collision with root package name */
    public float f16754f;

    /* renamed from: g, reason: collision with root package name */
    public Object f16755g;

    /* renamed from: h, reason: collision with root package name */
    public Drawable f16756h;

    public g() {
        this.f16754f = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f16755g = null;
        this.f16756h = null;
    }

    public Object a() {
        return this.f16755g;
    }

    public Drawable c() {
        return this.f16756h;
    }

    public float e() {
        return this.f16754f;
    }

    public void f(Object obj) {
        this.f16755g = obj;
    }

    public void g(float f10) {
        this.f16754f = f10;
    }

    public g(float f10) {
        this.f16754f = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f16755g = null;
        this.f16756h = null;
        this.f16754f = f10;
    }
}
