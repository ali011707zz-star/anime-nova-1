package n0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import h0.h;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import n0.f;

/* compiled from: FontRequestWorker.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final s.e<String, Typeface> f11131a = new s.e<>(16);

    /* renamed from: b, reason: collision with root package name */
    public static final ExecutorService f11132b = g.a("fonts-androidx", 10, 10000);

    /* renamed from: c, reason: collision with root package name */
    public static final Object f11133c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public static final s.g<String, ArrayList<p0.a<C0266e>>> f11134d = new s.g<>();

    /* compiled from: FontRequestWorker.java */
    /* loaded from: classes.dex */
    public class a implements Callable<C0266e> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f11135a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f11136b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ n0.d f11137c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f11138d;

        public a(String str, Context context, n0.d dVar, int i10) {
            this.f11135a = str;
            this.f11136b = context;
            this.f11137c = dVar;
            this.f11138d = i10;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0266e call() {
            return e.c(this.f11135a, this.f11136b, this.f11137c, this.f11138d);
        }
    }

    /* compiled from: FontRequestWorker.java */
    /* loaded from: classes.dex */
    public class b implements p0.a<C0266e> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ n0.a f11139a;

        public b(n0.a aVar) {
            this.f11139a = aVar;
        }

        @Override // p0.a
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(C0266e c0266e) {
            if (c0266e == null) {
                c0266e = new C0266e(-3);
            }
            this.f11139a.b(c0266e);
        }
    }

    /* compiled from: FontRequestWorker.java */
    /* loaded from: classes.dex */
    public class c implements Callable<C0266e> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f11140a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f11141b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ n0.d f11142c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f11143d;

        public c(String str, Context context, n0.d dVar, int i10) {
            this.f11140a = str;
            this.f11141b = context;
            this.f11142c = dVar;
            this.f11143d = i10;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0266e call() {
            try {
                return e.c(this.f11140a, this.f11141b, this.f11142c, this.f11143d);
            } catch (Throwable unused) {
                return new C0266e(-3);
            }
        }
    }

    /* compiled from: FontRequestWorker.java */
    /* loaded from: classes.dex */
    public class d implements p0.a<C0266e> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f11144a;

        public d(String str) {
            this.f11144a = str;
        }

        @Override // p0.a
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(C0266e c0266e) {
            synchronized (e.f11133c) {
                s.g<String, ArrayList<p0.a<C0266e>>> gVar = e.f11134d;
                ArrayList<p0.a<C0266e>> arrayList = gVar.get(this.f11144a);
                if (arrayList == null) {
                    return;
                }
                gVar.remove(this.f11144a);
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    arrayList.get(i10).a(c0266e);
                }
            }
        }
    }

    public static String a(n0.d dVar, int i10) {
        return dVar.d() + "-" + i10;
    }

    @SuppressLint({"WrongConstant"})
    public static int b(f.a aVar) {
        int i10 = 1;
        if (aVar.c() != 0) {
            return aVar.c() != 1 ? -3 : -2;
        }
        f.b[] b10 = aVar.b();
        if (b10 != null && b10.length != 0) {
            i10 = 0;
            for (f.b bVar : b10) {
                int b11 = bVar.b();
                if (b11 != 0) {
                    if (b11 < 0) {
                        return -3;
                    }
                    return b11;
                }
            }
        }
        return i10;
    }

    public static C0266e c(String str, Context context, n0.d dVar, int i10) {
        s.e<String, Typeface> eVar = f11131a;
        Typeface typeface = eVar.get(str);
        if (typeface != null) {
            return new C0266e(typeface);
        }
        try {
            f.a d10 = n0.c.d(context, dVar, null);
            int b10 = b(d10);
            if (b10 != 0) {
                return new C0266e(b10);
            }
            Typeface b11 = h.b(context, null, d10.b(), i10);
            if (b11 != null) {
                eVar.put(str, b11);
                return new C0266e(b11);
            }
            return new C0266e(-3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new C0266e(-1);
        }
    }

    public static Typeface d(Context context, n0.d dVar, int i10, Executor executor, n0.a aVar) {
        String a10 = a(dVar, i10);
        Typeface typeface = f11131a.get(a10);
        if (typeface != null) {
            aVar.b(new C0266e(typeface));
            return typeface;
        }
        b bVar = new b(aVar);
        synchronized (f11133c) {
            s.g<String, ArrayList<p0.a<C0266e>>> gVar = f11134d;
            ArrayList<p0.a<C0266e>> arrayList = gVar.get(a10);
            if (arrayList != null) {
                arrayList.add(bVar);
                return null;
            }
            ArrayList<p0.a<C0266e>> arrayList2 = new ArrayList<>();
            arrayList2.add(bVar);
            gVar.put(a10, arrayList2);
            c cVar = new c(a10, context, dVar, i10);
            if (executor == null) {
                executor = f11132b;
            }
            g.b(executor, cVar, new d(a10));
            return null;
        }
    }

    public static Typeface e(Context context, n0.d dVar, n0.a aVar, int i10, int i11) {
        String a10 = a(dVar, i10);
        Typeface typeface = f11131a.get(a10);
        if (typeface != null) {
            aVar.b(new C0266e(typeface));
            return typeface;
        }
        if (i11 == -1) {
            C0266e c10 = c(a10, context, dVar, i10);
            aVar.b(c10);
            return c10.f11145a;
        }
        try {
            C0266e c0266e = (C0266e) g.c(f11132b, new a(a10, context, dVar, i10), i11);
            aVar.b(c0266e);
            return c0266e.f11145a;
        } catch (InterruptedException unused) {
            aVar.b(new C0266e(-3));
            return null;
        }
    }

    /* compiled from: FontRequestWorker.java */
    /* renamed from: n0.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0266e {

        /* renamed from: a, reason: collision with root package name */
        public final Typeface f11145a;

        /* renamed from: b, reason: collision with root package name */
        public final int f11146b;

        public C0266e(int i10) {
            this.f11145a = null;
            this.f11146b = i10;
        }

        @SuppressLint({"WrongConstant"})
        public boolean a() {
            return this.f11146b == 0;
        }

        @SuppressLint({"WrongConstant"})
        public C0266e(Typeface typeface) {
            this.f11145a = typeface;
            this.f11146b = 0;
        }
    }
}
