package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.x;
import androidx.lifecycle.k;
import java.util.ArrayList;

/* compiled from: BackStackState.java */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: f, reason: collision with root package name */
    public final int[] f2125f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList<String> f2126g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f2127h;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f2128i;

    /* renamed from: j, reason: collision with root package name */
    public final int f2129j;

    /* renamed from: k, reason: collision with root package name */
    public final String f2130k;

    /* renamed from: l, reason: collision with root package name */
    public final int f2131l;

    /* renamed from: m, reason: collision with root package name */
    public final int f2132m;

    /* renamed from: n, reason: collision with root package name */
    public final CharSequence f2133n;

    /* renamed from: o, reason: collision with root package name */
    public final int f2134o;

    /* renamed from: p, reason: collision with root package name */
    public final CharSequence f2135p;

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList<String> f2136q;

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList<String> f2137r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f2138s;

    /* compiled from: BackStackState.java */
    /* loaded from: classes.dex */
    public class a implements Parcelable.Creator<b> {
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

    public b(androidx.fragment.app.a aVar) {
        int size = aVar.f2301c.size();
        this.f2125f = new int[size * 5];
        if (aVar.f2307i) {
            this.f2126g = new ArrayList<>(size);
            this.f2127h = new int[size];
            this.f2128i = new int[size];
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                x.a aVar2 = aVar.f2301c.get(i10);
                int i12 = i11 + 1;
                this.f2125f[i11] = aVar2.f2318a;
                ArrayList<String> arrayList = this.f2126g;
                Fragment fragment = aVar2.f2319b;
                arrayList.add(fragment != null ? fragment.mWho : null);
                int[] iArr = this.f2125f;
                int i13 = i12 + 1;
                iArr[i12] = aVar2.f2320c;
                int i14 = i13 + 1;
                iArr[i13] = aVar2.f2321d;
                int i15 = i14 + 1;
                iArr[i14] = aVar2.f2322e;
                iArr[i15] = aVar2.f2323f;
                this.f2127h[i10] = aVar2.f2324g.ordinal();
                this.f2128i[i10] = aVar2.f2325h.ordinal();
                i10++;
                i11 = i15 + 1;
            }
            this.f2129j = aVar.f2306h;
            this.f2130k = aVar.f2309k;
            this.f2131l = aVar.f2112v;
            this.f2132m = aVar.f2310l;
            this.f2133n = aVar.f2311m;
            this.f2134o = aVar.f2312n;
            this.f2135p = aVar.f2313o;
            this.f2136q = aVar.f2314p;
            this.f2137r = aVar.f2315q;
            this.f2138s = aVar.f2316r;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    public androidx.fragment.app.a a(FragmentManager fragmentManager) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
        int i10 = 0;
        int i11 = 0;
        while (i10 < this.f2125f.length) {
            x.a aVar2 = new x.a();
            int i12 = i10 + 1;
            aVar2.f2318a = this.f2125f[i10];
            if (FragmentManager.G0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Instantiate ");
                sb2.append(aVar);
                sb2.append(" op #");
                sb2.append(i11);
                sb2.append(" base fragment #");
                sb2.append(this.f2125f[i12]);
            }
            String str = this.f2126g.get(i11);
            if (str != null) {
                aVar2.f2319b = fragmentManager.g0(str);
            } else {
                aVar2.f2319b = null;
            }
            aVar2.f2324g = k.c.values()[this.f2127h[i11]];
            aVar2.f2325h = k.c.values()[this.f2128i[i11]];
            int[] iArr = this.f2125f;
            int i13 = i12 + 1;
            int i14 = iArr[i12];
            aVar2.f2320c = i14;
            int i15 = i13 + 1;
            int i16 = iArr[i13];
            aVar2.f2321d = i16;
            int i17 = i15 + 1;
            int i18 = iArr[i15];
            aVar2.f2322e = i18;
            int i19 = iArr[i17];
            aVar2.f2323f = i19;
            aVar.f2302d = i14;
            aVar.f2303e = i16;
            aVar.f2304f = i18;
            aVar.f2305g = i19;
            aVar.g(aVar2);
            i11++;
            i10 = i17 + 1;
        }
        aVar.f2306h = this.f2129j;
        aVar.f2309k = this.f2130k;
        aVar.f2112v = this.f2131l;
        aVar.f2307i = true;
        aVar.f2310l = this.f2132m;
        aVar.f2311m = this.f2133n;
        aVar.f2312n = this.f2134o;
        aVar.f2313o = this.f2135p;
        aVar.f2314p = this.f2136q;
        aVar.f2315q = this.f2137r;
        aVar.f2316r = this.f2138s;
        aVar.v(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeIntArray(this.f2125f);
        parcel.writeStringList(this.f2126g);
        parcel.writeIntArray(this.f2127h);
        parcel.writeIntArray(this.f2128i);
        parcel.writeInt(this.f2129j);
        parcel.writeString(this.f2130k);
        parcel.writeInt(this.f2131l);
        parcel.writeInt(this.f2132m);
        TextUtils.writeToParcel(this.f2133n, parcel, 0);
        parcel.writeInt(this.f2134o);
        TextUtils.writeToParcel(this.f2135p, parcel, 0);
        parcel.writeStringList(this.f2136q);
        parcel.writeStringList(this.f2137r);
        parcel.writeInt(this.f2138s ? 1 : 0);
    }

    public b(Parcel parcel) {
        this.f2125f = parcel.createIntArray();
        this.f2126g = parcel.createStringArrayList();
        this.f2127h = parcel.createIntArray();
        this.f2128i = parcel.createIntArray();
        this.f2129j = parcel.readInt();
        this.f2130k = parcel.readString();
        this.f2131l = parcel.readInt();
        this.f2132m = parcel.readInt();
        this.f2133n = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2134o = parcel.readInt();
        this.f2135p = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2136q = parcel.createStringArrayList();
        this.f2137r = parcel.createStringArrayList();
        this.f2138s = parcel.readInt() != 0;
    }
}
