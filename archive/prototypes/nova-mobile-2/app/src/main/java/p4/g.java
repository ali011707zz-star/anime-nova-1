package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: ContentRating.kt */
/* loaded from: classes.dex */
public final class g implements Parcelable {
    public static final Parcelable.Creator<g> CREATOR = new a();
    private String content_type;
    private String level;
    private String user_choice;
    private int vote_count;

    /* compiled from: ContentRating.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final g createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new g(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    public g(String str, String str2, int i10, String str3) {
        jc.l.f(str, "content_type");
        jc.l.f(str2, "level");
        this.content_type = str;
        this.level = str2;
        this.vote_count = i10;
        this.user_choice = str3;
    }

    public final String a() {
        return this.content_type;
    }

    public final String c() {
        return this.level;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String e() {
        return this.user_choice;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return jc.l.a(this.content_type, gVar.content_type) && jc.l.a(this.level, gVar.level) && this.vote_count == gVar.vote_count && jc.l.a(this.user_choice, gVar.user_choice);
    }

    public final int f() {
        return this.vote_count;
    }

    public final void g(String str) {
        jc.l.f(str, "<set-?>");
        this.level = str;
    }

    public int hashCode() {
        int hashCode = ((((this.content_type.hashCode() * 31) + this.level.hashCode()) * 31) + this.vote_count) * 31;
        String str = this.user_choice;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final void i(String str) {
        this.user_choice = str;
    }

    public final void j(int i10) {
        this.vote_count = i10;
    }

    public String toString() {
        return "ContentRating(content_type=" + this.content_type + ", level=" + this.level + ", vote_count=" + this.vote_count + ", user_choice=" + ((Object) this.user_choice) + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeString(this.content_type);
        parcel.writeString(this.level);
        parcel.writeInt(this.vote_count);
        parcel.writeString(this.user_choice);
    }
}
