package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import androidx.emoji2.text.EmojiCompatInitializer;
import androidx.emoji2.text.d;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.lifecycle.q;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public class EmojiCompatInitializer implements t1.b<Boolean> {

    /* loaded from: classes.dex */
    public static class a extends d.c {
        public a(Context context) {
            super(new b(context));
            b(1);
        }
    }

    /* loaded from: classes.dex */
    public static class b implements d.g {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1916a;

        /* loaded from: classes.dex */
        public class a extends d.h {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ d.h f1917a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ThreadPoolExecutor f1918b;

            public a(d.h hVar, ThreadPoolExecutor threadPoolExecutor) {
                this.f1917a = hVar;
                this.f1918b = threadPoolExecutor;
            }

            @Override // androidx.emoji2.text.d.h
            public void a(Throwable th) {
                try {
                    this.f1917a.a(th);
                } finally {
                    this.f1918b.shutdown();
                }
            }

            @Override // androidx.emoji2.text.d.h
            public void b(l lVar) {
                try {
                    this.f1917a.b(lVar);
                } finally {
                    this.f1918b.shutdown();
                }
            }
        }

        public b(Context context) {
            this.f1916a = context.getApplicationContext();
        }

        @Override // androidx.emoji2.text.d.g
        public void a(final d.h hVar) {
            final ThreadPoolExecutor b10 = androidx.emoji2.text.b.b("EmojiCompatInitializer");
            b10.execute(new Runnable() { // from class: androidx.emoji2.text.e
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiCompatInitializer.b.this.d(hVar, b10);
                }
            });
        }

        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void d(d.h hVar, ThreadPoolExecutor threadPoolExecutor) {
            try {
                i a10 = androidx.emoji2.text.c.a(this.f1916a);
                if (a10 != null) {
                    a10.c(threadPoolExecutor);
                    a10.a().a(new a(hVar, threadPoolExecutor));
                    return;
                }
                throw new RuntimeException("EmojiCompat font provider not available on this device.");
            } catch (Throwable th) {
                hVar.a(th);
                threadPoolExecutor.shutdown();
            }
        }
    }

    /* loaded from: classes.dex */
    public static class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                m0.k.a("EmojiCompat.EmojiCompatInitializer.run");
                if (d.h()) {
                    d.b().k();
                }
            } finally {
                m0.k.b();
            }
        }
    }

    @Override // t1.b
    public List<Class<? extends t1.b<?>>> a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // t1.b
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Boolean b(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            d.g(new a(context));
            d(context);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    public void d(Context context) {
        final androidx.lifecycle.k lifecycle = ((q) t1.a.c(context).d(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.a(new androidx.lifecycle.f() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.i
            public void b(q qVar) {
                EmojiCompatInitializer.this.e();
                lifecycle.c(this);
            }

            @Override // androidx.lifecycle.i
            public /* synthetic */ void c(q qVar) {
                androidx.lifecycle.e.b(this, qVar);
            }

            @Override // androidx.lifecycle.i
            public /* synthetic */ void d(q qVar) {
                androidx.lifecycle.e.a(this, qVar);
            }

            @Override // androidx.lifecycle.i
            public /* synthetic */ void g(q qVar) {
                androidx.lifecycle.e.c(this, qVar);
            }

            @Override // androidx.lifecycle.i
            public /* synthetic */ void h(q qVar) {
                androidx.lifecycle.e.e(this, qVar);
            }

            @Override // androidx.lifecycle.i
            public /* synthetic */ void i(q qVar) {
                androidx.lifecycle.e.f(this, qVar);
            }
        });
    }

    public void e() {
        androidx.emoji2.text.b.d().postDelayed(new c(), 500L);
    }
}
