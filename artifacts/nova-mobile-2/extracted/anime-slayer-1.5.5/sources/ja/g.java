package ja;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: GsonBuilder.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: h, reason: collision with root package name */
    public String f9131h;

    /* renamed from: a, reason: collision with root package name */
    public Excluder f9124a = Excluder.f4758l;

    /* renamed from: b, reason: collision with root package name */
    public r f9125b = r.f9144f;

    /* renamed from: c, reason: collision with root package name */
    public e f9126c = d.f9090f;

    /* renamed from: d, reason: collision with root package name */
    public final Map<Type, h<?>> f9127d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final List<t> f9128e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final List<t> f9129f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public boolean f9130g = false;

    /* renamed from: i, reason: collision with root package name */
    public int f9132i = 2;

    /* renamed from: j, reason: collision with root package name */
    public int f9133j = 2;

    /* renamed from: k, reason: collision with root package name */
    public boolean f9134k = false;

    /* renamed from: l, reason: collision with root package name */
    public boolean f9135l = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f9136m = true;

    /* renamed from: n, reason: collision with root package name */
    public boolean f9137n = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f9138o = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f9139p = false;

    public final void a(String str, int i10, int i11, List<t> list) {
        a aVar;
        a aVar2;
        a aVar3;
        if (str != null && !"".equals(str.trim())) {
            aVar = new a(Date.class, str);
            aVar2 = new a(Timestamp.class, str);
            aVar3 = new a(java.sql.Date.class, str);
        } else {
            if (i10 == 2 || i11 == 2) {
                return;
            }
            a aVar4 = new a(Date.class, i10, i11);
            a aVar5 = new a(Timestamp.class, i10, i11);
            a aVar6 = new a(java.sql.Date.class, i10, i11);
            aVar = aVar4;
            aVar2 = aVar5;
            aVar3 = aVar6;
        }
        list.add(TypeAdapters.a(Date.class, aVar));
        list.add(TypeAdapters.a(Timestamp.class, aVar2));
        list.add(TypeAdapters.a(java.sql.Date.class, aVar3));
    }

    public f b() {
        List<t> arrayList = new ArrayList<>(this.f9128e.size() + this.f9129f.size() + 3);
        arrayList.addAll(this.f9128e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f9129f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        a(this.f9131h, this.f9132i, this.f9133j, arrayList);
        return new f(this.f9124a, this.f9126c, this.f9127d, this.f9130g, this.f9134k, this.f9138o, this.f9136m, this.f9137n, this.f9139p, this.f9135l, this.f9125b, this.f9131h, this.f9132i, this.f9133j, this.f9128e, this.f9129f, arrayList);
    }

    public g c(Type type, Object obj) {
        boolean z10 = obj instanceof q;
        la.a.a(z10 || (obj instanceof k) || (obj instanceof h) || (obj instanceof s));
        if (obj instanceof h) {
            this.f9127d.put(type, (h) obj);
        }
        if (z10 || (obj instanceof k)) {
            this.f9128e.add(TreeTypeAdapter.b(oa.a.get(type), obj));
        }
        if (obj instanceof s) {
            this.f9128e.add(TypeAdapters.c(oa.a.get(type), (s) obj));
        }
        return this;
    }

    public g d(t tVar) {
        this.f9128e.add(tVar);
        return this;
    }

    public g e(d dVar) {
        this.f9126c = dVar;
        return this;
    }
}
