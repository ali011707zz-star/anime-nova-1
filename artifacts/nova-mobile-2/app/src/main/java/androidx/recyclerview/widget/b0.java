package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ViewTypeStorage.java */
/* loaded from: classes.dex */
public interface b0 {

    /* compiled from: ViewTypeStorage.java */
    /* loaded from: classes.dex */
    public static class a implements b0 {

        /* renamed from: a, reason: collision with root package name */
        public SparseArray<q> f2872a = new SparseArray<>();

        /* renamed from: b, reason: collision with root package name */
        public int f2873b = 0;

        /* compiled from: ViewTypeStorage.java */
        /* renamed from: androidx.recyclerview.widget.b0$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0046a implements c {

            /* renamed from: a, reason: collision with root package name */
            public SparseIntArray f2874a = new SparseIntArray(1);

            /* renamed from: b, reason: collision with root package name */
            public SparseIntArray f2875b = new SparseIntArray(1);

            /* renamed from: c, reason: collision with root package name */
            public final q f2876c;

            public C0046a(q qVar) {
                this.f2876c = qVar;
            }

            @Override // androidx.recyclerview.widget.b0.c
            public int a(int i10) {
                int indexOfKey = this.f2875b.indexOfKey(i10);
                if (indexOfKey >= 0) {
                    return this.f2875b.valueAt(indexOfKey);
                }
                throw new IllegalStateException("requested global type " + i10 + " does not belong to the adapter:" + this.f2876c.f3073c);
            }

            @Override // androidx.recyclerview.widget.b0.c
            public int b(int i10) {
                int indexOfKey = this.f2874a.indexOfKey(i10);
                if (indexOfKey > -1) {
                    return this.f2874a.valueAt(indexOfKey);
                }
                int c10 = a.this.c(this.f2876c);
                this.f2874a.put(i10, c10);
                this.f2875b.put(c10, i10);
                return c10;
            }
        }

        @Override // androidx.recyclerview.widget.b0
        public c a(q qVar) {
            return new C0046a(qVar);
        }

        @Override // androidx.recyclerview.widget.b0
        public q b(int i10) {
            q qVar = this.f2872a.get(i10);
            if (qVar != null) {
                return qVar;
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i10);
        }

        public int c(q qVar) {
            int i10 = this.f2873b;
            this.f2873b = i10 + 1;
            this.f2872a.put(i10, qVar);
            return i10;
        }
    }

    /* compiled from: ViewTypeStorage.java */
    /* loaded from: classes.dex */
    public static class b implements b0 {

        /* renamed from: a, reason: collision with root package name */
        public SparseArray<List<q>> f2878a = new SparseArray<>();

        /* compiled from: ViewTypeStorage.java */
        /* loaded from: classes.dex */
        public class a implements c {

            /* renamed from: a, reason: collision with root package name */
            public final q f2879a;

            public a(q qVar) {
                this.f2879a = qVar;
            }

            @Override // androidx.recyclerview.widget.b0.c
            public int a(int i10) {
                return i10;
            }

            @Override // androidx.recyclerview.widget.b0.c
            public int b(int i10) {
                List<q> list = b.this.f2878a.get(i10);
                if (list == null) {
                    list = new ArrayList<>();
                    b.this.f2878a.put(i10, list);
                }
                if (!list.contains(this.f2879a)) {
                    list.add(this.f2879a);
                }
                return i10;
            }
        }

        @Override // androidx.recyclerview.widget.b0
        public c a(q qVar) {
            return new a(qVar);
        }

        @Override // androidx.recyclerview.widget.b0
        public q b(int i10) {
            List<q> list = this.f2878a.get(i10);
            if (list != null && !list.isEmpty()) {
                return list.get(0);
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i10);
        }
    }

    /* compiled from: ViewTypeStorage.java */
    /* loaded from: classes.dex */
    public interface c {
        int a(int i10);

        int b(int i10);
    }

    c a(q qVar);

    q b(int i10);
}
