package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.preference.Preference;
import m1.f;

/* loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {
    public boolean V;
    public CharSequence W;
    public CharSequence X;
    public boolean Y;
    public boolean Z;

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    @Override // androidx.preference.Preference
    public boolean C0() {
        return (this.Z ? this.V : !this.V) || super.C0();
    }

    public boolean H0() {
        return this.V;
    }

    public void I0(boolean z10) {
        boolean z11 = this.V != z10;
        if (z11 || !this.Y) {
            this.V = z10;
            this.Y = true;
            c0(z10);
            if (z11) {
                K(C0());
                J();
            }
        }
    }

    public void J0(boolean z10) {
        this.Z = z10;
    }

    public void K0(CharSequence charSequence) {
        this.X = charSequence;
        if (H0()) {
            return;
        }
        J();
    }

    public void L0(CharSequence charSequence) {
        this.W = charSequence;
        if (H0()) {
            J();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void M0(View view) {
        int i10;
        if (!(view instanceof TextView)) {
            return;
        }
        TextView textView = (TextView) view;
        boolean z10 = true;
        if (this.V && !TextUtils.isEmpty(this.W)) {
            textView.setText(this.W);
        } else {
            if (!this.V && !TextUtils.isEmpty(this.X)) {
                textView.setText(this.X);
            }
            if (z10) {
                CharSequence z11 = z();
                if (!TextUtils.isEmpty(z11)) {
                    textView.setText(z11);
                    z10 = false;
                }
            }
            i10 = z10 ? 8 : 0;
            if (i10 == textView.getVisibility()) {
                textView.setVisibility(i10);
                return;
            }
            return;
        }
        z10 = false;
        if (z10) {
        }
        if (z10) {
        }
        if (i10 == textView.getVisibility()) {
        }
    }

    public void N0(f fVar) {
        M0(fVar.a(R.id.summary));
    }

    @Override // androidx.preference.Preference
    public void Q() {
        super.Q();
        boolean z10 = !H0();
        if (b(Boolean.valueOf(z10))) {
            I0(z10);
        }
    }

    @Override // androidx.preference.Preference
    public Object T(TypedArray typedArray, int i10) {
        return Boolean.valueOf(typedArray.getBoolean(i10, false));
    }

    @Override // androidx.preference.Preference
    public void W(Parcelable parcelable) {
        if (parcelable != null && parcelable.getClass().equals(a.class)) {
            a aVar = (a) parcelable;
            super.W(aVar.getSuperState());
            I0(aVar.f2625f);
            return;
        }
        super.W(parcelable);
    }

    @Override // androidx.preference.Preference
    public Parcelable X() {
        Parcelable X = super.X();
        if (G()) {
            return X;
        }
        a aVar = new a(X);
        aVar.f2625f = H0();
        return aVar;
    }

    @Override // androidx.preference.Preference
    public void Y(Object obj) {
        if (obj == null) {
            obj = Boolean.FALSE;
        }
        I0(s(((Boolean) obj).booleanValue()));
    }

    /* loaded from: classes.dex */
    public static class a extends Preference.b {
        public static final Parcelable.Creator<a> CREATOR = new C0042a();

        /* renamed from: f, reason: collision with root package name */
        public boolean f2625f;

        /* renamed from: androidx.preference.TwoStatePreference$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0042a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public a createFromParcel(Parcel parcel) {
                return new a(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public a[] newArray(int i10) {
                return new a[i10];
            }
        }

        public a(Parcel parcel) {
            super(parcel);
            this.f2625f = parcel.readInt() == 1;
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2625f ? 1 : 0);
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
