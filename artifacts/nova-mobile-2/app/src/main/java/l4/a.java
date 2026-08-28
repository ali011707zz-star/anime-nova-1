package l4;

import jc.g;
import jc.l;
import w4.e;

/* compiled from: AnimeStats.kt */
/* loaded from: classes.dex */
public final class a {
    public static final C0231a Companion = new C0231a(null);
    private final int anime_dropped;
    private final int anime_on_hold;
    private final int animes_favorites;
    private final int animes_plan_to_watch;
    private final int animes_watched;
    private final int animes_watching;

    /* compiled from: AnimeStats.kt */
    /* renamed from: l4.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0231a {
        public C0231a() {
        }

        public /* synthetic */ C0231a(g gVar) {
            this();
        }

        public final a a(e eVar) {
            l.f(eVar, "user");
            Integer r10 = eVar.r();
            int intValue = r10 == null ? 0 : r10.intValue();
            Integer v10 = eVar.v();
            int intValue2 = v10 == null ? 0 : v10.intValue();
            Integer t10 = eVar.t();
            int intValue3 = t10 == null ? 0 : t10.intValue();
            Integer u10 = eVar.u();
            int intValue4 = u10 == null ? 0 : u10.intValue();
            Integer q10 = eVar.q();
            int intValue5 = q10 == null ? 0 : q10.intValue();
            Integer s10 = eVar.s();
            return new a(intValue, intValue2, intValue3, intValue4, intValue5, s10 == null ? 0 : s10.intValue());
        }
    }

    public a(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.animes_favorites = i10;
        this.animes_watching = i11;
        this.animes_plan_to_watch = i12;
        this.animes_watched = i13;
        this.anime_dropped = i14;
        this.anime_on_hold = i15;
    }

    public final int a() {
        return this.anime_dropped;
    }

    public final int b() {
        return this.anime_on_hold;
    }

    public final int c() {
        return this.animes_favorites;
    }

    public final int d() {
        return this.animes_plan_to_watch;
    }

    public final int e() {
        return this.animes_watched;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.animes_favorites == aVar.animes_favorites && this.animes_watching == aVar.animes_watching && this.animes_plan_to_watch == aVar.animes_plan_to_watch && this.animes_watched == aVar.animes_watched && this.anime_dropped == aVar.anime_dropped && this.anime_on_hold == aVar.anime_on_hold;
    }

    public final int f() {
        return this.animes_watching;
    }

    public int hashCode() {
        return (((((((((this.animes_favorites * 31) + this.animes_watching) * 31) + this.animes_plan_to_watch) * 31) + this.animes_watched) * 31) + this.anime_dropped) * 31) + this.anime_on_hold;
    }

    public String toString() {
        return "AnimeListCount(animes_favorites=" + this.animes_favorites + ", animes_watching=" + this.animes_watching + ", animes_plan_to_watch=" + this.animes_plan_to_watch + ", animes_watched=" + this.animes_watched + ", anime_dropped=" + this.anime_dropped + ", anime_on_hold=" + this.anime_on_hold + ')';
    }
}
