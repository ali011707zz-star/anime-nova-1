package d2;

import android.os.Build;
import androidx.work.ListenableWorker;
import androidx.work.OverwritingInputMerger;
import d2.w;

/* compiled from: OneTimeWorkRequest.java */
/* loaded from: classes.dex */
public final class n extends w {

    /* compiled from: OneTimeWorkRequest.java */
    /* loaded from: classes.dex */
    public static final class a extends w.a<a, n> {
        public a(Class<? extends ListenableWorker> cls) {
            super(cls);
            this.f5607c.f10830d = OverwritingInputMerger.class.getName();
        }

        @Override // d2.w.a
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public n c() {
            if (this.f5605a && Build.VERSION.SDK_INT >= 23 && this.f5607c.f10836j.h()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
            }
            m2.p pVar = this.f5607c;
            if (pVar.f10843q && Build.VERSION.SDK_INT >= 23 && pVar.f10836j.h()) {
                throw new IllegalArgumentException("Cannot run in foreground with an idle mode constraint");
            }
            return new n(this);
        }

        @Override // d2.w.a
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public a d() {
            return this;
        }
    }

    public n(a aVar) {
        super(aVar.f5606b, aVar.f5607c, aVar.f5608d);
    }

    public static n e(Class<? extends ListenableWorker> cls) {
        return new a(cls).b();
    }
}
