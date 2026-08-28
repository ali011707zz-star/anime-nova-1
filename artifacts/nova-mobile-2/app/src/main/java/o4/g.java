package o4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.twitter.sdk.android.core.BuildConfig;
import java.util.List;
import wb.l;

/* compiled from: Studio.kt */
/* loaded from: classes.dex */
public final class g implements Parcelable {

    /* renamed from: id, reason: collision with root package name */
    @ka.c(AppMeasurementSdk.ConditionalUserProperty.VALUE)
    private final String f11741id;

    @ka.c("option")
    private final String name;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<g> CREATOR = new b();

    /* compiled from: Studio.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final List<g> a() {
            return l.m(new g("8bit", "124"), new g("A-1 Pictures", "82"), new g("AIC", "27"), new g("Artland", "17"), new g("Bandai Namco Pictures", "125"), new g("Bee Train", "35"), new g("Bones", "41"), new g("Brain's Base", "33"), new g("CloverWorks", "192"), new g("David Production", "93"), new g("Diomedea", "84"), new g("Doga Kobo", "71"), new g("feel.", "48"), new g("Gainax", "20"), new g("Gallop", "13"), new g("GoHands", "126"), new g("Gonzo", "39"), new g("Group TAC", "8"), new g("J.C.Staff", "22"), new g("Kinema Citrus", "92"), new g("Kyoto Animation", "47"), new g("Lerche", "108"), new g("LIDENFILMS", "134"), new g("Madhouse", "24"), new g("Manglobe", "53"), new g("MAPPA", "132"), new g("Nippon Animation", "6"), new g("OLM", "29"), new g("P.A. Works", "87"), new g("Polygon Pictures", "98"), new g("Production I.G", "23"), new g("Project No.9", "111"), new g("SANZIGEN", "123"), new g("Satelight", "45"), new g("Seven", "90"), new g("Shaft", "42"), new g("Shin-Ei Animation", "121"), new g("Silver Link.", "95"), new g("Studio Deen", "15"), new g("Studio Ghibli", "4"), new g("Studio Gokumi", "118"), new g("Studio Pierrot", "9"), new g("Sunrise", "12"), new g("Tatsunoko Production", BuildConfig.BUILD_NUMBER), new g("Telecom Animation Film", "51"), new g("TMS Entertainment", "30"), new g("Toei Animation", "2"), new g("Tokyo Movie Shinsha", "3"), new g("Trigger", "137"), new g("ufotable", "52"), new g("White Fox", "101"), new g("Wit Studio", "144"), new g("Xebec", "28"), new g("Zexcs", "49"));
        }
    }

    /* compiled from: Studio.kt */
    /* loaded from: classes.dex */
    public static final class b implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final g createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new g(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    public g(String str, String str2) {
        jc.l.f(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        jc.l.f(str2, "id");
        this.name = str;
        this.f11741id = str2;
    }

    public final String a() {
        return this.f11741id;
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
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return jc.l.a(this.name, gVar.name) && jc.l.a(this.f11741id, gVar.f11741id);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.f11741id.hashCode();
    }

    public String toString() {
        return "Studio(name=\"" + this.name + "\", id=\"" + this.f11741id + "\")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeString(this.name);
        parcel.writeString(this.f11741id);
    }
}
