package r4;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: AppConfig.kt */
/* loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0314a();
    private final d details;
    private final e episode;
    private final j profile;
    private final j server;
    private final k start;

    /* compiled from: AppConfig.kt */
    /* renamed from: r4.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0314a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final a createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new a(parcel.readInt() == 0 ? null : k.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : d.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : e.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : j.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? j.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(k kVar, d dVar, e eVar, j jVar, j jVar2) {
        this.start = kVar;
        this.details = dVar;
        this.episode = eVar;
        this.profile = jVar;
        this.server = jVar2;
    }

    public final d a() {
        return this.details;
    }

    public final e c() {
        return this.episode;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final j e() {
        return this.profile;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return jc.l.a(this.start, aVar.start) && jc.l.a(this.details, aVar.details) && jc.l.a(this.episode, aVar.episode) && jc.l.a(this.profile, aVar.profile) && jc.l.a(this.server, aVar.server);
    }

    public final j f() {
        return this.server;
    }

    public final k g() {
        return this.start;
    }

    public int hashCode() {
        k kVar = this.start;
        int hashCode = (kVar == null ? 0 : kVar.hashCode()) * 31;
        d dVar = this.details;
        int hashCode2 = (hashCode + (dVar == null ? 0 : dVar.hashCode())) * 31;
        e eVar = this.episode;
        int hashCode3 = (hashCode2 + (eVar == null ? 0 : eVar.hashCode())) * 31;
        j jVar = this.profile;
        int hashCode4 = (hashCode3 + (jVar == null ? 0 : jVar.hashCode())) * 31;
        j jVar2 = this.server;
        return hashCode4 + (jVar2 != null ? jVar2.hashCode() : 0);
    }

    public String toString() {
        return "AppAds(start=" + this.start + ", details=" + this.details + ", episode=" + this.episode + ", profile=" + this.profile + ", server=" + this.server + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        k kVar = this.start;
        if (kVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            kVar.writeToParcel(parcel, i10);
        }
        d dVar = this.details;
        if (dVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            dVar.writeToParcel(parcel, i10);
        }
        e eVar = this.episode;
        if (eVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            eVar.writeToParcel(parcel, i10);
        }
        j jVar = this.profile;
        if (jVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            jVar.writeToParcel(parcel, i10);
        }
        j jVar2 = this.server;
        if (jVar2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            jVar2.writeToParcel(parcel, i10);
        }
    }
}
