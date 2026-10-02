package p4;

import java.util.List;

/* compiled from: CharacterDetails.kt */
/* loaded from: classes.dex */
public final class f {
    private final List<q> actors;
    private final List<p> animes;
    private final e character;

    public final List<q> a() {
        return this.actors;
    }

    public final List<p> b() {
        return this.animes;
    }

    public final e c() {
        return this.character;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return jc.l.a(this.character, fVar.character) && jc.l.a(this.actors, fVar.actors) && jc.l.a(this.animes, fVar.animes);
    }

    public int hashCode() {
        int hashCode = this.character.hashCode() * 31;
        List<q> list = this.actors;
        return ((hashCode + (list == null ? 0 : list.hashCode())) * 31) + this.animes.hashCode();
    }

    public String toString() {
        return "CharacterDetails(character=" + this.character + ", actors=" + this.actors + ", animes=" + this.animes + ')';
    }
}
