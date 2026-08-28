package p4;

import java.util.List;

/* compiled from: ContentRating.kt */
/* loaded from: classes.dex */
public final class l {
    private final List<g> content_rating;

    public final List<g> a() {
        return this.content_rating;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof l) && jc.l.a(this.content_rating, ((l) obj).content_rating);
    }

    public int hashCode() {
        return this.content_rating.hashCode();
    }

    public String toString() {
        return "ListContentRating(content_rating=" + this.content_rating + ')';
    }
}
