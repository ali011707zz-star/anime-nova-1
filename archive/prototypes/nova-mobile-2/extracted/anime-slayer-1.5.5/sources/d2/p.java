package d2;

import android.os.Build;
import androidx.work.ListenableWorker;
import d2.w;
import java.util.concurrent.TimeUnit;

/* compiled from: PeriodicWorkRequest.java */
/* loaded from: classes.dex */
public final class p extends w {

    /* compiled from: PeriodicWorkRequest.java */
    /* loaded from: classes.dex */
    public static final class a extends w.a<a, p> {
        public a(Class<? extends ListenableWorker> cls, long j10, TimeUnit timeUnit, long j11, TimeUnit timeUnit2) {
            super(cls);
            this.f5607c.f(timeUnit.toMillis(j10), timeUnit2.toMillis(j11));
        }

        @Override // d2.w.a
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public p c() {
            if (this.f5605a && Build.VERSION.SDK_INT >= 23 && this.f5607c.f10836j.h()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
            }
            m2.p pVar = this.f5607c;
            if (pVar.f10843q && Build.VERSION.SDK_INT >= 23 && pVar.f10836j.h()) {
                throw new IllegalArgumentException("Cannot run in foreground with an idle mode constraint");
            }
            return new p(this);
        }

        @Override // d2.w.a
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public a d() {
            return this;
        }
    }

    public p(a aVar) {
        super(aVar.f5606b, aVar.f5607c, aVar.f5608d);
    }
}
