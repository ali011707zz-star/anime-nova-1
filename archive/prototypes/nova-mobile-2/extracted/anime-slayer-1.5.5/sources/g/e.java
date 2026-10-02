package g;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import g.b;

/* compiled from: StateListDrawable.java */
@SuppressLint({"RestrictedAPI"})
/* loaded from: classes.dex */
public class e extends b {

    /* renamed from: r, reason: collision with root package name */
    public a f6703r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f6704s;

    /* compiled from: StateListDrawable.java */
    /* loaded from: classes.dex */
    public static class a extends b.d {
        public int[][] J;

        public a(a aVar, e eVar, Resources resources) {
            super(aVar, eVar, resources);
            if (aVar != null) {
                this.J = aVar.J;
            } else {
                this.J = new int[f()];
            }
        }

        public int A(int[] iArr) {
            int[][] iArr2 = this.J;
            int h10 = h();
            for (int i10 = 0; i10 < h10; i10++) {
                if (StateSet.stateSetMatches(iArr2[i10], iArr)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new e(this, null);
        }

        @Override // g.b.d
        public void o(int i10, int i11) {
            super.o(i10, i11);
            int[][] iArr = new int[i11];
            System.arraycopy(this.J, 0, iArr, 0, i10);
            this.J = iArr;
        }

        @Override // g.b.d
        public void r() {
            int[][] iArr = this.J;
            int[][] iArr2 = new int[iArr.length];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr3 = this.J;
                iArr2[length] = iArr3[length] != null ? (int[]) iArr3[length].clone() : null;
            }
            this.J = iArr2;
        }

        public int z(int[] iArr, Drawable drawable) {
            int a10 = a(drawable);
            this.J[a10] = iArr;
            return a10;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new e(this, resources);
        }
    }

    public e(a aVar, Resources resources) {
        h(new a(aVar, this, resources));
        onStateChange(getState());
    }

    @Override // g.b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // g.b
    public void h(b.d dVar) {
        super.h(dVar);
        if (dVar instanceof a) {
            this.f6703r = (a) dVar;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // g.b
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public a b() {
        return new a(this.f6703r, this, null);
    }

    public int[] k(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i10 = 0;
        for (int i11 = 0; i11 < attributeCount; i11++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i11);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i12 = i10 + 1;
                if (!attributeSet.getAttributeBooleanValue(i11, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i10] = attributeNameResource;
                i10 = i12;
            }
        }
        return StateSet.trimStateSet(iArr, i10);
    }

    @Override // g.b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f6704s && super.mutate() == this) {
            this.f6703r.r();
            this.f6704s = true;
        }
        return this;
    }

    @Override // g.b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int A = this.f6703r.A(iArr);
        if (A < 0) {
            A = this.f6703r.A(StateSet.WILD_CARD);
        }
        return g(A) || onStateChange;
    }

    public e(a aVar) {
        if (aVar != null) {
            h(aVar);
        }
    }
}
