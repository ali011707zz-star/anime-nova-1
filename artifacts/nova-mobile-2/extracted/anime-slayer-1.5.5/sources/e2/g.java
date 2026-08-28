package e2;

import android.text.TextUtils;
import d2.l;
import d2.n;
import d2.o;
import d2.t;
import d2.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: WorkContinuationImpl.java */
/* loaded from: classes.dex */
public class g extends t {

    /* renamed from: j, reason: collision with root package name */
    public static final String f5946j = l.f("WorkContinuationImpl");

    /* renamed from: a, reason: collision with root package name */
    public final i f5947a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5948b;

    /* renamed from: c, reason: collision with root package name */
    public final d2.f f5949c;

    /* renamed from: d, reason: collision with root package name */
    public final List<? extends w> f5950d;

    /* renamed from: e, reason: collision with root package name */
    public final List<String> f5951e;

    /* renamed from: f, reason: collision with root package name */
    public final List<String> f5952f;

    /* renamed from: g, reason: collision with root package name */
    public final List<g> f5953g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f5954h;

    /* renamed from: i, reason: collision with root package name */
    public o f5955i;

    public g(i iVar, List<? extends w> list) {
        this(iVar, null, d2.f.KEEP, list, null);
    }

    public static boolean k(g gVar, Set<String> set) {
        set.addAll(gVar.e());
        Set<String> n10 = n(gVar);
        Iterator<String> it2 = set.iterator();
        while (it2.hasNext()) {
            if (n10.contains(it2.next())) {
                return true;
            }
        }
        List<g> g10 = gVar.g();
        if (g10 != null && !g10.isEmpty()) {
            Iterator<g> it3 = g10.iterator();
            while (it3.hasNext()) {
                if (k(it3.next(), set)) {
                    return true;
                }
            }
        }
        set.removeAll(gVar.e());
        return false;
    }

    public static Set<String> n(g gVar) {
        HashSet hashSet = new HashSet();
        List<g> g10 = gVar.g();
        if (g10 != null && !g10.isEmpty()) {
            Iterator<g> it2 = g10.iterator();
            while (it2.hasNext()) {
                hashSet.addAll(it2.next().e());
            }
        }
        return hashSet;
    }

    @Override // d2.t
    public o a() {
        if (!this.f5954h) {
            n2.b bVar = new n2.b(this);
            this.f5947a.x().b(bVar);
            this.f5955i = bVar.d();
        } else {
            l.c().h(f5946j, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.f5951e)), new Throwable[0]);
        }
        return this.f5955i;
    }

    @Override // d2.t
    public t c(List<n> list) {
        return list.isEmpty() ? this : new g(this.f5947a, this.f5948b, d2.f.KEEP, list, Collections.singletonList(this));
    }

    public d2.f d() {
        return this.f5949c;
    }

    public List<String> e() {
        return this.f5951e;
    }

    public String f() {
        return this.f5948b;
    }

    public List<g> g() {
        return this.f5953g;
    }

    public List<? extends w> h() {
        return this.f5950d;
    }

    public i i() {
        return this.f5947a;
    }

    public boolean j() {
        return k(this, new HashSet());
    }

    public boolean l() {
        return this.f5954h;
    }

    public void m() {
        this.f5954h = true;
    }

    public g(i iVar, String str, d2.f fVar, List<? extends w> list) {
        this(iVar, str, fVar, list, null);
    }

    public g(i iVar, String str, d2.f fVar, List<? extends w> list, List<g> list2) {
        this.f5947a = iVar;
        this.f5948b = str;
        this.f5949c = fVar;
        this.f5950d = list;
        this.f5953g = list2;
        this.f5951e = new ArrayList(list.size());
        this.f5952f = new ArrayList();
        if (list2 != null) {
            Iterator<g> it2 = list2.iterator();
            while (it2.hasNext()) {
                this.f5952f.addAll(it2.next().f5952f);
            }
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            String b10 = list.get(i10).b();
            this.f5951e.add(b10);
            this.f5952f.add(b10);
        }
    }
}
