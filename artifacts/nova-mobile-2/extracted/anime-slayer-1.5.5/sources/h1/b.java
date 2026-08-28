package h1;

import android.os.Bundle;
import android.os.Looper;
import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.q;
import androidx.lifecycle.y;
import androidx.lifecycle.z;
import h1.a;
import i1.b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import s.h;

/* compiled from: LoaderManagerImpl.java */
/* loaded from: classes.dex */
public class b extends h1.a {

    /* renamed from: c, reason: collision with root package name */
    public static boolean f7183c = false;

    /* renamed from: a, reason: collision with root package name */
    public final q f7184a;

    /* renamed from: b, reason: collision with root package name */
    public final c f7185b;

    /* compiled from: LoaderManagerImpl.java */
    /* loaded from: classes.dex */
    public static class a<D> extends y<D> implements b.InterfaceC0147b<D> {

        /* renamed from: l, reason: collision with root package name */
        public final int f7186l;

        /* renamed from: m, reason: collision with root package name */
        public final Bundle f7187m;

        /* renamed from: n, reason: collision with root package name */
        public final i1.b<D> f7188n;

        /* renamed from: o, reason: collision with root package name */
        public q f7189o;

        /* renamed from: p, reason: collision with root package name */
        public C0136b<D> f7190p;

        /* renamed from: q, reason: collision with root package name */
        public i1.b<D> f7191q;

        public a(int i10, Bundle bundle, i1.b<D> bVar, i1.b<D> bVar2) {
            this.f7186l = i10;
            this.f7187m = bundle;
            this.f7188n = bVar;
            this.f7191q = bVar2;
            bVar.registerListener(i10, this);
        }

        @Override // i1.b.InterfaceC0147b
        public void a(i1.b<D> bVar, D d10) {
            if (b.f7183c) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onLoadComplete: ");
                sb2.append(this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                o(d10);
            } else {
                boolean z10 = b.f7183c;
                m(d10);
            }
        }

        @Override // androidx.lifecycle.LiveData
        public void k() {
            if (b.f7183c) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("  Starting: ");
                sb2.append(this);
            }
            this.f7188n.startLoading();
        }

        @Override // androidx.lifecycle.LiveData
        public void l() {
            if (b.f7183c) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("  Stopping: ");
                sb2.append(this);
            }
            this.f7188n.stopLoading();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void n(z<? super D> zVar) {
            super.n(zVar);
            this.f7189o = null;
            this.f7190p = null;
        }

        @Override // androidx.lifecycle.y, androidx.lifecycle.LiveData
        public void o(D d10) {
            super.o(d10);
            i1.b<D> bVar = this.f7191q;
            if (bVar != null) {
                bVar.reset();
                this.f7191q = null;
            }
        }

        public i1.b<D> p(boolean z10) {
            if (b.f7183c) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("  Destroying: ");
                sb2.append(this);
            }
            this.f7188n.cancelLoad();
            this.f7188n.abandon();
            C0136b<D> c0136b = this.f7190p;
            if (c0136b != null) {
                n(c0136b);
                if (z10) {
                    c0136b.c();
                }
            }
            this.f7188n.unregisterListener(this);
            if ((c0136b != null && !c0136b.b()) || z10) {
                this.f7188n.reset();
                return this.f7191q;
            }
            return this.f7188n;
        }

        public void q(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f7186l);
            printWriter.print(" mArgs=");
            printWriter.println(this.f7187m);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f7188n);
            this.f7188n.dump(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f7190p != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f7190p);
                this.f7190p.a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(r().dataToString(f()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(h());
        }

        public i1.b<D> r() {
            return this.f7188n;
        }

        public void s() {
            q qVar = this.f7189o;
            C0136b<D> c0136b = this.f7190p;
            if (qVar == null || c0136b == null) {
                return;
            }
            super.n(c0136b);
            i(qVar, c0136b);
        }

        public i1.b<D> t(q qVar, a.InterfaceC0135a<D> interfaceC0135a) {
            C0136b<D> c0136b = new C0136b<>(this.f7188n, interfaceC0135a);
            i(qVar, c0136b);
            C0136b<D> c0136b2 = this.f7190p;
            if (c0136b2 != null) {
                n(c0136b2);
            }
            this.f7189o = qVar;
            this.f7190p = c0136b;
            return this.f7188n;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append("LoaderInfo{");
            sb2.append(Integer.toHexString(System.identityHashCode(this)));
            sb2.append(" #");
            sb2.append(this.f7186l);
            sb2.append(" : ");
            p0.b.a(this.f7188n, sb2);
            sb2.append("}}");
            return sb2.toString();
        }
    }

    /* compiled from: LoaderManagerImpl.java */
    /* renamed from: h1.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0136b<D> implements z<D> {

        /* renamed from: f, reason: collision with root package name */
        public final i1.b<D> f7192f;

        /* renamed from: g, reason: collision with root package name */
        public final a.InterfaceC0135a<D> f7193g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f7194h = false;

        public C0136b(i1.b<D> bVar, a.InterfaceC0135a<D> interfaceC0135a) {
            this.f7192f = bVar;
            this.f7193g = interfaceC0135a;
        }

        @Override // androidx.lifecycle.z
        public void B(D d10) {
            if (b.f7183c) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("  onLoadFinished in ");
                sb2.append(this.f7192f);
                sb2.append(": ");
                sb2.append(this.f7192f.dataToString(d10));
            }
            this.f7193g.onLoadFinished(this.f7192f, d10);
            this.f7194h = true;
        }

        public void a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f7194h);
        }

        public boolean b() {
            return this.f7194h;
        }

        public void c() {
            if (this.f7194h) {
                if (b.f7183c) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("  Resetting: ");
                    sb2.append(this.f7192f);
                }
                this.f7193g.onLoaderReset(this.f7192f);
            }
        }

        public String toString() {
            return this.f7193g.toString();
        }
    }

    /* compiled from: LoaderManagerImpl.java */
    /* loaded from: classes.dex */
    public static class c extends i0 {

        /* renamed from: c, reason: collision with root package name */
        public static final l0.b f7195c = new a();

        /* renamed from: a, reason: collision with root package name */
        public h<a> f7196a = new h<>();

        /* renamed from: b, reason: collision with root package name */
        public boolean f7197b = false;

        /* compiled from: LoaderManagerImpl.java */
        /* loaded from: classes.dex */
        public static class a implements l0.b {
            @Override // androidx.lifecycle.l0.b
            public <T extends i0> T a(Class<T> cls) {
                return new c();
            }
        }

        public static c c(m0 m0Var) {
            return (c) new l0(m0Var, f7195c).a(c.class);
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f7196a.j() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i10 = 0; i10 < this.f7196a.j(); i10++) {
                    a k10 = this.f7196a.k(i10);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f7196a.h(i10));
                    printWriter.print(": ");
                    printWriter.println(k10.toString());
                    k10.q(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        public void b() {
            this.f7197b = false;
        }

        public <D> a<D> d(int i10) {
            return this.f7196a.e(i10);
        }

        public boolean e() {
            return this.f7197b;
        }

        public void f() {
            int j10 = this.f7196a.j();
            for (int i10 = 0; i10 < j10; i10++) {
                this.f7196a.k(i10).s();
            }
        }

        public void g(int i10, a aVar) {
            this.f7196a.i(i10, aVar);
        }

        public void h() {
            this.f7197b = true;
        }

        @Override // androidx.lifecycle.i0
        public void onCleared() {
            super.onCleared();
            int j10 = this.f7196a.j();
            for (int i10 = 0; i10 < j10; i10++) {
                this.f7196a.k(i10).p(true);
            }
            this.f7196a.b();
        }
    }

    public b(q qVar, m0 m0Var) {
        this.f7184a = qVar;
        this.f7185b = c.c(m0Var);
    }

    @Override // h1.a
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f7185b.a(str, fileDescriptor, printWriter, strArr);
    }

    @Override // h1.a
    public <D> i1.b<D> c(int i10, Bundle bundle, a.InterfaceC0135a<D> interfaceC0135a) {
        if (!this.f7185b.e()) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                a<D> d10 = this.f7185b.d(i10);
                if (f7183c) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("initLoader in ");
                    sb2.append(this);
                    sb2.append(": args=");
                    sb2.append(bundle);
                }
                if (d10 == null) {
                    return e(i10, bundle, interfaceC0135a, null);
                }
                if (f7183c) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("  Re-using existing loader ");
                    sb3.append(d10);
                }
                return d10.t(this.f7184a, interfaceC0135a);
            }
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // h1.a
    public void d() {
        this.f7185b.f();
    }

    public final <D> i1.b<D> e(int i10, Bundle bundle, a.InterfaceC0135a<D> interfaceC0135a, i1.b<D> bVar) {
        try {
            this.f7185b.h();
            i1.b<D> onCreateLoader = interfaceC0135a.onCreateLoader(i10, bundle);
            if (onCreateLoader != null) {
                if (onCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(onCreateLoader.getClass().getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + onCreateLoader);
                }
                a aVar = new a(i10, bundle, onCreateLoader, bVar);
                if (f7183c) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("  Created new loader ");
                    sb2.append(aVar);
                }
                this.f7185b.g(i10, aVar);
                this.f7185b.b();
                return aVar.t(this.f7184a, interfaceC0135a);
            }
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
        } catch (Throwable th) {
            this.f7185b.b();
            throw th;
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("LoaderManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        p0.b.a(this.f7184a, sb2);
        sb2.append("}}");
        return sb2.toString();
    }
}
