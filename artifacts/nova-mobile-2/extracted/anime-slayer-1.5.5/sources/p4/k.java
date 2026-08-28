package p4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Episode.kt */
/* loaded from: classes.dex */
public final class k implements Parcelable {
    public static final Parcelable.Creator<k> CREATOR = new a();
    private final String allow_comment;
    private final String episode_already_rated_by_user;
    private final long episode_id;
    private final String episode_name;
    private final int episode_number;
    private final String episode_rating;
    private String episode_rating_by_user;
    private final String episode_rating_user_count;
    private final List<r4.l> episode_urls;
    private String episode_watched_history;
    private String is_ol4;
    private final List<r4.m> next_episode;
    private String ol4_patt;
    private String ol4_str;
    private final List<r4.m> previous_episode;
    private Long seriesId;
    private final Long skip_from;
    private final Long skip_to;

    /* compiled from: Episode.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<k> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final k createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            ArrayList arrayList3;
            jc.l.f(parcel, "parcel");
            long readLong = parcel.readLong();
            String readString = parcel.readString();
            int readInt = parcel.readInt();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            String readString6 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt2 = parcel.readInt();
                arrayList = new ArrayList(readInt2);
                for (int i10 = 0; i10 != readInt2; i10++) {
                    arrayList.add(r4.l.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int readInt3 = parcel.readInt();
                arrayList2 = new ArrayList(readInt3);
                for (int i11 = 0; i11 != readInt3; i11++) {
                    arrayList2.add(r4.m.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() == 0) {
                arrayList3 = null;
            } else {
                int readInt4 = parcel.readInt();
                ArrayList arrayList4 = new ArrayList(readInt4);
                for (int i12 = 0; i12 != readInt4; i12++) {
                    arrayList4.add(r4.m.CREATOR.createFromParcel(parcel));
                }
                arrayList3 = arrayList4;
            }
            return new k(readLong, readString, readInt, readString2, readString3, readString4, readString5, readString6, arrayList, arrayList2, arrayList3, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final k[] newArray(int i10) {
            return new k[i10];
        }
    }

    public k(long j10, String str, int i10, String str2, String str3, String str4, String str5, String str6, List<r4.l> list, List<r4.m> list2, List<r4.m> list3, String str7, String str8, String str9, Long l10, String str10, Long l11, Long l12) {
        jc.l.f(str, "episode_name");
        jc.l.f(str10, "allow_comment");
        this.episode_id = j10;
        this.episode_name = str;
        this.episode_number = i10;
        this.episode_rating = str2;
        this.episode_rating_by_user = str3;
        this.episode_watched_history = str4;
        this.episode_rating_user_count = str5;
        this.episode_already_rated_by_user = str6;
        this.episode_urls = list;
        this.next_episode = list2;
        this.previous_episode = list3;
        this.ol4_str = str7;
        this.is_ol4 = str8;
        this.ol4_patt = str9;
        this.seriesId = l10;
        this.allow_comment = str10;
        this.skip_from = l11;
        this.skip_to = l12;
    }

    public final k a(long j10, String str, int i10, String str2, String str3, String str4, String str5, String str6, List<r4.l> list, List<r4.m> list2, List<r4.m> list3, String str7, String str8, String str9, Long l10, String str10, Long l11, Long l12) {
        jc.l.f(str, "episode_name");
        jc.l.f(str10, "allow_comment");
        return new k(j10, str, i10, str2, str3, str4, str5, str6, list, list2, list3, str7, str8, str9, l10, str10, l11, l12);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final long e() {
        return this.episode_id;
    }

    public boolean equals(Object obj) {
        if (obj instanceof k) {
            return ((k) obj).episode_id == this.episode_id;
        }
        return super.equals(obj);
    }

    public final String f() {
        return this.episode_name;
    }

    public final int g() {
        return this.episode_number;
    }

    public int hashCode() {
        int a10 = ((((m4.a.a(this.episode_id) * 31) + this.episode_name.hashCode()) * 31) + this.episode_number) * 31;
        String str = this.episode_rating;
        int hashCode = (a10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.episode_rating_by_user;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.episode_watched_history;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.episode_rating_user_count;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.episode_already_rated_by_user;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List<r4.l> list = this.episode_urls;
        int hashCode6 = (hashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        String str6 = this.ol4_str;
        int hashCode7 = (hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.is_ol4;
        int hashCode8 = (hashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.ol4_patt;
        return hashCode8 + (str8 != null ? str8.hashCode() : 0);
    }

    public final String i() {
        return this.episode_rating;
    }

    public final String j() {
        return this.episode_rating_by_user;
    }

    public final String l() {
        return this.episode_rating_user_count;
    }

    public final List<r4.l> m() {
        return this.episode_urls;
    }

    public final String n() {
        return this.episode_watched_history;
    }

    public final List<r4.m> o() {
        return this.next_episode;
    }

    public final List<r4.m> p() {
        return this.previous_episode;
    }

    public final Long q() {
        return this.skip_from;
    }

    public final Long r() {
        return this.skip_to;
    }

    public final boolean s() {
        return jc.l.a(this.allow_comment, "Yes");
    }

    public final void t(String str) {
        this.episode_watched_history = str;
    }

    public String toString() {
        return "Episode(episode_id=" + this.episode_id + ", episode_name=" + this.episode_name + ", episode_number=" + this.episode_number + ", episode_rating=" + ((Object) this.episode_rating) + ", episode_rating_by_user=" + ((Object) this.episode_rating_by_user) + ", episode_watched_history=" + ((Object) this.episode_watched_history) + ", episode_rating_user_count=" + ((Object) this.episode_rating_user_count) + ", episode_already_rated_by_user=" + ((Object) this.episode_already_rated_by_user) + ", episode_urls=" + this.episode_urls + ", next_episode=" + this.next_episode + ", previous_episode=" + this.previous_episode + ", ol4_str=" + ((Object) this.ol4_str) + ", is_ol4=" + ((Object) this.is_ol4) + ", ol4_patt=" + ((Object) this.ol4_patt) + ", seriesId=" + this.seriesId + ", allow_comment=" + this.allow_comment + ", skip_from=" + this.skip_from + ", skip_to=" + this.skip_to + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeLong(this.episode_id);
        parcel.writeString(this.episode_name);
        parcel.writeInt(this.episode_number);
        parcel.writeString(this.episode_rating);
        parcel.writeString(this.episode_rating_by_user);
        parcel.writeString(this.episode_watched_history);
        parcel.writeString(this.episode_rating_user_count);
        parcel.writeString(this.episode_already_rated_by_user);
        List<r4.l> list = this.episode_urls;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<r4.l> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().writeToParcel(parcel, i10);
            }
        }
        List<r4.m> list2 = this.next_episode;
        if (list2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list2.size());
            Iterator<r4.m> it3 = list2.iterator();
            while (it3.hasNext()) {
                it3.next().writeToParcel(parcel, i10);
            }
        }
        List<r4.m> list3 = this.previous_episode;
        if (list3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list3.size());
            Iterator<r4.m> it4 = list3.iterator();
            while (it4.hasNext()) {
                it4.next().writeToParcel(parcel, i10);
            }
        }
        parcel.writeString(this.ol4_str);
        parcel.writeString(this.is_ol4);
        parcel.writeString(this.ol4_patt);
        Long l10 = this.seriesId;
        if (l10 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l10.longValue());
        }
        parcel.writeString(this.allow_comment);
        Long l11 = this.skip_from;
        if (l11 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l11.longValue());
        }
        Long l12 = this.skip_to;
        if (l12 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l12.longValue());
        }
    }
}
