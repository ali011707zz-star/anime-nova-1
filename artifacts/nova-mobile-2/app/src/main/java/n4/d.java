package n4;

import jc.l;
import r4.g;
import r4.h;

/* compiled from: Data.kt */
/* loaded from: classes.dex */
public final class d<T> {
    private final Long count;

    @ka.c(alternate = {"catalog"}, value = "data")
    private final T data;
    private final g meta_data;
    private final h notify;

    public d() {
        this(null, null, null, null, 15, null);
    }

    public d(g gVar, h hVar, Long l10, T t10) {
        this.meta_data = gVar;
        this.notify = hVar;
        this.count = l10;
        this.data = t10;
    }

    public final Long a() {
        return this.count;
    }

    public final T b() {
        return this.data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return l.a(this.meta_data, dVar.meta_data) && l.a(this.notify, dVar.notify) && l.a(this.count, dVar.count) && l.a(this.data, dVar.data);
    }

    public int hashCode() {
        g gVar = this.meta_data;
        int hashCode = (gVar == null ? 0 : gVar.hashCode()) * 31;
        h hVar = this.notify;
        int hashCode2 = (hashCode + (hVar == null ? 0 : hVar.hashCode())) * 31;
        Long l10 = this.count;
        int hashCode3 = (hashCode2 + (l10 == null ? 0 : l10.hashCode())) * 31;
        T t10 = this.data;
        return hashCode3 + (t10 != null ? t10.hashCode() : 0);
    }

    public String toString() {
        return "Data(meta_data=" + this.meta_data + ", notify=" + this.notify + ", count=" + this.count + ", data=" + this.data + ')';
    }

    public /* synthetic */ d(g gVar, h hVar, Long l10, Object obj, int i10, jc.g gVar2) {
        this((i10 & 1) != 0 ? null : gVar, (i10 & 2) != 0 ? null : hVar, (i10 & 4) != 0 ? null : l10, (i10 & 8) != 0 ? null : obj);
    }
}
