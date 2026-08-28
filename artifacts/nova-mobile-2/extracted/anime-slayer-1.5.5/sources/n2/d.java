package n2;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.w;
import androidx.lifecycle.z;

/* compiled from: LiveDataUtils.java */
/* loaded from: classes.dex */
public class d {

    /* JADX INFO: Add missing generic type declarations: [In] */
    /* compiled from: LiveDataUtils.java */
    /* loaded from: classes.dex */
    public class a<In> implements z<In> {

        /* renamed from: f, reason: collision with root package name */
        public Out f11197f = null;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ p2.a f11198g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Object f11199h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ n.a f11200i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ w f11201j;

        /* compiled from: LiveDataUtils.java */
        /* renamed from: n2.d$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0269a implements Runnable {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ Object f11202f;

            public RunnableC0269a(Object obj) {
                this.f11202f = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, Out] */
            @Override // java.lang.Runnable
            public void run() {
                synchronized (a.this.f11199h) {
                    ?? apply = a.this.f11200i.apply(this.f11202f);
                    a aVar = a.this;
                    Out out = aVar.f11197f;
                    if (out == 0 && apply != 0) {
                        aVar.f11197f = apply;
                        aVar.f11201j.m(apply);
                    } else if (out != 0 && !out.equals(apply)) {
                        a aVar2 = a.this;
                        aVar2.f11197f = apply;
                        aVar2.f11201j.m(apply);
                    }
                }
            }
        }

        public a(p2.a aVar, Object obj, n.a aVar2, w wVar) {
            this.f11198g = aVar;
            this.f11199h = obj;
            this.f11200i = aVar2;
            this.f11201j = wVar;
        }

        @Override // androidx.lifecycle.z
        public void B(In in) {
            this.f11198g.b(new RunnableC0269a(in));
        }
    }

    public static <In, Out> LiveData<Out> a(LiveData<In> liveData, n.a<In, Out> aVar, p2.a aVar2) {
        Object obj = new Object();
        w wVar = new w();
        wVar.p(liveData, new a(aVar2, obj, aVar, wVar));
        return wVar;
    }
}
