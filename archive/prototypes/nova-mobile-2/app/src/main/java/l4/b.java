package l4;

/* compiled from: AnimeStats.kt */
/* loaded from: classes.dex */
public final class b {
    private final int rating;
    private final int rating_count;

    public final int a() {
        return this.rating;
    }

    public final int b() {
        return this.rating_count;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.rating_count == bVar.rating_count && this.rating == bVar.rating;
    }

    public int hashCode() {
        return (this.rating_count * 31) + this.rating;
    }

    public String toString() {
        return "AnimeRating(rating_count=" + this.rating_count + ", rating=" + this.rating + ')';
    }
}
