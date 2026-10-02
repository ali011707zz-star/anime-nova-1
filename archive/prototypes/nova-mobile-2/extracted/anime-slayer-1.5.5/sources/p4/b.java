package p4;

import java.util.List;

/* compiled from: ActorDetails.kt */
/* loaded from: classes.dex */
public final class b {
    private final a actor;
    private final List<c> anime_character;

    public final a a() {
        return this.actor;
    }

    public final List<c> b() {
        return this.anime_character;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return jc.l.a(this.actor, bVar.actor) && jc.l.a(this.anime_character, bVar.anime_character);
    }

    public int hashCode() {
        return (this.actor.hashCode() * 31) + this.anime_character.hashCode();
    }

    public String toString() {
        return "ActorDetails(actor=" + this.actor + ", anime_character=" + this.anime_character + ')';
    }
}
