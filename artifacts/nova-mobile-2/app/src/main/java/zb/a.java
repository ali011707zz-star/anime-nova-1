package zb;

import jc.l;
import vb.p;

/* compiled from: Thread.kt */
/* loaded from: classes2.dex */
public final class a {

    /* compiled from: Thread.kt */
    /* renamed from: zb.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0447a extends Thread {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ic.a<p> f17455f;

        public C0447a(ic.a<p> aVar) {
            this.f17455f = aVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f17455f.invoke();
        }
    }

    public static final Thread a(boolean z10, boolean z11, ClassLoader classLoader, String str, int i10, ic.a<p> aVar) {
        l.f(aVar, "block");
        C0447a c0447a = new C0447a(aVar);
        if (z11) {
            c0447a.setDaemon(true);
        }
        if (i10 > 0) {
            c0447a.setPriority(i10);
        }
        if (str != null) {
            c0447a.setName(str);
        }
        if (classLoader != null) {
            c0447a.setContextClassLoader(classLoader);
        }
        if (z10) {
            c0447a.start();
        }
        return c0447a;
    }
}
