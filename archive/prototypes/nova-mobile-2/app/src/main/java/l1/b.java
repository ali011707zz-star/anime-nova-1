package l1;

import java.util.ArrayDeque;
import jc.l;
import l1.a;
import l1.c;

/* compiled from: ChannelManager.kt */
/* loaded from: classes.dex */
public final class b<T> implements a<T> {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque<c.AbstractC0222c.b.C0224c<T>> f10188a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10189b;

    public b(int i10) {
        this.f10189b = i10;
        this.f10188a = new ArrayDeque<>(nc.g.c(i10, 10));
    }

    @Override // l1.a
    public void a(c.AbstractC0222c.b.C0224c<T> c0224c) {
        l.f(c0224c, "item");
        while (b().size() >= this.f10189b) {
            b().pollFirst();
        }
        b().offerLast(c0224c);
    }

    @Override // l1.a
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public ArrayDeque<c.AbstractC0222c.b.C0224c<T>> b() {
        return this.f10188a;
    }

    @Override // l1.a
    public boolean isEmpty() {
        return a.C0219a.a(this);
    }
}
