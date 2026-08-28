package p4;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import qc.t;
import qc.u;

/* compiled from: Series.kt */
/* loaded from: classes.dex */
public final class p implements Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new a();
    private final String allow_comment;
    private final String anime_age_rating;
    private final String anime_banner_image_url;
    private final String anime_cover_image_url;
    private final String anime_created_at;
    private final String anime_description;
    private String anime_dropped_by_user;
    private final String anime_english_title;
    private String anime_favorite_by_user;
    private final String anime_genre_ids;
    private final String anime_genres;
    private final long anime_id;
    private final String anime_name;
    private String anime_on_hold_by_user;
    private String anime_plan_to_watch_by_user;
    private String anime_rated_by_user;
    private final String anime_rating;
    private String anime_rating_by_user;
    private final String anime_rating_user_count;
    private final String anime_release_day;
    private final String anime_release_year;
    private final String anime_season;
    private final String anime_status;
    private final String anime_type;
    private final String anime_updated_at;
    private String anime_watched_by_user;
    private String anime_watching_by_user;
    private Integer art_rating_by_user;
    private Integer characters_rating_by_user;
    private final List<m4.c> comment_flag_reasons;
    private final List<g> content_rating;

    @ka.c("latest_episode_id")
    private final Long episode_id;

    @ka.c("latest_episode_name")
    private final String episode_name;
    private boolean isInCustomList;
    private final String just_info;
    private final m more_info_result;
    private Integer ost_rating_by_user;
    private final String related_anime_id;
    private final n4.d<List<p>> related_animes;
    private final n4.d<List<s4.a>> related_news;
    private final n4.d<List<u4.a>> related_recommendations;
    private final String relation_type;
    private final String role;
    private Integer story_rating_by_user;
    private final List<r> top_anime_contributors;

    /* compiled from: Series.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<p> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final p createFromParcel(Parcel parcel) {
            String str;
            ArrayList arrayList;
            ArrayList arrayList2;
            ArrayList arrayList3;
            ArrayList arrayList4;
            ArrayList arrayList5;
            jc.l.f(parcel, "parcel");
            long readLong = parcel.readLong();
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            String readString6 = parcel.readString();
            String readString7 = parcel.readString();
            String readString8 = parcel.readString();
            String readString9 = parcel.readString();
            String readString10 = parcel.readString();
            String readString11 = parcel.readString();
            String readString12 = parcel.readString();
            String readString13 = parcel.readString();
            String readString14 = parcel.readString();
            String readString15 = parcel.readString();
            String readString16 = parcel.readString();
            String readString17 = parcel.readString();
            String readString18 = parcel.readString();
            String readString19 = parcel.readString();
            String readString20 = parcel.readString();
            String readString21 = parcel.readString();
            String readString22 = parcel.readString();
            String readString23 = parcel.readString();
            String readString24 = parcel.readString();
            n4.d dVar = (n4.d) parcel.readValue(p.class.getClassLoader());
            n4.d dVar2 = (n4.d) parcel.readValue(p.class.getClassLoader());
            n4.d dVar3 = (n4.d) parcel.readValue(p.class.getClassLoader());
            if (parcel.readInt() == 0) {
                str = readString11;
                arrayList = null;
            } else {
                int readInt = parcel.readInt();
                ArrayList arrayList6 = new ArrayList(readInt);
                str = readString11;
                int i10 = 0;
                while (i10 != readInt) {
                    arrayList6.add(parcel.readValue(p.class.getClassLoader()));
                    i10++;
                    readInt = readInt;
                }
                arrayList = arrayList6;
            }
            String readString25 = parcel.readString();
            Long valueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
            String readString26 = parcel.readString();
            m createFromParcel = parcel.readInt() == 0 ? null : m.CREATOR.createFromParcel(parcel);
            Integer valueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer valueOf3 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer valueOf4 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer valueOf5 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String readString27 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList2 = arrayList;
                arrayList3 = null;
            } else {
                int readInt2 = parcel.readInt();
                ArrayList arrayList7 = new ArrayList(readInt2);
                arrayList2 = arrayList;
                int i11 = 0;
                while (i11 != readInt2) {
                    arrayList7.add(g.CREATOR.createFromParcel(parcel));
                    i11++;
                    readInt2 = readInt2;
                }
                arrayList3 = arrayList7;
            }
            String readString28 = parcel.readString();
            boolean z10 = parcel.readInt() != 0;
            String readString29 = parcel.readString();
            String readString30 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList4 = arrayList3;
                arrayList5 = null;
            } else {
                int readInt3 = parcel.readInt();
                ArrayList arrayList8 = new ArrayList(readInt3);
                arrayList4 = arrayList3;
                int i12 = 0;
                while (i12 != readInt3) {
                    arrayList8.add(r.CREATOR.createFromParcel(parcel));
                    i12++;
                    readInt3 = readInt3;
                }
                arrayList5 = arrayList8;
            }
            return new p(readLong, readString, readString2, readString3, readString4, readString5, readString6, readString7, readString8, readString9, readString10, str, readString12, readString13, readString14, readString15, readString16, readString17, readString18, readString19, readString20, readString21, readString22, readString23, readString24, dVar, dVar2, dVar3, arrayList2, readString25, valueOf, readString26, createFromParcel, valueOf2, valueOf3, valueOf4, valueOf5, readString27, arrayList4, readString28, z10, readString29, readString30, arrayList5, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final p[] newArray(int i10) {
            return new p[i10];
        }
    }

    public p(long j10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, n4.d<List<p>> dVar, n4.d<List<u4.a>> dVar2, n4.d<List<s4.a>> dVar3, List<m4.c> list, String str25, Long l10, String str26, m mVar, Integer num, Integer num2, Integer num3, Integer num4, String str27, List<g> list2, String str28, boolean z10, String str29, String str30, List<r> list3, String str31) {
        jc.l.f(str, "anime_name");
        jc.l.f(str2, "anime_type");
        jc.l.f(str3, "anime_status");
        jc.l.f(str4, "anime_release_day");
        jc.l.f(str24, "anime_cover_image_url");
        jc.l.f(str27, "just_info");
        this.anime_id = j10;
        this.anime_name = str;
        this.anime_type = str2;
        this.anime_status = str3;
        this.anime_release_day = str4;
        this.anime_season = str5;
        this.anime_release_year = str6;
        this.anime_age_rating = str7;
        this.anime_rating = str8;
        this.anime_rating_user_count = str9;
        this.anime_description = str10;
        this.anime_updated_at = str11;
        this.anime_created_at = str12;
        this.anime_genres = str13;
        this.anime_genre_ids = str14;
        this.related_anime_id = str15;
        this.anime_rated_by_user = str16;
        this.anime_rating_by_user = str17;
        this.anime_favorite_by_user = str18;
        this.anime_plan_to_watch_by_user = str19;
        this.anime_watched_by_user = str20;
        this.anime_watching_by_user = str21;
        this.anime_dropped_by_user = str22;
        this.anime_on_hold_by_user = str23;
        this.anime_cover_image_url = str24;
        this.related_animes = dVar;
        this.related_recommendations = dVar2;
        this.related_news = dVar3;
        this.comment_flag_reasons = list;
        this.episode_name = str25;
        this.episode_id = l10;
        this.allow_comment = str26;
        this.more_info_result = mVar;
        this.story_rating_by_user = num;
        this.art_rating_by_user = num2;
        this.characters_rating_by_user = num3;
        this.ost_rating_by_user = num4;
        this.just_info = str27;
        this.content_rating = list2;
        this.role = str28;
        this.isInCustomList = z10;
        this.anime_banner_image_url = str29;
        this.anime_english_title = str30;
        this.top_anime_contributors = list3;
        this.relation_type = str31;
    }

    public final Integer A() {
        return this.art_rating_by_user;
    }

    public final Integer B() {
        return this.characters_rating_by_user;
    }

    public final List<g> C() {
        return this.content_rating;
    }

    public final Long D() {
        return this.episode_id;
    }

    public final String E() {
        return this.episode_name;
    }

    public final List<String> H() {
        List d02;
        String str = this.anime_genres;
        ArrayList arrayList = null;
        if (str != null && (d02 = u.d0(str, new String[]{","}, false, 0, 6, null)) != null) {
            arrayList = new ArrayList(wb.m.q(d02, 10));
            Iterator it2 = d02.iterator();
            while (it2.hasNext()) {
                arrayList.add(u.t0((String) it2.next()).toString());
            }
        }
        return arrayList;
    }

    public final List<String> I() {
        List d02;
        String str = this.anime_genre_ids;
        ArrayList arrayList = null;
        if (str != null && (d02 = u.d0(str, new String[]{","}, false, 0, 6, null)) != null) {
            arrayList = new ArrayList(wb.m.q(d02, 10));
            Iterator it2 = d02.iterator();
            while (it2.hasNext()) {
                arrayList.add(u.t0((String) it2.next()).toString());
            }
        }
        return arrayList;
    }

    public final m J() {
        return this.more_info_result;
    }

    public final Integer K() {
        return this.ost_rating_by_user;
    }

    public final n4.d<List<p>> M() {
        return this.related_animes;
    }

    public final n4.d<List<s4.a>> O() {
        return this.related_news;
    }

    public final n4.d<List<u4.a>> P() {
        return this.related_recommendations;
    }

    public final String Q() {
        return this.relation_type;
    }

    public final Integer S() {
        return this.story_rating_by_user;
    }

    public final List<String> T() {
        String i10;
        List d02;
        m mVar = this.more_info_result;
        ArrayList arrayList = null;
        if (mVar != null && (i10 = mVar.i()) != null && (d02 = u.d0(i10, new String[]{","}, false, 0, 6, null)) != null) {
            arrayList = new ArrayList(wb.m.q(d02, 10));
            Iterator it2 = d02.iterator();
            while (it2.hasNext()) {
                arrayList.add(u.t0((String) it2.next()).toString());
            }
        }
        return arrayList;
    }

    public final List<String> W() {
        String g10;
        List d02;
        m mVar = this.more_info_result;
        ArrayList arrayList = null;
        if (mVar != null && (g10 = mVar.g()) != null && (d02 = u.d0(g10, new String[]{","}, false, 0, 6, null)) != null) {
            arrayList = new ArrayList(wb.m.q(d02, 10));
            Iterator it2 = d02.iterator();
            while (it2.hasNext()) {
                arrayList.add(u.t0((String) it2.next()).toString());
            }
        }
        return arrayList;
    }

    public final List<r> X() {
        return this.top_anime_contributors;
    }

    public final String Y() {
        return jc.l.a(this.anime_age_rating, "All") ? "للجميع" : this.anime_age_rating;
    }

    public final String Z() {
        String str = this.anime_status;
        int hashCode = str.hashCode();
        return hashCode != -1122601276 ? hashCode != 525822406 ? (hashCode == 1378885426 && str.equals("Currently Airing")) ? "مستمر" : "غير معرف" : !str.equals("Finished Airing") ? "غير معرف" : "مكتمل" : !str.equals("Not Yet Aired") ? "غير معرف" : "لم يتم بثه بعد";
    }

    public final String a() {
        return this.anime_age_rating;
    }

    public final String b0() {
        String str;
        if (this.anime_release_day.length() > 0) {
            str = '(' + t.v(t.v(t.v(t.v(t.v(t.v(t.v(this.anime_release_day, "Saturday", "السبت", false, 4, null), "Sunday", "الاحد", false, 4, null), "Monday", "الاثنين", false, 4, null), "Tuesday", "الثلاثاء", false, 4, null), "Wednesday", "الاربعاء", false, 4, null), "Thursday", "الخميس", false, 4, null), "Friday", "الجمعة", false, 4, null) + ')';
        } else {
            str = "";
        }
        String str2 = this.anime_status;
        int hashCode = str2.hashCode();
        return hashCode != -1122601276 ? hashCode != 525822406 ? (hashCode == 1378885426 && str2.equals("Currently Airing")) ? jc.l.m(str, " مستمر") : "غير معرف" : !str2.equals("Finished Airing") ? "غير معرف" : "مكتمل" : !str2.equals("Not Yet Aired") ? "غير معرف" : "لم يتم بثه بعد";
    }

    public final String c() {
        return this.anime_banner_image_url;
    }

    public final String c0() {
        String str = this.anime_type;
        switch (str.hashCode()) {
            case -343811943:
                return !str.equals("Special") ? "غير معرف" : "خاصة";
            case 2690:
                return !str.equals("TV") ? "غير معرف" : "مسلسل";
            case 78402:
                return !str.equals("ONA") ? "غير معرف" : "اونا";
            case 78650:
                return !str.equals("OVA") ? "غير معرف" : "اوفا";
            case 74534672:
                return !str.equals("Movie") ? "غير معرف" : "فلم";
            case 74710533:
                return !str.equals("Music") ? "غير معرف" : "موسيقي";
            default:
                return "غير معرف";
        }
    }

    public final boolean d0() {
        return jc.l.a(this.allow_comment, "Yes");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String e() {
        return this.anime_cover_image_url;
    }

    public final boolean e0() {
        return !jc.l.a(this.role, "none") && Build.VERSION.SDK_INT >= 21;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.anime_id == pVar.anime_id && jc.l.a(this.anime_name, pVar.anime_name) && jc.l.a(this.anime_type, pVar.anime_type) && jc.l.a(this.anime_status, pVar.anime_status) && jc.l.a(this.anime_release_day, pVar.anime_release_day) && jc.l.a(this.anime_season, pVar.anime_season) && jc.l.a(this.anime_release_year, pVar.anime_release_year) && jc.l.a(this.anime_age_rating, pVar.anime_age_rating) && jc.l.a(this.anime_rating, pVar.anime_rating) && jc.l.a(this.anime_rating_user_count, pVar.anime_rating_user_count) && jc.l.a(this.anime_description, pVar.anime_description) && jc.l.a(this.anime_updated_at, pVar.anime_updated_at) && jc.l.a(this.anime_created_at, pVar.anime_created_at) && jc.l.a(this.anime_genres, pVar.anime_genres) && jc.l.a(this.anime_genre_ids, pVar.anime_genre_ids) && jc.l.a(this.related_anime_id, pVar.related_anime_id) && jc.l.a(this.anime_rated_by_user, pVar.anime_rated_by_user) && jc.l.a(this.anime_rating_by_user, pVar.anime_rating_by_user) && jc.l.a(this.anime_favorite_by_user, pVar.anime_favorite_by_user) && jc.l.a(this.anime_plan_to_watch_by_user, pVar.anime_plan_to_watch_by_user) && jc.l.a(this.anime_watched_by_user, pVar.anime_watched_by_user) && jc.l.a(this.anime_watching_by_user, pVar.anime_watching_by_user) && jc.l.a(this.anime_dropped_by_user, pVar.anime_dropped_by_user) && jc.l.a(this.anime_on_hold_by_user, pVar.anime_on_hold_by_user) && jc.l.a(this.anime_cover_image_url, pVar.anime_cover_image_url) && jc.l.a(this.related_animes, pVar.related_animes) && jc.l.a(this.related_recommendations, pVar.related_recommendations) && jc.l.a(this.related_news, pVar.related_news) && jc.l.a(this.comment_flag_reasons, pVar.comment_flag_reasons) && jc.l.a(this.episode_name, pVar.episode_name) && jc.l.a(this.episode_id, pVar.episode_id) && jc.l.a(this.allow_comment, pVar.allow_comment) && jc.l.a(this.more_info_result, pVar.more_info_result) && jc.l.a(this.story_rating_by_user, pVar.story_rating_by_user) && jc.l.a(this.art_rating_by_user, pVar.art_rating_by_user) && jc.l.a(this.characters_rating_by_user, pVar.characters_rating_by_user) && jc.l.a(this.ost_rating_by_user, pVar.ost_rating_by_user) && jc.l.a(this.just_info, pVar.just_info) && jc.l.a(this.content_rating, pVar.content_rating) && jc.l.a(this.role, pVar.role) && this.isInCustomList == pVar.isInCustomList && jc.l.a(this.anime_banner_image_url, pVar.anime_banner_image_url) && jc.l.a(this.anime_english_title, pVar.anime_english_title) && jc.l.a(this.top_anime_contributors, pVar.top_anime_contributors) && jc.l.a(this.relation_type, pVar.relation_type);
    }

    public final String f() {
        return this.anime_description;
    }

    public final boolean f0() {
        return this.isInCustomList;
    }

    public final String g() {
        return this.anime_dropped_by_user;
    }

    public final boolean g0() {
        return jc.l.a(this.anime_status, "Not Yet Aired");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int a10 = ((((((((m4.a.a(this.anime_id) * 31) + this.anime_name.hashCode()) * 31) + this.anime_type.hashCode()) * 31) + this.anime_status.hashCode()) * 31) + this.anime_release_day.hashCode()) * 31;
        String str = this.anime_season;
        int hashCode = (a10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.anime_release_year;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.anime_age_rating;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.anime_rating;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.anime_rating_user_count;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.anime_description;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.anime_updated_at;
        int hashCode7 = (hashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.anime_created_at;
        int hashCode8 = (hashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.anime_genres;
        int hashCode9 = (hashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.anime_genre_ids;
        int hashCode10 = (hashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.related_anime_id;
        int hashCode11 = (hashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.anime_rated_by_user;
        int hashCode12 = (hashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.anime_rating_by_user;
        int hashCode13 = (hashCode12 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.anime_favorite_by_user;
        int hashCode14 = (hashCode13 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.anime_plan_to_watch_by_user;
        int hashCode15 = (hashCode14 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.anime_watched_by_user;
        int hashCode16 = (hashCode15 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.anime_watching_by_user;
        int hashCode17 = (hashCode16 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.anime_dropped_by_user;
        int hashCode18 = (hashCode17 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.anime_on_hold_by_user;
        int hashCode19 = (((hashCode18 + (str19 == null ? 0 : str19.hashCode())) * 31) + this.anime_cover_image_url.hashCode()) * 31;
        n4.d<List<p>> dVar = this.related_animes;
        int hashCode20 = (hashCode19 + (dVar == null ? 0 : dVar.hashCode())) * 31;
        n4.d<List<u4.a>> dVar2 = this.related_recommendations;
        int hashCode21 = (hashCode20 + (dVar2 == null ? 0 : dVar2.hashCode())) * 31;
        n4.d<List<s4.a>> dVar3 = this.related_news;
        int hashCode22 = (hashCode21 + (dVar3 == null ? 0 : dVar3.hashCode())) * 31;
        List<m4.c> list = this.comment_flag_reasons;
        int hashCode23 = (hashCode22 + (list == null ? 0 : list.hashCode())) * 31;
        String str20 = this.episode_name;
        int hashCode24 = (hashCode23 + (str20 == null ? 0 : str20.hashCode())) * 31;
        Long l10 = this.episode_id;
        int hashCode25 = (hashCode24 + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str21 = this.allow_comment;
        int hashCode26 = (hashCode25 + (str21 == null ? 0 : str21.hashCode())) * 31;
        m mVar = this.more_info_result;
        int hashCode27 = (hashCode26 + (mVar == null ? 0 : mVar.hashCode())) * 31;
        Integer num = this.story_rating_by_user;
        int hashCode28 = (hashCode27 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.art_rating_by_user;
        int hashCode29 = (hashCode28 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.characters_rating_by_user;
        int hashCode30 = (hashCode29 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.ost_rating_by_user;
        int hashCode31 = (((hashCode30 + (num4 == null ? 0 : num4.hashCode())) * 31) + this.just_info.hashCode()) * 31;
        List<g> list2 = this.content_rating;
        int hashCode32 = (hashCode31 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str22 = this.role;
        int hashCode33 = (hashCode32 + (str22 == null ? 0 : str22.hashCode())) * 31;
        boolean z10 = this.isInCustomList;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode33 + i10) * 31;
        String str23 = this.anime_banner_image_url;
        int hashCode34 = (i11 + (str23 == null ? 0 : str23.hashCode())) * 31;
        String str24 = this.anime_english_title;
        int hashCode35 = (hashCode34 + (str24 == null ? 0 : str24.hashCode())) * 31;
        List<r> list3 = this.top_anime_contributors;
        int hashCode36 = (hashCode35 + (list3 == null ? 0 : list3.hashCode())) * 31;
        String str25 = this.relation_type;
        return hashCode36 + (str25 != null ? str25.hashCode() : 0);
    }

    public final String i() {
        return this.anime_english_title;
    }

    public final boolean i0() {
        return jc.l.a(this.just_info, "Yes");
    }

    public final String j() {
        return this.anime_favorite_by_user;
    }

    public final String j0() {
        String str = this.anime_rating;
        return str == null || str.length() == 0 ? "--" : this.anime_rating;
    }

    public final String k0() {
        String str = this.anime_season;
        if (str != null) {
            switch (str.hashCode()) {
                case -1811812819:
                    if (str.equals("Spring")) {
                        return jc.l.m(" ربيع ", this.anime_release_year);
                    }
                    break;
                case -1807340593:
                    if (str.equals("Summer")) {
                        return jc.l.m(" صيف ", this.anime_release_year);
                    }
                    break;
                case -1703869723:
                    if (str.equals("Winter")) {
                        return jc.l.m(" شتاء ", this.anime_release_year);
                    }
                    break;
                case 2182043:
                    if (str.equals("Fall")) {
                        return jc.l.m(" خريف ", this.anime_release_year);
                    }
                    break;
            }
        }
        return this.anime_release_year;
    }

    public final String l() {
        return this.anime_genres;
    }

    public final void l0(String str) {
        this.anime_dropped_by_user = str;
    }

    public final long m() {
        return this.anime_id;
    }

    public final void m0(String str) {
        this.anime_favorite_by_user = str;
    }

    public final String n() {
        return this.anime_name;
    }

    public final void n0(String str) {
        this.anime_on_hold_by_user = str;
    }

    public final String o() {
        return this.anime_on_hold_by_user;
    }

    public final void o0(String str) {
        this.anime_plan_to_watch_by_user = str;
    }

    public final String p() {
        return this.anime_plan_to_watch_by_user;
    }

    public final void p0(String str) {
        this.anime_rating_by_user = str;
    }

    public final String q() {
        return this.anime_rating;
    }

    public final void q0(String str) {
        this.anime_watched_by_user = str;
    }

    public final String r() {
        return this.anime_rating_by_user;
    }

    public final void r0(String str) {
        this.anime_watching_by_user = str;
    }

    public final String s() {
        return this.anime_rating_user_count;
    }

    public final void s0(Integer num) {
        this.art_rating_by_user = num;
    }

    public final String t() {
        return this.anime_release_year;
    }

    public final void t0(Integer num) {
        this.characters_rating_by_user = num;
    }

    public String toString() {
        return "Series(anime_id=" + this.anime_id + ", anime_name=" + this.anime_name + ", anime_type=" + this.anime_type + ", anime_status=" + this.anime_status + ", anime_release_day=" + this.anime_release_day + ", anime_season=" + ((Object) this.anime_season) + ", anime_release_year=" + ((Object) this.anime_release_year) + ", anime_age_rating=" + ((Object) this.anime_age_rating) + ", anime_rating=" + ((Object) this.anime_rating) + ", anime_rating_user_count=" + ((Object) this.anime_rating_user_count) + ", anime_description=" + ((Object) this.anime_description) + ", anime_updated_at=" + ((Object) this.anime_updated_at) + ", anime_created_at=" + ((Object) this.anime_created_at) + ", anime_genres=" + ((Object) this.anime_genres) + ", anime_genre_ids=" + ((Object) this.anime_genre_ids) + ", related_anime_id=" + ((Object) this.related_anime_id) + ", anime_rated_by_user=" + ((Object) this.anime_rated_by_user) + ", anime_rating_by_user=" + ((Object) this.anime_rating_by_user) + ", anime_favorite_by_user=" + ((Object) this.anime_favorite_by_user) + ", anime_plan_to_watch_by_user=" + ((Object) this.anime_plan_to_watch_by_user) + ", anime_watched_by_user=" + ((Object) this.anime_watched_by_user) + ", anime_watching_by_user=" + ((Object) this.anime_watching_by_user) + ", anime_dropped_by_user=" + ((Object) this.anime_dropped_by_user) + ", anime_on_hold_by_user=" + ((Object) this.anime_on_hold_by_user) + ", anime_cover_image_url=" + this.anime_cover_image_url + ", related_animes=" + this.related_animes + ", related_recommendations=" + this.related_recommendations + ", related_news=" + this.related_news + ", comment_flag_reasons=" + this.comment_flag_reasons + ", episode_name=" + ((Object) this.episode_name) + ", episode_id=" + this.episode_id + ", allow_comment=" + ((Object) this.allow_comment) + ", more_info_result=" + this.more_info_result + ", story_rating_by_user=" + this.story_rating_by_user + ", art_rating_by_user=" + this.art_rating_by_user + ", characters_rating_by_user=" + this.characters_rating_by_user + ", ost_rating_by_user=" + this.ost_rating_by_user + ", just_info=" + this.just_info + ", content_rating=" + this.content_rating + ", role=" + ((Object) this.role) + ", isInCustomList=" + this.isInCustomList + ", anime_banner_image_url=" + ((Object) this.anime_banner_image_url) + ", anime_english_title=" + ((Object) this.anime_english_title) + ", top_anime_contributors=" + this.top_anime_contributors + ", relation_type=" + ((Object) this.relation_type) + ')';
    }

    public final String u() {
        return this.anime_status;
    }

    public final void u0(boolean z10) {
        this.isInCustomList = z10;
    }

    public final String v() {
        return this.anime_type;
    }

    public final void v0(Integer num) {
        this.ost_rating_by_user = num;
    }

    public final String w() {
        return this.anime_watched_by_user;
    }

    public final void w0(Integer num) {
        this.story_rating_by_user = num;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeLong(this.anime_id);
        parcel.writeString(this.anime_name);
        parcel.writeString(this.anime_type);
        parcel.writeString(this.anime_status);
        parcel.writeString(this.anime_release_day);
        parcel.writeString(this.anime_season);
        parcel.writeString(this.anime_release_year);
        parcel.writeString(this.anime_age_rating);
        parcel.writeString(this.anime_rating);
        parcel.writeString(this.anime_rating_user_count);
        parcel.writeString(this.anime_description);
        parcel.writeString(this.anime_updated_at);
        parcel.writeString(this.anime_created_at);
        parcel.writeString(this.anime_genres);
        parcel.writeString(this.anime_genre_ids);
        parcel.writeString(this.related_anime_id);
        parcel.writeString(this.anime_rated_by_user);
        parcel.writeString(this.anime_rating_by_user);
        parcel.writeString(this.anime_favorite_by_user);
        parcel.writeString(this.anime_plan_to_watch_by_user);
        parcel.writeString(this.anime_watched_by_user);
        parcel.writeString(this.anime_watching_by_user);
        parcel.writeString(this.anime_dropped_by_user);
        parcel.writeString(this.anime_on_hold_by_user);
        parcel.writeString(this.anime_cover_image_url);
        parcel.writeValue(this.related_animes);
        parcel.writeValue(this.related_recommendations);
        parcel.writeValue(this.related_news);
        List<m4.c> list = this.comment_flag_reasons;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<m4.c> it2 = list.iterator();
            while (it2.hasNext()) {
                parcel.writeValue(it2.next());
            }
        }
        parcel.writeString(this.episode_name);
        Long l10 = this.episode_id;
        if (l10 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l10.longValue());
        }
        parcel.writeString(this.allow_comment);
        m mVar = this.more_info_result;
        if (mVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            mVar.writeToParcel(parcel, i10);
        }
        Integer num = this.story_rating_by_user;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        Integer num2 = this.art_rating_by_user;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
        Integer num3 = this.characters_rating_by_user;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num3.intValue());
        }
        Integer num4 = this.ost_rating_by_user;
        if (num4 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num4.intValue());
        }
        parcel.writeString(this.just_info);
        List<g> list2 = this.content_rating;
        if (list2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list2.size());
            Iterator<g> it3 = list2.iterator();
            while (it3.hasNext()) {
                it3.next().writeToParcel(parcel, i10);
            }
        }
        parcel.writeString(this.role);
        parcel.writeInt(this.isInCustomList ? 1 : 0);
        parcel.writeString(this.anime_banner_image_url);
        parcel.writeString(this.anime_english_title);
        List<r> list3 = this.top_anime_contributors;
        if (list3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list3.size());
            Iterator<r> it4 = list3.iterator();
            while (it4.hasNext()) {
                it4.next().writeToParcel(parcel, i10);
            }
        }
        parcel.writeString(this.relation_type);
    }

    public final String y() {
        return this.anime_watching_by_user;
    }
}
