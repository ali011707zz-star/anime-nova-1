package p4;

/* compiled from: Contributor.kt */
/* loaded from: classes.dex */
public final class h {
    private final int anime;
    private final int characters;
    private final int episodes;
    private final long points;
    private int rank;
    private final int recommendations;
    private final String user_full_name;
    private final long user_id;
    private final String user_image_url;

    public final int a() {
        return this.anime;
    }

    public final int b() {
        return this.characters;
    }

    public final int c() {
        return this.episodes;
    }

    public final long d() {
        return this.points;
    }

    public final int e() {
        return this.rank;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return jc.l.a(this.user_full_name, hVar.user_full_name) && this.rank == hVar.rank && this.points == hVar.points && jc.l.a(this.user_image_url, hVar.user_image_url) && this.anime == hVar.anime && this.recommendations == hVar.recommendations && this.episodes == hVar.episodes && this.characters == hVar.characters && this.user_id == hVar.user_id;
    }

    public final int f() {
        return this.recommendations;
    }

    public final String g() {
        return this.user_full_name;
    }

    public final long h() {
        return this.user_id;
    }

    public int hashCode() {
        return (((((((((((((((this.user_full_name.hashCode() * 31) + this.rank) * 31) + m4.a.a(this.points)) * 31) + this.user_image_url.hashCode()) * 31) + this.anime) * 31) + this.recommendations) * 31) + this.episodes) * 31) + this.characters) * 31) + m4.a.a(this.user_id);
    }

    public final String i() {
        return this.user_image_url;
    }

    public final void j(int i10) {
        this.rank = i10;
    }

    public String toString() {
        return "Contributor(user_full_name=" + this.user_full_name + ", rank=" + this.rank + ", points=" + this.points + ", user_image_url=" + this.user_image_url + ", anime=" + this.anime + ", recommendations=" + this.recommendations + ", episodes=" + this.episodes + ", characters=" + this.characters + ", user_id=" + this.user_id + ')';
    }
}
