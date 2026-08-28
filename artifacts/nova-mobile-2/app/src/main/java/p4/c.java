package p4;

/* compiled from: ActorDetails.kt */
/* loaded from: classes.dex */
public final class c {
    private final String anime_cover_image_url;
    private final long anime_id;
    private final String anime_name;
    private final String anime_release_year;
    private final String anime_status;
    private final int character_id;
    private final String character_image_url;
    private final String character_name;
    private final String just_info;
    private final String role;

    public final String a() {
        return this.anime_cover_image_url;
    }

    public final long b() {
        return this.anime_id;
    }

    public final String c() {
        return this.anime_name;
    }

    public final int d() {
        return this.character_id;
    }

    public final String e() {
        return this.character_image_url;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.anime_id == cVar.anime_id && jc.l.a(this.anime_name, cVar.anime_name) && jc.l.a(this.anime_release_year, cVar.anime_release_year) && jc.l.a(this.anime_cover_image_url, cVar.anime_cover_image_url) && this.character_id == cVar.character_id && jc.l.a(this.role, cVar.role) && jc.l.a(this.character_name, cVar.character_name) && jc.l.a(this.character_image_url, cVar.character_image_url) && jc.l.a(this.anime_status, cVar.anime_status) && jc.l.a(this.just_info, cVar.just_info);
    }

    public final String f() {
        return this.character_name;
    }

    public final String g() {
        return this.role;
    }

    public final boolean h() {
        return jc.l.a(this.anime_status, "Not Yet Aired");
    }

    public int hashCode() {
        int a10 = ((((((((m4.a.a(this.anime_id) * 31) + this.anime_name.hashCode()) * 31) + this.anime_release_year.hashCode()) * 31) + this.anime_cover_image_url.hashCode()) * 31) + this.character_id) * 31;
        String str = this.role;
        return ((((((((a10 + (str == null ? 0 : str.hashCode())) * 31) + this.character_name.hashCode()) * 31) + this.character_image_url.hashCode()) * 31) + this.anime_status.hashCode()) * 31) + this.just_info.hashCode();
    }

    public final boolean i() {
        return jc.l.a(this.just_info, "Yes");
    }

    public String toString() {
        return "AnimeCharacter(anime_id=" + this.anime_id + ", anime_name=" + this.anime_name + ", anime_release_year=" + this.anime_release_year + ", anime_cover_image_url=" + this.anime_cover_image_url + ", character_id=" + this.character_id + ", role=" + ((Object) this.role) + ", character_name=" + this.character_name + ", character_image_url=" + this.character_image_url + ", anime_status=" + this.anime_status + ", just_info=" + this.just_info + ')';
    }
}
