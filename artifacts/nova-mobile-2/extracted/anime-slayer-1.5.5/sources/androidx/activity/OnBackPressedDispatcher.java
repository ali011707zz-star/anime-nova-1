package androidx.activity;

import android.annotation.SuppressLint;
import androidx.lifecycle.k;
import androidx.lifecycle.n;
import androidx.lifecycle.q;
import java.util.ArrayDeque;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f668a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque<b> f669b = new ArrayDeque<>();

    /* loaded from: classes.dex */
    public class LifecycleOnBackPressedCancellable implements n, androidx.activity.a {

        /* renamed from: f, reason: collision with root package name */
        public final k f670f;

        /* renamed from: g, reason: collision with root package name */
        public final b f671g;

        /* renamed from: h, reason: collision with root package name */
        public androidx.activity.a f672h;

        public LifecycleOnBackPressedCancellable(k kVar, b bVar) {
            this.f670f = kVar;
            this.f671g = bVar;
            kVar.a(this);
        }

        @Override // androidx.activity.a
        public void cancel() {
            this.f670f.c(this);
            this.f671g.e(this);
            androidx.activity.a aVar = this.f672h;
            if (aVar != null) {
                aVar.cancel();
                this.f672h = null;
            }
        }

        @Override // androidx.lifecycle.n
        public void e(q qVar, k.b bVar) {
            if (bVar == k.b.ON_START) {
                this.f672h = OnBackPressedDispatcher.this.b(this.f671g);
                return;
            }
            if (bVar == k.b.ON_STOP) {
                androidx.activity.a aVar = this.f672h;
                if (aVar != null) {
                    aVar.cancel();
                    return;
                }
                return;
            }
            if (bVar == k.b.ON_DESTROY) {
                cancel();
            }
        }
    }

    /* loaded from: classes.dex */
    public class a implements androidx.activity.a {

        /* renamed from: f, reason: collision with root package name */
        public final b f674f;

        public a(b bVar) {
            this.f674f = bVar;
        }

        @Override // androidx.activity.a
        public void cancel() {
            OnBackPressedDispatcher.this.f669b.remove(this.f674f);
            this.f674f.e(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f668a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    public void a(q qVar, b bVar) {
        k lifecycle = qVar.getLifecycle();
        if (lifecycle.b() == k.c.DESTROYED) {
            return;
        }
        bVar.a(new LifecycleOnBackPressedCancellable(lifecycle, bVar));
    }

    public androidx.activity.a b(b bVar) {
        this.f669b.add(bVar);
        a aVar = new a(bVar);
        bVar.a(aVar);
        return aVar;
    }

    public void c() {
        Iterator<b> descendingIterator = this.f669b.descendingIterator();
        while (descendingIterator.hasNext()) {
            b next = descendingIterator.next();
            if (next.c()) {
                next.b();
                return;
            }
        }
        Runnable runnable = this.f668a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
