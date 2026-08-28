package o4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.twitter.sdk.android.core.BuildConfig;
import java.util.List;
import okhttp3.internal.cache.DiskLruCache;
import wb.l;

/* compiled from: Genre.kt */
/* loaded from: classes.dex */
public final class d implements Parcelable {

    /* renamed from: id, reason: collision with root package name */
    @ka.c(AppMeasurementSdk.ConditionalUserProperty.VALUE)
    private final String f11740id;

    @ka.c("option")
    private final String name;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<d> CREATOR = new b();

    /* compiled from: Genre.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final List<d> a() {
            return l.m(new d("اثارة", "36"), new d("اطفال", "14"), new d("اكشن", DiskLruCache.VERSION_1), new d("العاب", "11"), new d("ايتشي", "9"), new d("بوليسي", "34"), new d("تاريخي", "12"), new d("جنون", "5"), new d("جوسي", "38"), new d("حريم", "30"), new d("خارق للطبيعة", "32"), new d("خيال", "10"), new d("خيال علمي", "23"), new d("دراما", "8"), new d("رعب", "13"), new d("رومانسي", "21"), new d("رياضي", "27"), new d("ساموراي", "20"), new d("سحر", "15"), new d("سيارات", "3"), new d("سينين", "37"), new d("شريحة من الحياة", "31"), new d("شوجو", "24"), new d("شونين", "25"), new d("شياطين", "6"), new d("عسكري", "33"), new d("غموض", BuildConfig.BUILD_NUMBER), new d("فضاء", "26"), new d("فنون قتالية", "16"), new d("قوى خارقة", "28"), new d("كوميديا", "4"), new d("محاكاة ساخرة", "19"), new d("مدرسي", "22"), new d("مصاص دماء", "29"), new d("مغامرات", "2"), new d("موسيقى", "18"), new d("ميكا", "17"), new d("نفسي", "35"));
        }
    }

    /* compiled from: Genre.kt */
    /* loaded from: classes.dex */
    public static final class b implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final d createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new d(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(String str, String str2) {
        jc.l.f(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        jc.l.f(str2, "id");
        this.name = str;
        this.f11740id = str2;
    }

    public final String a() {
        return this.f11740id;
    }

    public final String c() {
        return this.name;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return jc.l.a(this.name, dVar.name) && jc.l.a(this.f11740id, dVar.f11740id);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.f11740id.hashCode();
    }

    public String toString() {
        return "Genre(name=\"" + this.name + "\", id=\"" + this.f11740id + "\")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeString(this.name);
        parcel.writeString(this.f11740id);
    }
}
