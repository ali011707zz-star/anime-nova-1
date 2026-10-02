package w4;

import java.util.List;
import jc.l;
import p4.p;

/* compiled from: PeopleList.kt */
/* loaded from: classes.dex */
public final class c {
    private final List<p> dropped;
    private final List<p> favorites;
    private final List<p> on_hold;
    private final List<p> plan_to_watch;
    private final List<p> watched;
    private final List<p> watching;

    public final List<p> a() {
        return this.dropped;
    }

    public final List<p> b() {
        return this.favorites;
    }

    public final List<p> c() {
        return this.on_hold;
    }

    public final List<p> d() {
        return this.plan_to_watch;
    }

    public final List<p> e() {
        return this.watched;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return l.a(this.favorites, cVar.favorites) && l.a(this.watching, cVar.watching) && l.a(this.plan_to_watch, cVar.plan_to_watch) && l.a(this.watched, cVar.watched) && l.a(this.dropped, cVar.dropped) && l.a(this.on_hold, cVar.on_hold);
    }

    public final List<p> f() {
        return this.watching;
    }

    public int hashCode() {
        return (((((((((this.favorites.hashCode() * 31) + this.watching.hashCode()) * 31) + this.plan_to_watch.hashCode()) * 31) + this.watched.hashCode()) * 31) + this.dropped.hashCode()) * 31) + this.on_hold.hashCode();
    }

    public String toString() {
        return "PeopleList(favorites=" + this.favorites + ", watching=" + this.watching + ", plan_to_watch=" + this.plan_to_watch + ", watched=" + this.watched + ", dropped=" + this.dropped + ", on_hold=" + this.on_hold + ')';
    }
}
