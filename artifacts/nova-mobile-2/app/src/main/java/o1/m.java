package o1;

import r1.h;

/* compiled from: AutoClosingRoomOpenHelperFactory.java */
/* loaded from: classes.dex */
public final class m implements h.c {

    /* renamed from: a, reason: collision with root package name */
    public final h.c f11527a;

    /* renamed from: b, reason: collision with root package name */
    public final a f11528b;

    public m(h.c cVar, a aVar) {
        this.f11527a = cVar;
        this.f11528b = aVar;
    }

    @Override // r1.h.c
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public i a(h.b bVar) {
        return new i(this.f11527a.a(bVar), this.f11528b);
    }
}
