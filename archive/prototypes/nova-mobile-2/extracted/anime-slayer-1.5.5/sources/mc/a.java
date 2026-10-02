package mc;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import jc.l;

/* compiled from: PlatformThreadLocalRandom.kt */
/* loaded from: classes2.dex */
public final class a extends lc.a {
    @Override // lc.a
    public Random c() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        l.e(current, "current()");
        return current;
    }
}
