package p4;

/* compiled from: Character.kt */
/* loaded from: classes.dex */
public final class e {
    private String character_favorited_by_user;
    private final int character_id;
    private final String character_image_url;
    private final String character_name;
    private final String character_role;
    private final String description;
    private boolean fav;
    private int love_count;

    public final String a() {
        return this.character_favorited_by_user;
    }

    public final int b() {
        return this.character_id;
    }

    public final String c() {
        return this.character_image_url;
    }

    public final String d() {
        return this.character_name;
    }

    public final String e() {
        return this.description;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.character_id == eVar.character_id && jc.l.a(this.character_name, eVar.character_name) && jc.l.a(this.character_role, eVar.character_role) && jc.l.a(this.character_image_url, eVar.character_image_url) && jc.l.a(this.description, eVar.description) && this.love_count == eVar.love_count && jc.l.a(this.character_favorited_by_user, eVar.character_favorited_by_user) && this.fav == eVar.fav;
    }

    public final boolean f() {
        return this.fav;
    }

    public final int g() {
        return this.love_count;
    }

    public final void h(String str) {
        jc.l.f(str, "<set-?>");
        this.character_favorited_by_user = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.character_id * 31) + this.character_name.hashCode()) * 31;
        String str = this.character_role;
        int hashCode2 = (((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.character_image_url.hashCode()) * 31;
        String str2 = this.description;
        int hashCode3 = (((((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.love_count) * 31) + this.character_favorited_by_user.hashCode()) * 31;
        boolean z10 = this.fav;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return hashCode3 + i10;
    }

    public final void i(boolean z10) {
        this.fav = z10;
    }

    public final void j(int i10) {
        this.love_count = i10;
    }

    public String toString() {
        return "Character(character_id=" + this.character_id + ", character_name=" + this.character_name + ", character_role=" + ((Object) this.character_role) + ", character_image_url=" + this.character_image_url + ", description=" + ((Object) this.description) + ", love_count=" + this.love_count + ", character_favorited_by_user=" + this.character_favorited_by_user + ", fav=" + this.fav + ')';
    }
}
