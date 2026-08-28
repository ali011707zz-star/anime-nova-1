package androidx.recyclerview.widget;

import androidx.recyclerview.widget.j;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: AsyncDifferConfig.java */
/* loaded from: classes.dex */
public final class c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f2881a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f2882b;

    /* renamed from: c, reason: collision with root package name */
    public final j.f<T> f2883c;

    /* compiled from: AsyncDifferConfig.java */
    /* loaded from: classes.dex */
    public static final class a<T> {

        /* renamed from: d, reason: collision with root package name */
        public static final Object f2884d = new Object();

        /* renamed from: e, reason: collision with root package name */
        public static Executor f2885e;

        /* renamed from: a, reason: collision with root package name */
        public Executor f2886a;

        /* renamed from: b, reason: collision with root package name */
        public Executor f2887b;

        /* renamed from: c, reason: collision with root package name */
        public final j.f<T> f2888c;

        public a(j.f<T> fVar) {
            this.f2888c = fVar;
        }

        public c<T> a() {
            if (this.f2887b == null) {
                synchronized (f2884d) {
                    if (f2885e == null) {
                        f2885e = Executors.newFixedThreadPool(2);
                    }
                }
                this.f2887b = f2885e;
            }
            return new c<>(this.f2886a, this.f2887b, this.f2888c);
        }
    }

    public c(Executor executor, Executor executor2, j.f<T> fVar) {
        this.f2881a = executor;
        this.f2882b = executor2;
        this.f2883c = fVar;
    }

    public Executor a() {
        return this.f2882b;
    }

    public j.f<T> b() {
        return this.f2883c;
    }

    public Executor c() {
        return this.f2881a;
    }
}
