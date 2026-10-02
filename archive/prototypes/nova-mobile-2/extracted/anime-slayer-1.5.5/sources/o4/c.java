package o4;

import java.util.List;
import jc.l;

/* compiled from: FilterOption.kt */
/* loaded from: classes.dex */
public final class c {
    private final n4.d<List<d>> anime_genres;
    private n4.d<List<h>> anime_release_years;
    private final n4.d<List<g>> anime_studio_ids;
    private final f seasons;

    public final n4.d<List<d>> a() {
        return this.anime_genres;
    }

    public final n4.d<List<h>> b() {
        return this.anime_release_years;
    }

    public final n4.d<List<g>> c() {
        return this.anime_studio_ids;
    }

    public final f d() {
        return this.seasons;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return l.a(this.anime_genres, cVar.anime_genres) && l.a(this.anime_release_years, cVar.anime_release_years) && l.a(this.anime_studio_ids, cVar.anime_studio_ids) && l.a(this.seasons, cVar.seasons);
    }

    public int hashCode() {
        return (((((this.anime_genres.hashCode() * 31) + this.anime_release_years.hashCode()) * 31) + this.anime_studio_ids.hashCode()) * 31) + this.seasons.hashCode();
    }

    public String toString() {
        return "FilterOption(anime_genres=" + this.anime_genres + ", anime_release_years=" + this.anime_release_years + ", anime_studio_ids=" + this.anime_studio_ids + ", seasons=" + this.seasons + ')';
    }
}
