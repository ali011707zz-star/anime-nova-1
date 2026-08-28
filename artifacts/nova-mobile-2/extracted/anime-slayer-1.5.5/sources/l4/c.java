package l4;

import java.util.List;
import jc.l;

/* compiled from: AnimeStats.kt */
/* loaded from: classes.dex */
public final class c {
    private final a anime_list_count;
    private final List<b> anime_ratings;

    public final a a() {
        return this.anime_list_count;
    }

    public final List<b> b() {
        return this.anime_ratings;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return l.a(this.anime_ratings, cVar.anime_ratings) && l.a(this.anime_list_count, cVar.anime_list_count);
    }

    public int hashCode() {
        return (this.anime_ratings.hashCode() * 31) + this.anime_list_count.hashCode();
    }

    public String toString() {
        return "AnimeStats(anime_ratings=" + this.anime_ratings + ", anime_list_count=" + this.anime_list_count + ')';
    }
}
