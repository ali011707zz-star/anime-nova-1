package o1;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import java.io.File;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import o1.p0;
import r1.h;

/* compiled from: DatabaseConfiguration.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public final h.c f11534a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f11535b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11536c;

    /* renamed from: d, reason: collision with root package name */
    public final p0.d f11537d;

    /* renamed from: e, reason: collision with root package name */
    public final List<p0.b> f11538e;

    /* renamed from: f, reason: collision with root package name */
    public final p0.e f11539f;

    /* renamed from: g, reason: collision with root package name */
    public final List<Object> f11540g;

    /* renamed from: h, reason: collision with root package name */
    public final List<p1.a> f11541h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f11542i;

    /* renamed from: j, reason: collision with root package name */
    public final p0.c f11543j;

    /* renamed from: k, reason: collision with root package name */
    public final Executor f11544k;

    /* renamed from: l, reason: collision with root package name */
    public final Executor f11545l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f11546m;

    /* renamed from: n, reason: collision with root package name */
    public final Intent f11547n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f11548o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f11549p;

    /* renamed from: q, reason: collision with root package name */
    public final Set<Integer> f11550q;

    /* renamed from: r, reason: collision with root package name */
    public final String f11551r;

    /* renamed from: s, reason: collision with root package name */
    public final File f11552s;

    /* renamed from: t, reason: collision with root package name */
    public final Callable<InputStream> f11553t;

    @SuppressLint({"LambdaLast"})
    public p(Context context, String str, h.c cVar, p0.d dVar, List<p0.b> list, boolean z10, p0.c cVar2, Executor executor, Executor executor2, Intent intent, boolean z11, boolean z12, Set<Integer> set, String str2, File file, Callable<InputStream> callable, p0.e eVar, List<Object> list2, List<p1.a> list3) {
        this.f11534a = cVar;
        this.f11535b = context;
        this.f11536c = str;
        this.f11537d = dVar;
        this.f11538e = list;
        this.f11542i = z10;
        this.f11543j = cVar2;
        this.f11544k = executor;
        this.f11545l = executor2;
        this.f11547n = intent;
        this.f11546m = intent != null;
        this.f11548o = z11;
        this.f11549p = z12;
        this.f11550q = set;
        this.f11551r = str2;
        this.f11552s = file;
        this.f11553t = callable;
        this.f11540g = list2 == null ? Collections.emptyList() : list2;
        this.f11541h = list3 == null ? Collections.emptyList() : list3;
    }

    public boolean a(int i10, int i11) {
        Set<Integer> set;
        return !((i10 > i11) && this.f11549p) && this.f11548o && ((set = this.f11550q) == null || !set.contains(Integer.valueOf(i10)));
    }
}
