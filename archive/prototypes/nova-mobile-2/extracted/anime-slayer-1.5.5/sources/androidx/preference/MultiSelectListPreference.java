package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.preference.Preference;
import g0.i;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import m1.g;
import m1.n;

/* loaded from: classes.dex */
public class MultiSelectListPreference extends DialogPreference {

    /* renamed from: b0, reason: collision with root package name */
    public CharSequence[] f2571b0;

    /* renamed from: c0, reason: collision with root package name */
    public CharSequence[] f2572c0;

    /* renamed from: d0, reason: collision with root package name */
    public Set<String> f2573d0;

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f2573d0 = new HashSet();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.f10750l0, i10, i11);
        this.f2571b0 = i.q(obtainStyledAttributes, n.f10759o0, n.f10753m0);
        this.f2572c0 = i.q(obtainStyledAttributes, n.f10762p0, n.f10756n0);
        obtainStyledAttributes.recycle();
    }

    public CharSequence[] P0() {
        return this.f2571b0;
    }

    public CharSequence[] Q0() {
        return this.f2572c0;
    }

    public Set<String> R0() {
        return this.f2573d0;
    }

    public void S0(Set<String> set) {
        this.f2573d0.clear();
        this.f2573d0.addAll(set);
        f0(set);
        J();
    }

    @Override // androidx.preference.Preference
    public Object T(TypedArray typedArray, int i10) {
        CharSequence[] textArray = typedArray.getTextArray(i10);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // androidx.preference.Preference
    public void W(Parcelable parcelable) {
        if (parcelable != null && parcelable.getClass().equals(a.class)) {
            a aVar = (a) parcelable;
            super.W(aVar.getSuperState());
            S0(aVar.f2574f);
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
        aVar.f2574f = R0();
        return aVar;
    }

    @Override // androidx.preference.Preference
    public void Y(Object obj) {
        S0(v((Set) obj));
    }

    /* loaded from: classes.dex */
    public static class a extends Preference.b {
        public static final Parcelable.Creator<a> CREATOR = new C0041a();

        /* renamed from: f, reason: collision with root package name */
        public Set<String> f2574f;

        /* renamed from: androidx.preference.MultiSelectListPreference$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0041a implements Parcelable.Creator<a> {
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
            int readInt = parcel.readInt();
            this.f2574f = new HashSet();
            String[] strArr = new String[readInt];
            parcel.readStringArray(strArr);
            Collections.addAll(this.f2574f, strArr);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2574f.size());
            Set<String> set = this.f2574f;
            parcel.writeStringArray((String[]) set.toArray(new String[set.size()]));
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, g.f10682c, R.attr.dialogPreferenceStyle));
    }
}
