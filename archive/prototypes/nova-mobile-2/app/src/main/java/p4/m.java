package p4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;
import qc.t;
import qc.u;

/* compiled from: MalExtraInfo.kt */
/* loaded from: classes.dex */
public final class m implements Parcelable {
    public static final Parcelable.Creator<m> CREATOR = new a();
    private final String aired_from;
    private final String aired_to;
    private final String anime_studio_ids;
    private final String anime_studios;
    private final String duration;
    private final String episodes;
    private final String score;
    private final String scored_by;
    private final String source;
    private final String trailer_url;

    /* compiled from: MalExtraInfo.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<m> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new m(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final m[] newArray(int i10) {
            return new m[i10];
        }
    }

    public m(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        this.score = str;
        this.scored_by = str2;
        this.source = str3;
        this.episodes = str4;
        this.duration = str5;
        this.aired_from = str6;
        this.aired_to = str7;
        this.anime_studio_ids = str8;
        this.anime_studios = str9;
        this.trailer_url = str10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0008. Please report as an issue. */
    public final String a() {
        String str = this.source;
        if (str != null) {
            switch (str.hashCode()) {
                case -1551052091:
                    if (str.equals("4-koma manga")) {
                        return "مانجا 4-كوما";
                    }
                    break;
                case -1240726644:
                    if (str.equals("Digital manga")) {
                        return "مانجا رقمية";
                    }
                    break;
                case -680226581:
                    if (str.equals("Picture book")) {
                        return "كتاب مصور";
                    }
                    break;
                case -603720760:
                    if (str.equals("Web manga")) {
                        return "مانجا ويب";
                    }
                    break;
                case 2076425:
                    if (str.equals("Book")) {
                        return "كتاب";
                    }
                    break;
                case 2211858:
                    if (str.equals("Game")) {
                        return "لعبة";
                    }
                    break;
                case 74109844:
                    if (str.equals("Manga")) {
                        return "مانجا";
                    }
                    break;
                case 74710533:
                    if (str.equals("Music")) {
                        return "موسيقى";
                    }
                    break;
                case 75458076:
                    if (str.equals("Novel")) {
                        return "رواية";
                    }
                    break;
                case 78717915:
                    if (str.equals("Radio")) {
                        return "راديو";
                    }
                    break;
                case 303027580:
                    if (str.equals("Visual novel")) {
                        return "رواية مرئية";
                    }
                    break;
                case 1379812394:
                    if (str.equals("Unknown")) {
                        return "غير معروف";
                    }
                    break;
                case 1443687921:
                    if (str.equals("Original")) {
                        return "نص اصلي";
                    }
                    break;
                case 1700350690:
                    if (str.equals("Card game")) {
                        return "لعبة بطاقات";
                    }
                    break;
                case 1983356562:
                    if (str.equals("Light novel")) {
                        return "رواية خفيفة";
                    }
                    break;
            }
        }
        return "اخرى";
    }

    public final String c() {
        String lowerCase;
        String q02;
        String v10;
        String str = this.duration;
        if (str == null) {
            lowerCase = null;
        } else {
            Locale locale = Locale.ENGLISH;
            jc.l.e(locale, "ENGLISH");
            lowerCase = str.toLowerCase(locale);
            jc.l.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        }
        if (jc.l.a(lowerCase, "unknown")) {
            return "غير معلوم";
        }
        String str2 = this.duration;
        if (str2 != null) {
            Locale locale2 = Locale.ENGLISH;
            jc.l.e(locale2, "ENGLISH");
            String lowerCase2 = str2.toLowerCase(locale2);
            jc.l.e(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            if (lowerCase2 != null) {
                q02 = u.q0(lowerCase2, "per ep", null, 2, null);
                if (q02 == null && (v10 = t.v(q02, "min", "دقيقة", false, 4, null)) != null) {
                    return t.v(v10, "hr", "ساعة", false, 4, null);
                }
                return null;
            }
        }
        q02 = null;
        if (q02 == null) {
            return null;
        }
        return t.v(v10, "hr", "ساعة", false, 4, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String e() {
        return this.aired_from;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return jc.l.a(this.score, mVar.score) && jc.l.a(this.scored_by, mVar.scored_by) && jc.l.a(this.source, mVar.source) && jc.l.a(this.episodes, mVar.episodes) && jc.l.a(this.duration, mVar.duration) && jc.l.a(this.aired_from, mVar.aired_from) && jc.l.a(this.aired_to, mVar.aired_to) && jc.l.a(this.anime_studio_ids, mVar.anime_studio_ids) && jc.l.a(this.anime_studios, mVar.anime_studios) && jc.l.a(this.trailer_url, mVar.trailer_url);
    }

    public final String f() {
        return this.aired_to;
    }

    public final String g() {
        return this.anime_studio_ids;
    }

    public int hashCode() {
        String str = this.score;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.scored_by;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.source;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.episodes;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.duration;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.aired_from;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.aired_to;
        int hashCode7 = (hashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.anime_studio_ids;
        int hashCode8 = (hashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.anime_studios;
        int hashCode9 = (hashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.trailer_url;
        return hashCode9 + (str10 != null ? str10.hashCode() : 0);
    }

    public final String i() {
        return this.anime_studios;
    }

    public final String j() {
        return this.episodes;
    }

    public final String l() {
        return this.score;
    }

    public final String m() {
        return this.scored_by;
    }

    public final String n() {
        qc.g a10;
        qc.f a11;
        qc.e eVar;
        if (this.trailer_url == null || (a10 = new qc.i("^.*(youtu\\.be/|v/|e/|u/|u/\\w/|embed/|watch\\?v=|&v=)([^#&?]*).*").a(this.trailer_url)) == null || (a11 = a10.a()) == null || (eVar = a11.get(2)) == null) {
            return null;
        }
        return eVar.a();
    }

    public String toString() {
        return "MalExtraInfo(score=" + ((Object) this.score) + ", scored_by=" + ((Object) this.scored_by) + ", source=" + ((Object) this.source) + ", episodes=" + ((Object) this.episodes) + ", duration=" + ((Object) this.duration) + ", aired_from=" + ((Object) this.aired_from) + ", aired_to=" + ((Object) this.aired_to) + ", anime_studio_ids=" + ((Object) this.anime_studio_ids) + ", anime_studios=" + ((Object) this.anime_studios) + ", trailer_url=" + ((Object) this.trailer_url) + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeString(this.score);
        parcel.writeString(this.scored_by);
        parcel.writeString(this.source);
        parcel.writeString(this.episodes);
        parcel.writeString(this.duration);
        parcel.writeString(this.aired_from);
        parcel.writeString(this.aired_to);
        parcel.writeString(this.anime_studio_ids);
        parcel.writeString(this.anime_studios);
        parcel.writeString(this.trailer_url);
    }
}
