package lc;

import java.util.Random;

/* compiled from: PlatformRandom.kt */
/* loaded from: classes2.dex */
public abstract class a extends c {
    @Override // lc.c
    public int b() {
        return c().nextInt();
    }

    public abstract Random c();
}
