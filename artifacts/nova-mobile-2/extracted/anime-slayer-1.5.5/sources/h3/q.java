package h3;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.Collections;

/* compiled from: ValueCallbackKeyframeAnimation.java */
/* loaded from: classes.dex */
public class q<K, A> extends a<K, A> {

    /* renamed from: i, reason: collision with root package name */
    public final r3.b<A> f7263i;

    /* renamed from: j, reason: collision with root package name */
    public final A f7264j;

    public q(r3.c<A> cVar) {
        this(cVar, null);
    }

    @Override // h3.a
    public float c() {
        return 1.0f;
    }

    @Override // h3.a
    public A h() {
        r3.c<A> cVar = this.f7210e;
        A a10 = this.f7264j;
        return cVar.b(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, a10, a10, f(), f(), f());
    }

    @Override // h3.a
    public A i(r3.a<K> aVar, float f10) {
        return h();
    }

    @Override // h3.a
    public void k() {
        if (this.f7210e != null) {
            super.k();
        }
    }

    @Override // h3.a
    public void m(float f10) {
        this.f7209d = f10;
    }

    public q(r3.c<A> cVar, A a10) {
        super(Collections.emptyList());
        this.f7263i = new r3.b<>();
        n(cVar);
        this.f7264j = a10;
    }
}
