package n4;

import java.util.List;
import jc.l;

/* compiled from: CharactersContainer.kt */
/* loaded from: classes.dex */
public final class a {
    private final List<p4.c> anime_character;

    public final List<p4.c> a() {
        return this.anime_character;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && l.a(this.anime_character, ((a) obj).anime_character);
    }

    public int hashCode() {
        return this.anime_character.hashCode();
    }

    public String toString() {
        return "ActorAnimeCharactersMoreDataContainer(anime_character=" + this.anime_character + ')';
    }
}
