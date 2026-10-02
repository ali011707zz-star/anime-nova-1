package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.EditText;
import androidx.preference.Preference;
import g0.i;
import m1.g;
import m1.l;
import m1.n;

/* loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {

    /* renamed from: b0, reason: collision with root package name */
    public String f2560b0;

    /* renamed from: c0, reason: collision with root package name */
    public a f2561c0;

    /* loaded from: classes.dex */
    public interface a {
        void a(EditText editText);
    }

    /* loaded from: classes.dex */
    public static final class c implements Preference.g<EditTextPreference> {

        /* renamed from: a, reason: collision with root package name */
        public static c f2563a;

        public static c b() {
            if (f2563a == null) {
                f2563a = new c();
            }
            return f2563a;
        }

        @Override // androidx.preference.Preference.g
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public CharSequence a(EditTextPreference editTextPreference) {
            if (TextUtils.isEmpty(editTextPreference.Q0())) {
                return editTextPreference.i().getString(l.f10707c);
            }
            return editTextPreference.Q0();
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.R, i10, i11);
        int i12 = n.S;
        if (i.b(obtainStyledAttributes, i12, i12, false)) {
            y0(c.b());
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public boolean C0() {
        return TextUtils.isEmpty(this.f2560b0) || super.C0();
    }

    public a P0() {
        return this.f2561c0;
    }

    public String Q0() {
        return this.f2560b0;
    }

    public void R0(String str) {
        boolean C0 = C0();
        this.f2560b0 = str;
        e0(str);
        boolean C02 = C0();
        if (C02 != C0) {
            K(C02);
        }
        J();
    }

    @Override // androidx.preference.Preference
    public Object T(TypedArray typedArray, int i10) {
        return typedArray.getString(i10);
    }

    @Override // androidx.preference.Preference
    public void W(Parcelable parcelable) {
        if (parcelable != null && parcelable.getClass().equals(b.class)) {
            b bVar = (b) parcelable;
            super.W(bVar.getSuperState());
            R0(bVar.f2562f);
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
        b bVar = new b(X);
        bVar.f2562f = Q0();
        return bVar;
    }

    @Override // androidx.preference.Preference
    public void Y(Object obj) {
        R0(u((String) obj));
    }

    /* loaded from: classes.dex */
    public static class b extends Preference.b {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public String f2562f;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(Parcel parcel) {
            super(parcel);
            this.f2562f = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f2562f);
        }

        public b(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, g.f10684e, R.attr.editTextPreferenceStyle));
    }
}
