package ed;

import android.os.Looper;

/* compiled from: MainThreadSupport.java */
/* loaded from: classes.dex */
public interface g {

    /* compiled from: MainThreadSupport.java */
    /* loaded from: classes.dex */
    public static class a implements g {

        /* renamed from: a, reason: collision with root package name */
        public final Looper f6341a;

        public a(Looper looper) {
            this.f6341a = looper;
        }

        @Override // ed.g
        public k a(c cVar) {
            return new e(cVar, this.f6341a, 10);
        }

        @Override // ed.g
        public boolean b() {
            return this.f6341a == Looper.myLooper();
        }
    }

    k a(c cVar);

    boolean b();
}
