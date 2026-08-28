package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.j;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* compiled from: AsyncListDiffer.java */
/* loaded from: classes.dex */
public class d<T> {

    /* renamed from: h, reason: collision with root package name */
    public static final Executor f2889h = new c();

    /* renamed from: a, reason: collision with root package name */
    public final p f2890a;

    /* renamed from: b, reason: collision with root package name */
    public final androidx.recyclerview.widget.c<T> f2891b;

    /* renamed from: c, reason: collision with root package name */
    public Executor f2892c;

    /* renamed from: e, reason: collision with root package name */
    public List<T> f2894e;

    /* renamed from: g, reason: collision with root package name */
    public int f2896g;

    /* renamed from: d, reason: collision with root package name */
    public final List<b<T>> f2893d = new CopyOnWriteArrayList();

    /* renamed from: f, reason: collision with root package name */
    public List<T> f2895f = Collections.emptyList();

    /* compiled from: AsyncListDiffer.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ List f2897f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ List f2898g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ int f2899h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Runnable f2900i;

        /* compiled from: AsyncListDiffer.java */
        /* renamed from: androidx.recyclerview.widget.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0047a extends j.b {
            public C0047a() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.j.b
            public boolean a(int i10, int i11) {
                Object obj = a.this.f2897f.get(i10);
                Object obj2 = a.this.f2898g.get(i11);
                if (obj != null && obj2 != null) {
                    return d.this.f2891b.b().a(obj, obj2);
                }
                if (obj == null && obj2 == null) {
                    return true;
                }
                throw new AssertionError();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.j.b
            public boolean b(int i10, int i11) {
                Object obj = a.this.f2897f.get(i10);
                Object obj2 = a.this.f2898g.get(i11);
                if (obj == null || obj2 == null) {
                    return obj == null && obj2 == null;
                }
                return d.this.f2891b.b().b(obj, obj2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.recyclerview.widget.j.b
            public Object c(int i10, int i11) {
                Object obj = a.this.f2897f.get(i10);
                Object obj2 = a.this.f2898g.get(i11);
                if (obj != null && obj2 != null) {
                    return d.this.f2891b.b().c(obj, obj2);
                }
                throw new AssertionError();
            }

            @Override // androidx.recyclerview.widget.j.b
            public int d() {
                return a.this.f2898g.size();
            }

            @Override // androidx.recyclerview.widget.j.b
            public int e() {
                return a.this.f2897f.size();
            }
        }

        /* compiled from: AsyncListDiffer.java */
        /* loaded from: classes.dex */
        public class b implements Runnable {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ j.e f2903f;

            public b(j.e eVar) {
                this.f2903f = eVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                d dVar = d.this;
                if (dVar.f2896g == aVar.f2899h) {
                    dVar.c(aVar.f2898g, this.f2903f, aVar.f2900i);
                }
            }
        }

        public a(List list, List list2, int i10, Runnable runnable) {
            this.f2897f = list;
            this.f2898g = list2;
            this.f2899h = i10;
            this.f2900i = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f2892c.execute(new b(j.b(new C0047a())));
        }
    }

    /* compiled from: AsyncListDiffer.java */
    /* loaded from: classes.dex */
    public interface b<T> {
        void a(List<T> list, List<T> list2);
    }

    /* compiled from: AsyncListDiffer.java */
    /* loaded from: classes.dex */
    public static class c implements Executor {

        /* renamed from: f, reason: collision with root package name */
        public final Handler f2905f = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f2905f.post(runnable);
        }
    }

    public d(p pVar, androidx.recyclerview.widget.c<T> cVar) {
        this.f2890a = pVar;
        this.f2891b = cVar;
        if (cVar.c() != null) {
            this.f2892c = cVar.c();
        } else {
            this.f2892c = f2889h;
        }
    }

    public void a(b<T> bVar) {
        this.f2893d.add(bVar);
    }

    public List<T> b() {
        return this.f2895f;
    }

    public void c(List<T> list, j.e eVar, Runnable runnable) {
        List<T> list2 = this.f2895f;
        this.f2894e = list;
        this.f2895f = Collections.unmodifiableList(list);
        eVar.c(this.f2890a);
        d(list2, runnable);
    }

    public final void d(List<T> list, Runnable runnable) {
        Iterator<b<T>> it2 = this.f2893d.iterator();
        while (it2.hasNext()) {
            it2.next().a(list, this.f2895f);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void e(List<T> list) {
        f(list, null);
    }

    public void f(List<T> list, Runnable runnable) {
        int i10 = this.f2896g + 1;
        this.f2896g = i10;
        List<T> list2 = this.f2894e;
        if (list == list2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List<T> list3 = this.f2895f;
        if (list == null) {
            int size = list2.size();
            this.f2894e = null;
            this.f2895f = Collections.emptyList();
            this.f2890a.a(0, size);
            d(list3, runnable);
            return;
        }
        if (list2 == null) {
            this.f2894e = list;
            this.f2895f = Collections.unmodifiableList(list);
            this.f2890a.b(0, list.size());
            d(list3, runnable);
            return;
        }
        this.f2891b.a().execute(new a(list2, list, i10, runnable));
    }
}
