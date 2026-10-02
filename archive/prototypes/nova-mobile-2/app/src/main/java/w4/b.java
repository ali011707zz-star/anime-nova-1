package w4;

import android.os.Parcel;
import android.os.Parcelable;
import jc.l;

/* compiled from: Notification.kt */
/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();
    private String created_at;
    private final String n_class;
    private final String n_type;
    private final long notification_id;
    private long reference_id;
    private final long sender_id;
    private String unread;
    private String user_full_name;
    private String user_image_url;
    private final int users_count;

    /* compiled from: Notification.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final b createFromParcel(Parcel parcel) {
            l.f(parcel, "parcel");
            return new b(parcel.readLong(), parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(long j10, long j11, long j12, String str, String str2, String str3, String str4, String str5, String str6, int i10) {
        l.f(str, "unread");
        l.f(str2, "n_type");
        l.f(str3, "n_class");
        l.f(str5, "user_image_url");
        l.f(str6, "created_at");
        this.notification_id = j10;
        this.reference_id = j11;
        this.sender_id = j12;
        this.unread = str;
        this.n_type = str2;
        this.n_class = str3;
        this.user_full_name = str4;
        this.user_image_url = str5;
        this.created_at = str6;
        this.users_count = i10;
    }

    public final String a() {
        return e7.f.f6196a.e(this.created_at);
    }

    public final String c() {
        return this.n_class;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String e() {
        return this.n_type;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.notification_id == bVar.notification_id && this.reference_id == bVar.reference_id && this.sender_id == bVar.sender_id && l.a(this.unread, bVar.unread) && l.a(this.n_type, bVar.n_type) && l.a(this.n_class, bVar.n_class) && l.a(this.user_full_name, bVar.user_full_name) && l.a(this.user_image_url, bVar.user_image_url) && l.a(this.created_at, bVar.created_at) && this.users_count == bVar.users_count;
    }

    public final String f() {
        String str = this.n_type;
        int hashCode = str.hashCode();
        if (hashCode != 3321751) {
            if (hashCode != 108401386) {
                if (hashCode == 1671642405 && str.equals("dislike")) {
                    return "لم يعجب";
                }
            } else if (str.equals("reply")) {
                return "قام";
            }
        } else if (str.equals("like")) {
            return "أعجب";
        }
        return "ذكرك";
    }

    public final long g() {
        return this.notification_id;
    }

    public int hashCode() {
        int a10 = ((((((((((m4.a.a(this.notification_id) * 31) + m4.a.a(this.reference_id)) * 31) + m4.a.a(this.sender_id)) * 31) + this.unread.hashCode()) * 31) + this.n_type.hashCode()) * 31) + this.n_class.hashCode()) * 31;
        String str = this.user_full_name;
        return ((((((a10 + (str == null ? 0 : str.hashCode())) * 31) + this.user_image_url.hashCode()) * 31) + this.created_at.hashCode()) * 31) + this.users_count;
    }

    public final long i() {
        return this.reference_id;
    }

    public final long j() {
        return this.sender_id;
    }

    public final String l() {
        String str;
        boolean z10 = false;
        boolean z11 = l.a(this.n_type, "like") && (l.a(this.n_class, "animes") || l.a(this.n_class, "episodes"));
        boolean z12 = l.a(this.n_type, "like") && (l.a(this.n_class, "animes_reply") || l.a(this.n_class, "episodes_reply"));
        boolean z13 = l.a(this.n_type, "dislike") && (l.a(this.n_class, "animes") || l.a(this.n_class, "episodes"));
        if (l.a(this.n_type, "dislike") && (l.a(this.n_class, "animes_reply") || l.a(this.n_class, "episodes_reply"))) {
            z10 = true;
        }
        int i10 = this.users_count - 1;
        if (i10 == 1) {
            str = " و شخص اخر ";
        } else if (i10 > 1) {
            str = "و " + i10 + " اخرون";
        } else {
            str = "";
        }
        if (z11) {
            return l.m(str, " بتعليقك");
        }
        if (z12) {
            return l.m(str, " بردك");
        }
        if (z13) {
            return l.m(str, " بتعليقك");
        }
        if (z10) {
            return l.m(str, " بردك");
        }
        return l.a(this.n_type, "reply") ? l.m(str, " بالرد على تعليقك") : l.a(this.n_type, "tag") ? l.m(str, " في تعليق") : "";
    }

    public final String m() {
        return this.unread;
    }

    public final String n() {
        String d10;
        String str = this.user_full_name;
        return (str == null || (d10 = e7.f.f6196a.d(str, 15)) == null) ? "" : d10;
    }

    public final void o(String str) {
        l.f(str, "<set-?>");
        this.unread = str;
    }

    public String toString() {
        return "Notification(notification_id=" + this.notification_id + ", reference_id=" + this.reference_id + ", sender_id=" + this.sender_id + ", unread=" + this.unread + ", n_type=" + this.n_type + ", n_class=" + this.n_class + ", user_full_name=" + ((Object) this.user_full_name) + ", user_image_url=" + this.user_image_url + ", created_at=" + this.created_at + ", users_count=" + this.users_count + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        l.f(parcel, "out");
        parcel.writeLong(this.notification_id);
        parcel.writeLong(this.reference_id);
        parcel.writeLong(this.sender_id);
        parcel.writeString(this.unread);
        parcel.writeString(this.n_type);
        parcel.writeString(this.n_class);
        parcel.writeString(this.user_full_name);
        parcel.writeString(this.user_image_url);
        parcel.writeString(this.created_at);
        parcel.writeInt(this.users_count);
    }
}
