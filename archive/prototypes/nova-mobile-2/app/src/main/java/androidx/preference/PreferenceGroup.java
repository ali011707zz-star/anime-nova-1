package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.preference.Preference;
import com.google.android.gms.common.api.Api;
import g0.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import m1.n;
import s.g;

/* loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {
    public final g<String, Long> V;
    public final Handler W;
    public List<Preference> X;
    public boolean Y;
    public int Z;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f2598a0;

    /* renamed from: b0, reason: collision with root package name */
    public int f2599b0;

    /* renamed from: c0, reason: collision with root package name */
    public b f2600c0;

    /* renamed from: d0, reason: collision with root package name */
    public final Runnable f2601d0;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                PreferenceGroup.this.V.clear();
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.V = new g<>();
        this.W = new Handler();
        this.Y = true;
        this.Z = 0;
        this.f2598a0 = false;
        this.f2599b0 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f2600c0 = null;
        this.f2601d0 = new a();
        this.X = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.f10745j1, i10, i11);
        int i12 = n.f10751l1;
        this.Y = i.b(obtainStyledAttributes, i12, i12, true);
        int i13 = n.f10748k1;
        if (obtainStyledAttributes.hasValue(i13)) {
            P0(i.d(obtainStyledAttributes, i13, i13, Api.BaseClientBuilder.API_PRIORITY_OTHER));
        }
        obtainStyledAttributes.recycle();
    }

    public boolean H0(Preference preference) {
        long g10;
        if (this.X.contains(preference)) {
            return true;
        }
        if (preference.o() != null) {
            PreferenceGroup preferenceGroup = this;
            while (preferenceGroup.r() != null) {
                preferenceGroup = preferenceGroup.r();
            }
            String o10 = preference.o();
            if (preferenceGroup.I0(o10) != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Found duplicated key: \"");
                sb2.append(o10);
                sb2.append("\". This can cause unintended behaviour, please use unique keys for every preference.");
            }
        }
        if (preference.q() == Integer.MAX_VALUE) {
            if (this.Y) {
                int i10 = this.Z;
                this.Z = i10 + 1;
                preference.v0(i10);
            }
            if (preference instanceof PreferenceGroup) {
                ((PreferenceGroup) preference).Q0(this.Y);
            }
        }
        int binarySearch = Collections.binarySearch(this.X, preference);
        if (binarySearch < 0) {
            binarySearch = (binarySearch * (-1)) - 1;
        }
        if (!O0(preference)) {
            return false;
        }
        synchronized (this) {
            this.X.add(binarySearch, preference);
        }
        e x10 = x();
        String o11 = preference.o();
        if (o11 != null && this.V.containsKey(o11)) {
            g10 = this.V.get(o11).longValue();
            this.V.remove(o11);
        } else {
            g10 = x10.g();
        }
        preference.O(x10, g10);
        preference.a(this);
        if (this.f2598a0) {
            preference.M();
        }
        L();
        return true;
    }

    public <T extends Preference> T I0(CharSequence charSequence) {
        T t10;
        if (charSequence != null) {
            if (TextUtils.equals(o(), charSequence)) {
                return this;
            }
            int M0 = M0();
            for (int i10 = 0; i10 < M0; i10++) {
                PreferenceGroup preferenceGroup = (T) L0(i10);
                if (TextUtils.equals(preferenceGroup.o(), charSequence)) {
                    return preferenceGroup;
                }
                if ((preferenceGroup instanceof PreferenceGroup) && (t10 = (T) preferenceGroup.I0(charSequence)) != null) {
                    return t10;
                }
            }
            return null;
        }
        throw new IllegalArgumentException("Key cannot be null");
    }

    public int J0() {
        return this.f2599b0;
    }

    @Override // androidx.preference.Preference
    public void K(boolean z10) {
        super.K(z10);
        int M0 = M0();
        for (int i10 = 0; i10 < M0; i10++) {
            L0(i10).V(this, z10);
        }
    }

    public b K0() {
        return this.f2600c0;
    }

    public Preference L0(int i10) {
        return this.X.get(i10);
    }

    @Override // androidx.preference.Preference
    public void M() {
        super.M();
        this.f2598a0 = true;
        int M0 = M0();
        for (int i10 = 0; i10 < M0; i10++) {
            L0(i10).M();
        }
    }

    public int M0() {
        return this.X.size();
    }

    public boolean N0() {
        return true;
    }

    public boolean O0(Preference preference) {
        preference.V(this, C0());
        return true;
    }

    public void P0(int i10) {
        if (i10 != Integer.MAX_VALUE && !D()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getClass().getSimpleName());
            sb2.append(" should have a key defined if it contains an expandable preference");
        }
        this.f2599b0 = i10;
    }

    public void Q0(boolean z10) {
        this.Y = z10;
    }

    public void R0() {
        synchronized (this) {
            Collections.sort(this.X);
        }
    }

    @Override // androidx.preference.Preference
    public void S() {
        super.S();
        this.f2598a0 = false;
        int M0 = M0();
        for (int i10 = 0; i10 < M0; i10++) {
            L0(i10).S();
        }
    }

    @Override // androidx.preference.Preference
    public void W(Parcelable parcelable) {
        if (parcelable != null && parcelable.getClass().equals(c.class)) {
            c cVar = (c) parcelable;
            this.f2599b0 = cVar.f2603f;
            super.W(cVar.getSuperState());
            return;
        }
        super.W(parcelable);
    }

    @Override // androidx.preference.Preference
    public Parcelable X() {
        return new c(super.X(), this.f2599b0);
    }

    @Override // androidx.preference.Preference
    public void e(Bundle bundle) {
        super.e(bundle);
        int M0 = M0();
        for (int i10 = 0; i10 < M0; i10++) {
            L0(i10).e(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public void f(Bundle bundle) {
        super.f(bundle);
        int M0 = M0();
        for (int i10 = 0; i10 < M0; i10++) {
            L0(i10).f(bundle);
        }
    }

    /* loaded from: classes.dex */
    public static class c extends Preference.b {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public int f2603f;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(Parcel parcel) {
            super(parcel);
            this.f2603f = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2603f);
        }

        public c(Parcelable parcelable, int i10) {
            super(parcelable);
            this.f2603f = i10;
        }
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
