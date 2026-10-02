package l1;

import java.util.Collection;
import l1.c;

/* compiled from: ChannelManager.kt */
/* loaded from: classes.dex */
public interface a<T> {

    /* compiled from: ChannelManager.kt */
    /* renamed from: l1.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0219a {
        public static <T> boolean a(a<T> aVar) {
            return aVar.b().isEmpty();
        }
    }

    void a(c.AbstractC0222c.b.C0224c<T> c0224c);

    Collection<c.AbstractC0222c.b.C0224c<T>> b();

    boolean isEmpty();
}
