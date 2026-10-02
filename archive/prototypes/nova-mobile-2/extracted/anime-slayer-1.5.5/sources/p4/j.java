package p4;

/* compiled from: CustomList.kt */
/* loaded from: classes.dex */
public final class j {
    private boolean anime_exist_in_list;
    private final String cover_image_url;
    private final long custom_list_id;
    private final String description;
    private final String title;
    private final long user_id;

    public final boolean a() {
        return this.anime_exist_in_list;
    }

    public final String b() {
        return this.cover_image_url;
    }

    public final long c() {
        return this.custom_list_id;
    }

    public final String d() {
        return this.description;
    }

    public final String e() {
        return this.title;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.custom_list_id == jVar.custom_list_id && jc.l.a(this.title, jVar.title) && jc.l.a(this.description, jVar.description) && jc.l.a(this.cover_image_url, jVar.cover_image_url) && this.user_id == jVar.user_id && this.anime_exist_in_list == jVar.anime_exist_in_list;
    }

    public final long f() {
        return this.user_id;
    }

    public final void g(boolean z10) {
        this.anime_exist_in_list = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int a10 = ((m4.a.a(this.custom_list_id) * 31) + this.title.hashCode()) * 31;
        String str = this.description;
        int hashCode = (a10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.cover_image_url;
        int hashCode2 = (((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + m4.a.a(this.user_id)) * 31;
        boolean z10 = this.anime_exist_in_list;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return hashCode2 + i10;
    }

    public String toString() {
        return "CustomList(custom_list_id=" + this.custom_list_id + ", title=" + this.title + ", description=" + ((Object) this.description) + ", cover_image_url=" + ((Object) this.cover_image_url) + ", user_id=" + this.user_id + ", anime_exist_in_list=" + this.anime_exist_in_list + ')';
    }
}
