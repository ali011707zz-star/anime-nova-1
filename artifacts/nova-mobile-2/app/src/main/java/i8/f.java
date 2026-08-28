package i8;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import j8.d;

/* compiled from: ImageViewTarget.java */
/* loaded from: classes.dex */
public abstract class f<Z> extends j<ImageView, Z> implements d.a {

    /* renamed from: m, reason: collision with root package name */
    public Animatable f7914m;

    public f(ImageView imageView) {
        super(imageView);
    }

    @Override // j8.d.a
    public void a(Drawable drawable) {
        ((ImageView) this.f7917f).setImageDrawable(drawable);
    }

    @Override // i8.a, i8.i
    public void c(Drawable drawable) {
        super.c(drawable);
        q(null);
        a(drawable);
    }

    @Override // j8.d.a
    public Drawable d() {
        return ((ImageView) this.f7917f).getDrawable();
    }

    @Override // i8.j, i8.a, i8.i
    public void f(Drawable drawable) {
        super.f(drawable);
        q(null);
        a(drawable);
    }

    @Override // i8.i
    public void i(Z z10, j8.d<? super Z> dVar) {
        if (dVar != null && dVar.a(z10, this)) {
            o(z10);
        } else {
            q(z10);
        }
    }

    @Override // i8.j, i8.a, i8.i
    public void k(Drawable drawable) {
        super.k(drawable);
        Animatable animatable = this.f7914m;
        if (animatable != null) {
            animatable.stop();
        }
        q(null);
        a(drawable);
    }

    public final void o(Z z10) {
        if (z10 instanceof Animatable) {
            Animatable animatable = (Animatable) z10;
            this.f7914m = animatable;
            animatable.start();
            return;
        }
        this.f7914m = null;
    }

    @Override // i8.a, e8.i
    public void onStart() {
        Animatable animatable = this.f7914m;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // i8.a, e8.i
    public void onStop() {
        Animatable animatable = this.f7914m;
        if (animatable != null) {
            animatable.stop();
        }
    }

    public abstract void p(Z z10);

    public final void q(Z z10) {
        p(z10);
        o(z10);
    }
}
