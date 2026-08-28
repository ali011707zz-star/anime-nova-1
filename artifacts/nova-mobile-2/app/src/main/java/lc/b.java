package lc;

import java.util.Random;
import jc.l;

/* compiled from: PlatformRandom.kt */
/* loaded from: classes2.dex */
public final class b extends lc.a {

    /* renamed from: h, reason: collision with root package name */
    public final a f10628h = new a();

    /* compiled from: PlatformRandom.kt */
    /* loaded from: classes2.dex */
    public static final class a extends ThreadLocal<Random> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Random initialValue() {
            return new Random();
        }
    }

    @Override // lc.a
    public Random c() {
        Random random = this.f10628h.get();
        l.e(random, "implStorage.get()");
        return random;
    }
}
