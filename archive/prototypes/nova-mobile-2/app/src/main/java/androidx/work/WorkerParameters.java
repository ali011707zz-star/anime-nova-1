package androidx.work;

import android.net.Network;
import android.net.Uri;
import d2.h;
import d2.q;
import d2.x;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class WorkerParameters {

    /* renamed from: a, reason: collision with root package name */
    public UUID f3292a;

    /* renamed from: b, reason: collision with root package name */
    public androidx.work.a f3293b;

    /* renamed from: c, reason: collision with root package name */
    public Set<String> f3294c;

    /* renamed from: d, reason: collision with root package name */
    public a f3295d;

    /* renamed from: e, reason: collision with root package name */
    public int f3296e;

    /* renamed from: f, reason: collision with root package name */
    public Executor f3297f;

    /* renamed from: g, reason: collision with root package name */
    public p2.a f3298g;

    /* renamed from: h, reason: collision with root package name */
    public x f3299h;

    /* renamed from: i, reason: collision with root package name */
    public q f3300i;

    /* renamed from: j, reason: collision with root package name */
    public h f3301j;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public List<String> f3302a = Collections.emptyList();

        /* renamed from: b, reason: collision with root package name */
        public List<Uri> f3303b = Collections.emptyList();

        /* renamed from: c, reason: collision with root package name */
        public Network f3304c;
    }

    public WorkerParameters(UUID uuid, androidx.work.a aVar, Collection<String> collection, a aVar2, int i10, Executor executor, p2.a aVar3, x xVar, q qVar, h hVar) {
        this.f3292a = uuid;
        this.f3293b = aVar;
        this.f3294c = new HashSet(collection);
        this.f3295d = aVar2;
        this.f3296e = i10;
        this.f3297f = executor;
        this.f3298g = aVar3;
        this.f3299h = xVar;
        this.f3300i = qVar;
        this.f3301j = hVar;
    }

    public Executor a() {
        return this.f3297f;
    }

    public UUID b() {
        return this.f3292a;
    }

    public androidx.work.a c() {
        return this.f3293b;
    }

    public p2.a d() {
        return this.f3298g;
    }

    public x e() {
        return this.f3299h;
    }
}
