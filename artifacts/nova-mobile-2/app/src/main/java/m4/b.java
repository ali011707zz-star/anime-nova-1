package m4;

import android.os.Parcel;
import android.os.Parcelable;
import e7.f;
import jc.l;

/* compiled from: Comment.kt */
/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();
    private long anime_id;
    private final String anime_name;
    private final String anime_status;

    @ka.c(alternate = {"reply_at"}, value = "comment_at")
    private final String comment_at;

    @ka.c(alternate = {"episode_comment_id"}, value = "anime_comment_id")
    private final long comment_id;

    @ka.c(alternate = {"episode_comment_reply_id"}, value = "anime_comment_reply_id")
    private final long comment_reply_id;

    @ka.c(alternate = {"reply_text"}, value = "comment_text")
    private String comment_text;
    private int dislikes_count;
    private final long episode_id;
    private final String episode_name;
    private final String just_info;
    private int likes_count;
    private final b parent_comment;
    private int replies_count;
    private String spoiler;
    private final int spoiler_flag_count;
    private final String user_full_name;
    private final String user_handle;
    private String user_has_disliked;
    private String user_has_flaged;
    private String user_has_liked;
    private final long user_id;
    private final String user_image_url;

    /* compiled from: Comment.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final b createFromParcel(Parcel parcel) {
            l.f(parcel, "parcel");
            return new b(parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : b.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(long j10, long j11, long j12, long j13, long j14, String str, String str2, String str3, String str4, String str5, int i10, int i11, int i12, String str6, String str7, String str8, b bVar, String str9, String str10, String str11, String str12, String str13, int i13) {
        l.f(str, "user_image_url");
        l.f(str2, "user_full_name");
        l.f(str3, "comment_at");
        l.f(str4, "comment_text");
        l.f(str5, "spoiler");
        l.f(str6, "user_has_liked");
        l.f(str7, "user_has_disliked");
        l.f(str8, "user_has_flaged");
        l.f(str12, "user_handle");
        l.f(str13, "just_info");
        this.comment_id = j10;
        this.comment_reply_id = j11;
        this.anime_id = j12;
        this.episode_id = j13;
        this.user_id = j14;
        this.user_image_url = str;
        this.user_full_name = str2;
        this.comment_at = str3;
        this.comment_text = str4;
        this.spoiler = str5;
        this.likes_count = i10;
        this.dislikes_count = i11;
        this.replies_count = i12;
        this.user_has_liked = str6;
        this.user_has_disliked = str7;
        this.user_has_flaged = str8;
        this.parent_comment = bVar;
        this.anime_name = str9;
        this.episode_name = str10;
        this.anime_status = str11;
        this.user_handle = str12;
        this.just_info = str13;
        this.spoiler_flag_count = i13;
    }

    public final boolean A() {
        return l.a(this.just_info, "Yes");
    }

    public final void B(long j10) {
        this.anime_id = j10;
    }

    public final void C(int i10) {
        this.dislikes_count = i10;
    }

    public final void D(int i10) {
        this.likes_count = i10;
    }

    public final void E(String str) {
        l.f(str, "<set-?>");
        this.spoiler = str;
    }

    public final void H(String str) {
        l.f(str, "<set-?>");
        this.user_has_disliked = str;
    }

    public final void I(String str) {
        l.f(str, "<set-?>");
        this.user_has_flaged = str;
    }

    public final void J(String str) {
        l.f(str, "<set-?>");
        this.user_has_liked = str;
    }

    public final long a() {
        return this.anime_id;
    }

    public final String c() {
        return this.anime_name;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final long e() {
        return this.comment_id;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            long j10 = this.comment_reply_id;
            if (j10 > 0) {
                long j11 = ((b) obj).comment_reply_id;
                if (j11 > 0) {
                    return j10 == j11;
                }
            }
            long j12 = this.comment_id;
            if (j12 <= 0) {
                return false;
            }
            long j13 = ((b) obj).comment_id;
            return j13 > 0 && j12 == j13;
        }
        return super.equals(obj);
    }

    public final long f() {
        return this.comment_reply_id;
    }

    public final String g() {
        return this.comment_text;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((m4.a.a(this.comment_id) * 31) + m4.a.a(this.comment_reply_id)) * 31) + m4.a.a(this.anime_id)) * 31) + m4.a.a(this.episode_id)) * 31) + m4.a.a(this.user_id)) * 31) + this.user_image_url.hashCode()) * 31) + this.user_full_name.hashCode()) * 31) + this.comment_at.hashCode()) * 31) + this.comment_text.hashCode()) * 31) + this.spoiler.hashCode()) * 31) + this.likes_count) * 31) + this.dislikes_count) * 31) + this.replies_count) * 31) + this.user_has_liked.hashCode()) * 31) + this.user_has_disliked.hashCode()) * 31) + this.user_has_flaged.hashCode();
    }

    public final int i() {
        return this.dislikes_count;
    }

    public final String j() {
        return this.episode_name;
    }

    public final int l() {
        return this.likes_count;
    }

    public final b m() {
        return this.parent_comment;
    }

    public final int n() {
        return this.replies_count;
    }

    public final String o() {
        return this.spoiler;
    }

    public final int p() {
        return this.spoiler_flag_count;
    }

    public final String q() {
        return this.user_full_name;
    }

    public final String r() {
        return this.user_has_disliked;
    }

    public final String s() {
        return this.user_has_flaged;
    }

    public final String t() {
        return this.user_has_liked;
    }

    public String toString() {
        return "Comment(comment_id=" + this.comment_id + ", comment_reply_id=" + this.comment_reply_id + ", anime_id=" + this.anime_id + ", episode_id=" + this.episode_id + ", user_id=" + this.user_id + ", user_image_url=" + this.user_image_url + ", user_full_name=" + this.user_full_name + ", comment_at=" + this.comment_at + ", comment_text=" + this.comment_text + ", spoiler=" + this.spoiler + ", likes_count=" + this.likes_count + ", dislikes_count=" + this.dislikes_count + ", replies_count=" + this.replies_count + ", user_has_liked=" + this.user_has_liked + ", user_has_disliked=" + this.user_has_disliked + ", user_has_flaged=" + this.user_has_flaged + ", parent_comment=" + this.parent_comment + ", anime_name=" + ((Object) this.anime_name) + ", episode_name=" + ((Object) this.episode_name) + ", anime_status=" + ((Object) this.anime_status) + ", user_handle=" + this.user_handle + ", just_info=" + this.just_info + ", spoiler_flag_count=" + this.spoiler_flag_count + ')';
    }

    public final long u() {
        return this.user_id;
    }

    public final String v() {
        return this.user_image_url;
    }

    public final String w() {
        return f.f6196a.e(this.comment_at);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        l.f(parcel, "out");
        parcel.writeLong(this.comment_id);
        parcel.writeLong(this.comment_reply_id);
        parcel.writeLong(this.anime_id);
        parcel.writeLong(this.episode_id);
        parcel.writeLong(this.user_id);
        parcel.writeString(this.user_image_url);
        parcel.writeString(this.user_full_name);
        parcel.writeString(this.comment_at);
        parcel.writeString(this.comment_text);
        parcel.writeString(this.spoiler);
        parcel.writeInt(this.likes_count);
        parcel.writeInt(this.dislikes_count);
        parcel.writeInt(this.replies_count);
        parcel.writeString(this.user_has_liked);
        parcel.writeString(this.user_has_disliked);
        parcel.writeString(this.user_has_flaged);
        b bVar = this.parent_comment;
        if (bVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            bVar.writeToParcel(parcel, i10);
        }
        parcel.writeString(this.anime_name);
        parcel.writeString(this.episode_name);
        parcel.writeString(this.anime_status);
        parcel.writeString(this.user_handle);
        parcel.writeString(this.just_info);
        parcel.writeInt(this.spoiler_flag_count);
    }

    public final boolean y() {
        return l.a(this.anime_status, "Not Yet Aired");
    }
}
