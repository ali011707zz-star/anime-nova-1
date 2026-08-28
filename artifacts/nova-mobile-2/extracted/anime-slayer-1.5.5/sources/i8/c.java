package i8;

import android.graphics.drawable.Drawable;
import l8.k;

/* compiled from: CustomTarget.java */
/* loaded from: classes.dex */
public abstract class c<T> implements i<T> {

    /* renamed from: f, reason: collision with root package name */
    public final int f7899f;

    /* renamed from: g, reason: collision with root package name */
    public final int f7900g;

    /* renamed from: h, reason: collision with root package name */
    public h8.d f7901h;

    public c() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // i8.i
    public final void b(h8.d dVar) {
        this.f7901h = dVar;
    }

    @Override // i8.i
    public void c(Drawable drawable) {
    }

    @Override // i8.i
    public final void e(h hVar) {
        hVar.f(this.f7899f, this.f7900g);
    }

    @Override // i8.i
    public void f(Drawable drawable) {
    }

    @Override // i8.i
    public final void h(h hVar) {
    }

    @Override // i8.i
    public final h8.d j() {
        return this.f7901h;
    }

    @Override // e8.i
    public void onDestroy() {
    }

    @Override // e8.i
    public void onStart() {
    }

    @Override // e8.i
    public void onStop() {
    }

    public c(int i10, int i11) {
        if (k.s(i10, i11)) {
            this.f7899f = i10;
            this.f7900g = i11;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + i10 + " and height: " + i11);
    }
}
