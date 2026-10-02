package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import g0.i;
import m1.g;
import m1.n;

/* loaded from: classes.dex */
public abstract class DialogPreference extends Preference {
    public CharSequence V;
    public CharSequence W;
    public Drawable X;
    public CharSequence Y;
    public CharSequence Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f2554a0;

    /* loaded from: classes.dex */
    public interface a {
        <T extends Preference> T i(CharSequence charSequence);
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.D, i10, i11);
        String o10 = i.o(obtainStyledAttributes, n.N, n.E);
        this.V = o10;
        if (o10 == null) {
            this.V = B();
        }
        this.W = i.o(obtainStyledAttributes, n.M, n.F);
        this.X = i.c(obtainStyledAttributes, n.K, n.G);
        this.Y = i.o(obtainStyledAttributes, n.P, n.H);
        this.Z = i.o(obtainStyledAttributes, n.O, n.I);
        this.f2554a0 = i.n(obtainStyledAttributes, n.L, n.J, 0);
        obtainStyledAttributes.recycle();
    }

    public Drawable H0() {
        return this.X;
    }

    public int I0() {
        return this.f2554a0;
    }

    public CharSequence J0() {
        return this.W;
    }

    public CharSequence K0() {
        return this.V;
    }

    public CharSequence L0() {
        return this.Z;
    }

    public CharSequence M0() {
        return this.Y;
    }

    public void N0(CharSequence charSequence) {
        this.V = charSequence;
    }

    public void O0(CharSequence charSequence) {
        this.Z = charSequence;
    }

    @Override // androidx.preference.Preference
    public void Q() {
        x().t(this);
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, g.f10682c, R.attr.dialogPreferenceStyle));
    }
}
