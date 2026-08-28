package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import d.j;
import j.b;

/* compiled from: ActionBar.java */
/* loaded from: classes.dex */
public abstract class a {

    /* compiled from: ActionBar.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(boolean z10);
    }

    /* compiled from: ActionBar.java */
    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class c {
        public abstract CharSequence a();

        public abstract View b();

        public abstract Drawable c();

        public abstract CharSequence d();

        public abstract void e();
    }

    public boolean g() {
        return false;
    }

    public abstract boolean h();

    public abstract void i(boolean z10);

    public abstract int j();

    public abstract Context k();

    public boolean l() {
        return false;
    }

    public void m(Configuration configuration) {
    }

    public void n() {
    }

    public abstract boolean o(int i10, KeyEvent keyEvent);

    public boolean p(KeyEvent keyEvent) {
        return false;
    }

    public boolean q() {
        return false;
    }

    public abstract void r(boolean z10);

    public abstract void s(boolean z10);

    public abstract void t(boolean z10);

    public abstract void u(int i10);

    public abstract void v(Drawable drawable);

    public abstract void w(boolean z10);

    public abstract void x(CharSequence charSequence);

    public abstract void y(CharSequence charSequence);

    public j.b z(b.a aVar) {
        return null;
    }

    /* compiled from: ActionBar.java */
    /* renamed from: androidx.appcompat.app.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0025a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f792a;

        public C0025a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f792a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f5421t);
            this.f792a = obtainStyledAttributes.getInt(j.f5426u, 0);
            obtainStyledAttributes.recycle();
        }

        public C0025a(int i10, int i11) {
            super(i10, i11);
            this.f792a = 0;
            this.f792a = 8388627;
        }

        public C0025a(C0025a c0025a) {
            super((ViewGroup.MarginLayoutParams) c0025a);
            this.f792a = 0;
            this.f792a = c0025a.f792a;
        }

        public C0025a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f792a = 0;
        }
    }
}
