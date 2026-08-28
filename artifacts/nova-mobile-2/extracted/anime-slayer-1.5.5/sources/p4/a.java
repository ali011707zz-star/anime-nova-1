package p4;

/* compiled from: ActorDetails.kt */
/* loaded from: classes.dex */
public final class a {
    private final String actor_image_url;
    private final String actor_name;
    private final String language;

    public final String a() {
        return this.actor_image_url;
    }

    public final String b() {
        return this.actor_name;
    }

    public final String c() {
        return this.language;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return jc.l.a(this.actor_name, aVar.actor_name) && jc.l.a(this.language, aVar.language) && jc.l.a(this.actor_image_url, aVar.actor_image_url);
    }

    public int hashCode() {
        return (((this.actor_name.hashCode() * 31) + this.language.hashCode()) * 31) + this.actor_image_url.hashCode();
    }

    public String toString() {
        return "Actor(actor_name=" + this.actor_name + ", language=" + this.language + ", actor_image_url=" + this.actor_image_url + ')';
    }
}
