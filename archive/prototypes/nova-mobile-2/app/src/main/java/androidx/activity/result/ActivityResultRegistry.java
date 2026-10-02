package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import androidx.lifecycle.k;
import androidx.lifecycle.n;
import androidx.lifecycle.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/* loaded from: classes.dex */
public abstract class ActivityResultRegistry {

    /* renamed from: a, reason: collision with root package name */
    public Random f678a = new Random();

    /* renamed from: b, reason: collision with root package name */
    public final Map<Integer, String> f679b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, Integer> f680c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final Map<String, d> f681d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public ArrayList<String> f682e = new ArrayList<>();

    /* renamed from: f, reason: collision with root package name */
    public final transient Map<String, c<?>> f683f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final Map<String, Object> f684g = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    public final Bundle f685h = new Bundle();

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* loaded from: classes.dex */
    public class a<I> extends androidx.activity.result.c<I> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f690a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f691b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ c.a f692c;

        public a(String str, int i10, c.a aVar) {
            this.f690a = str;
            this.f691b = i10;
            this.f692c = aVar;
        }

        @Override // androidx.activity.result.c
        public void b(I i10, e0.c cVar) {
            ActivityResultRegistry.this.f682e.add(this.f690a);
            Integer num = ActivityResultRegistry.this.f680c.get(this.f690a);
            ActivityResultRegistry.this.f(num != null ? num.intValue() : this.f691b, this.f692c, i10, cVar);
        }

        @Override // androidx.activity.result.c
        public void c() {
            ActivityResultRegistry.this.l(this.f690a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* loaded from: classes.dex */
    public class b<I> extends androidx.activity.result.c<I> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f694a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f695b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ c.a f696c;

        public b(String str, int i10, c.a aVar) {
            this.f694a = str;
            this.f695b = i10;
            this.f696c = aVar;
        }

        @Override // androidx.activity.result.c
        public void b(I i10, e0.c cVar) {
            ActivityResultRegistry.this.f682e.add(this.f694a);
            Integer num = ActivityResultRegistry.this.f680c.get(this.f694a);
            ActivityResultRegistry.this.f(num != null ? num.intValue() : this.f695b, this.f696c, i10, cVar);
        }

        @Override // androidx.activity.result.c
        public void c() {
            ActivityResultRegistry.this.l(this.f694a);
        }
    }

    /* loaded from: classes.dex */
    public static class c<O> {

        /* renamed from: a, reason: collision with root package name */
        public final androidx.activity.result.b<O> f698a;

        /* renamed from: b, reason: collision with root package name */
        public final c.a<?, O> f699b;

        public c(androidx.activity.result.b<O> bVar, c.a<?, O> aVar) {
            this.f698a = bVar;
            this.f699b = aVar;
        }
    }

    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final k f700a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList<n> f701b = new ArrayList<>();

        public d(k kVar) {
            this.f700a = kVar;
        }

        public void a(n nVar) {
            this.f700a.a(nVar);
            this.f701b.add(nVar);
        }

        public void b() {
            Iterator<n> it2 = this.f701b.iterator();
            while (it2.hasNext()) {
                this.f700a.c(it2.next());
            }
            this.f701b.clear();
        }
    }

    public final void a(int i10, String str) {
        this.f679b.put(Integer.valueOf(i10), str);
        this.f680c.put(str, Integer.valueOf(i10));
    }

    public final boolean b(int i10, int i11, Intent intent) {
        String str = this.f679b.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        this.f682e.remove(str);
        d(str, i11, intent, this.f683f.get(str));
        return true;
    }

    public final <O> boolean c(int i10, @SuppressLint({"UnknownNullness"}) O o10) {
        androidx.activity.result.b<?> bVar;
        String str = this.f679b.get(Integer.valueOf(i10));
        if (str == null) {
            return false;
        }
        this.f682e.remove(str);
        c<?> cVar = this.f683f.get(str);
        if (cVar != null && (bVar = cVar.f698a) != null) {
            bVar.a(o10);
            return true;
        }
        this.f685h.remove(str);
        this.f684g.put(str, o10);
        return true;
    }

    public final <O> void d(String str, int i10, Intent intent, c<O> cVar) {
        androidx.activity.result.b<O> bVar;
        if (cVar != null && (bVar = cVar.f698a) != null) {
            bVar.a(cVar.f699b.c(i10, intent));
        } else {
            this.f684g.remove(str);
            this.f685h.putParcelable(str, new androidx.activity.result.a(i10, intent));
        }
    }

    public final int e() {
        int nextInt = this.f678a.nextInt(2147418112);
        while (true) {
            int i10 = nextInt + 65536;
            if (!this.f679b.containsKey(Integer.valueOf(i10))) {
                return i10;
            }
            nextInt = this.f678a.nextInt(2147418112);
        }
    }

    public abstract <I, O> void f(int i10, c.a<I, O> aVar, @SuppressLint({"UnknownNullness"}) I i11, e0.c cVar);

    public final void g(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
        if (stringArrayList == null || integerArrayList == null) {
            return;
        }
        this.f682e = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
        this.f678a = (Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
        this.f685h.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
        for (int i10 = 0; i10 < stringArrayList.size(); i10++) {
            String str = stringArrayList.get(i10);
            if (this.f680c.containsKey(str)) {
                Integer remove = this.f680c.remove(str);
                if (!this.f685h.containsKey(str)) {
                    this.f679b.remove(remove);
                }
            }
            a(integerArrayList.get(i10).intValue(), stringArrayList.get(i10));
        }
    }

    public final void h(Bundle bundle) {
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(this.f680c.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(this.f680c.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(this.f682e));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) this.f685h.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", this.f678a);
    }

    public final <I, O> androidx.activity.result.c<I> i(final String str, q qVar, final c.a<I, O> aVar, final androidx.activity.result.b<O> bVar) {
        k lifecycle = qVar.getLifecycle();
        if (!lifecycle.b().a(k.c.STARTED)) {
            int k10 = k(str);
            d dVar = this.f681d.get(str);
            if (dVar == null) {
                dVar = new d(lifecycle);
            }
            dVar.a(new n() { // from class: androidx.activity.result.ActivityResultRegistry.1
                @Override // androidx.lifecycle.n
                public void e(q qVar2, k.b bVar2) {
                    if (k.b.ON_START.equals(bVar2)) {
                        ActivityResultRegistry.this.f683f.put(str, new c<>(bVar, aVar));
                        if (ActivityResultRegistry.this.f684g.containsKey(str)) {
                            Object obj = ActivityResultRegistry.this.f684g.get(str);
                            ActivityResultRegistry.this.f684g.remove(str);
                            bVar.a(obj);
                        }
                        androidx.activity.result.a aVar2 = (androidx.activity.result.a) ActivityResultRegistry.this.f685h.getParcelable(str);
                        if (aVar2 != null) {
                            ActivityResultRegistry.this.f685h.remove(str);
                            bVar.a(aVar.c(aVar2.c(), aVar2.a()));
                            return;
                        }
                        return;
                    }
                    if (k.b.ON_STOP.equals(bVar2)) {
                        ActivityResultRegistry.this.f683f.remove(str);
                    } else if (k.b.ON_DESTROY.equals(bVar2)) {
                        ActivityResultRegistry.this.l(str);
                    }
                }
            });
            this.f681d.put(str, dVar);
            return new a(str, k10, aVar);
        }
        throw new IllegalStateException("LifecycleOwner " + qVar + " is attempting to register while current state is " + lifecycle.b() + ". LifecycleOwners must call register before they are STARTED.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <I, O> androidx.activity.result.c<I> j(String str, c.a<I, O> aVar, androidx.activity.result.b<O> bVar) {
        int k10 = k(str);
        this.f683f.put(str, new c<>(bVar, aVar));
        if (this.f684g.containsKey(str)) {
            Object obj = this.f684g.get(str);
            this.f684g.remove(str);
            bVar.a(obj);
        }
        androidx.activity.result.a aVar2 = (androidx.activity.result.a) this.f685h.getParcelable(str);
        if (aVar2 != null) {
            this.f685h.remove(str);
            bVar.a(aVar.c(aVar2.c(), aVar2.a()));
        }
        return new b(str, k10, aVar);
    }

    public final int k(String str) {
        Integer num = this.f680c.get(str);
        if (num != null) {
            return num.intValue();
        }
        int e10 = e();
        a(e10, str);
        return e10;
    }

    public final void l(String str) {
        Integer remove;
        if (!this.f682e.contains(str) && (remove = this.f680c.remove(str)) != null) {
            this.f679b.remove(remove);
        }
        this.f683f.remove(str);
        if (this.f684g.containsKey(str)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Dropping pending result for request ");
            sb2.append(str);
            sb2.append(": ");
            sb2.append(this.f684g.get(str));
            this.f684g.remove(str);
        }
        if (this.f685h.containsKey(str)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Dropping pending result for request ");
            sb3.append(str);
            sb3.append(": ");
            sb3.append(this.f685h.getParcelable(str));
            this.f685h.remove(str);
        }
        d dVar = this.f681d.get(str);
        if (dVar != null) {
            dVar.b();
            this.f681d.remove(str);
        }
    }
}
