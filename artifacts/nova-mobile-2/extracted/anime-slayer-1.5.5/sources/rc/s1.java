package rc;

import ac.g;
import java.io.Closeable;
import java.util.concurrent.Executor;

/* compiled from: Executors.kt */
/* loaded from: classes2.dex */
public abstract class s1 extends l0 implements Closeable {

    /* renamed from: g, reason: collision with root package name */
    public static final a f13331g = new a(null);

    /* compiled from: Executors.kt */
    /* loaded from: classes2.dex */
    public static final class a extends ac.b<l0, s1> {

        /* compiled from: Executors.kt */
        /* renamed from: rc.s1$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0327a extends jc.m implements ic.l<g.b, s1> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0327a f13332f = new C0327a();

            public C0327a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final s1 invoke(g.b bVar) {
                if (bVar instanceof s1) {
                    return (s1) bVar;
                }
                return null;
            }
        }

        public a() {
            super(l0.f13293f, C0327a.f13332f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public abstract Executor K0();
}
