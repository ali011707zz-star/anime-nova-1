package k2;

import android.content.Context;
import d2.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* compiled from: ConstraintTracker.java */
/* loaded from: classes.dex */
public abstract class d<T> {

    /* renamed from: f, reason: collision with root package name */
    public static final String f9866f = l.f("ConstraintTracker");

    /* renamed from: a, reason: collision with root package name */
    public final p2.a f9867a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f9868b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f9869c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public final Set<i2.a<T>> f9870d = new LinkedHashSet();

    /* renamed from: e, reason: collision with root package name */
    public T f9871e;

    /* compiled from: ConstraintTracker.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ List f9872f;

        public a(List list) {
            this.f9872f = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = this.f9872f.iterator();
            while (it2.hasNext()) {
                ((i2.a) it2.next()).a(d.this.f9871e);
            }
        }
    }

    public d(Context context, p2.a aVar) {
        this.f9868b = context.getApplicationContext();
        this.f9867a = aVar;
    }

    public void a(i2.a<T> aVar) {
        synchronized (this.f9869c) {
            if (this.f9870d.add(aVar)) {
                if (this.f9870d.size() == 1) {
                    this.f9871e = b();
                    l.c().a(f9866f, String.format("%s: initial state = %s", getClass().getSimpleName(), this.f9871e), new Throwable[0]);
                    e();
                }
                aVar.a(this.f9871e);
            }
        }
    }

    public abstract T b();

    public void c(i2.a<T> aVar) {
        synchronized (this.f9869c) {
            if (this.f9870d.remove(aVar) && this.f9870d.isEmpty()) {
                f();
            }
        }
    }

    public void d(T t10) {
        synchronized (this.f9869c) {
            T t11 = this.f9871e;
            if (t11 != t10 && (t11 == null || !t11.equals(t10))) {
                this.f9871e = t10;
                this.f9867a.a().execute(new a(new ArrayList(this.f9870d)));
            }
        }
    }

    public abstract void e();

    public abstract void f();
}
