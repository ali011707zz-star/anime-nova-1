package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.preference.Preference;
import g0.i;
import m1.g;
import m1.l;
import m1.n;

/* loaded from: classes.dex */
public class ListPreference extends DialogPreference {

    /* renamed from: b0, reason: collision with root package name */
    public CharSequence[] f2564b0;

    /* renamed from: c0, reason: collision with root package name */
    public CharSequence[] f2565c0;

    /* renamed from: d0, reason: collision with root package name */
    public String f2566d0;

    /* renamed from: e0, reason: collision with root package name */
    public String f2567e0;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f2568f0;

    /* loaded from: classes.dex */
    public static final class b implements Preference.g<ListPreference> {

        /* renamed from: a, reason: collision with root package name */
        public static b f2570a;

        public static b b() {
            if (f2570a == null) {
                f2570a = new b();
            }
            return f2570a;
        }

        @Override // androidx.preference.Preference.g
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public CharSequence a(ListPreference listPreference) {
            if (TextUtils.isEmpty(listPreference.R0())) {
                return listPreference.i().getString(l.f10707c);
            }
            return listPreference.R0();
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.f10720c0, i10, i11);
        this.f2564b0 = i.q(obtainStyledAttributes, n.f10732f0, n.f10724d0);
        this.f2565c0 = i.q(obtainStyledAttributes, n.f10735g0, n.f10728e0);
        int i12 = n.f10738h0;
        if (i.b(obtainStyledAttributes, i12, i12, false)) {
            y0(b.b());
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, n.f10771s0, i10, i11);
        this.f2567e0 = i.o(obtainStyledAttributes2, n.f10713a1, n.A0);
        obtainStyledAttributes2.recycle();
    }

    public int P0(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.f2565c0) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (this.f2565c0[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    public CharSequence[] Q0() {
        return this.f2564b0;
    }

    public CharSequence R0() {
        CharSequence[] charSequenceArr;
        int U0 = U0();
        if (U0 < 0 || (charSequenceArr = this.f2564b0) == null) {
            return null;
        }
        return charSequenceArr[U0];
    }

    public CharSequence[] S0() {
        return this.f2565c0;
    }

    @Override // androidx.preference.Preference
    public Object T(TypedArray typedArray, int i10) {
        return typedArray.getString(i10);
    }

    public String T0() {
        return this.f2566d0;
    }

    public final int U0() {
        return P0(this.f2566d0);
    }

    public void V0(CharSequence[] charSequenceArr) {
        this.f2564b0 = charSequenceArr;
    }

    @Override // androidx.preference.Preference
    public void W(Parcelable parcelable) {
        if (parcelable != null && parcelable.getClass().equals(a.class)) {
            a aVar = (a) parcelable;
            super.W(aVar.getSuperState());
            X0(aVar.f2569f);
            return;
        }
        super.W(parcelable);
    }

    public void W0(CharSequence[] charSequenceArr) {
        this.f2565c0 = charSequenceArr;
    }

    @Override // androidx.preference.Preference
    public Parcelable X() {
        Parcelable X = super.X();
        if (G()) {
            return X;
        }
        a aVar = new a(X);
        aVar.f2569f = T0();
        return aVar;
    }

    public void X0(String str) {
        boolean z10 = !TextUtils.equals(this.f2566d0, str);
        if (z10 || !this.f2568f0) {
            this.f2566d0 = str;
            this.f2568f0 = true;
            e0(str);
            if (z10) {
                J();
            }
        }
    }

    @Override // androidx.preference.Preference
    public void Y(Object obj) {
        X0(u((String) obj));
    }

    @Override // androidx.preference.Preference
    public void x0(CharSequence charSequence) {
        super.x0(charSequence);
        if (charSequence == null && this.f2567e0 != null) {
            this.f2567e0 = null;
        } else {
            if (charSequence == null || charSequence.equals(this.f2567e0)) {
                return;
            }
            this.f2567e0 = charSequence.toString();
        }
    }

    @Override // androidx.preference.Preference
    public CharSequence z() {
        if (A() != null) {
            return A().a(this);
        }
        CharSequence R0 = R0();
        CharSequence z10 = super.z();
        String str = this.f2567e0;
        if (str == null) {
            return z10;
        }
        Object[] objArr = new Object[1];
        if (R0 == null) {
            R0 = "";
        }
        objArr[0] = R0;
        String format = String.format(str, objArr);
        return TextUtils.equals(format, z10) ? z10 : format;
    }

    /* loaded from: classes.dex */
    public static class a extends Preference.b {
        public static final Parcelable.Creator<a> CREATOR = new C0040a();

        /* renamed from: f, reason: collision with root package name */
        public String f2569f;

        /* renamed from: androidx.preference.ListPreference$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0040a implements Parcelable.Creator<a> {
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
            this.f2569f = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f2569f);
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, g.f10682c, R.attr.dialogPreferenceStyle));
    }

    public ListPreference(Context context) {
        this(context, null);
    }
}
