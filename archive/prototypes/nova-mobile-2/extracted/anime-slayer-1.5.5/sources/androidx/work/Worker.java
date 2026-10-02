package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;
import o2.c;

/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {

    /* renamed from: k, reason: collision with root package name */
    public c<ListenableWorker.a> f3290k;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Worker.this.f3290k.p(Worker.this.p());
            } catch (Throwable th) {
                Worker.this.f3290k.q(th);
            }
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.ListenableWorker
    public final w9.a<ListenableWorker.a> n() {
        this.f3290k = c.t();
        b().execute(new a());
        return this.f3290k;
    }

    public abstract ListenableWorker.a p();
}
