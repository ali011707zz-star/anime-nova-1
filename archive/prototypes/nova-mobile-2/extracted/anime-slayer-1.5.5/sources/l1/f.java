package l1;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import jc.l;
import l1.a;
import l1.c;

/* compiled from: ChannelManager.kt */
/* loaded from: classes.dex */
public final class f<T> implements a<T> {
    @Override // l1.a
    public void a(c.AbstractC0222c.b.C0224c<T> c0224c) {
        l.f(c0224c, "item");
    }

    @Override // l1.a
    public Collection<c.AbstractC0222c.b.C0224c<T>> b() {
        List emptyList = Collections.emptyList();
        l.e(emptyList, "Collections.emptyList()");
        return emptyList;
    }

    @Override // l1.a
    public boolean isEmpty() {
        return a.C0219a.a(this);
    }
}
