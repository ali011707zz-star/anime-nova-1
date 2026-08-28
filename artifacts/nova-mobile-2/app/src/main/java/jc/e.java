package jc;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import wb.c0;

/* compiled from: ClassReference.kt */
/* loaded from: classes2.dex */
public final class e implements oc.b<Object>, d {

    /* renamed from: b, reason: collision with root package name */
    public static final a f9179b = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public static final Map<Class<? extends vb.b<?>>, Integer> f9180c;

    /* renamed from: d, reason: collision with root package name */
    public static final HashMap<String, String> f9181d;

    /* renamed from: e, reason: collision with root package name */
    public static final HashMap<String, String> f9182e;

    /* renamed from: f, reason: collision with root package name */
    public static final HashMap<String, String> f9183f;

    /* renamed from: g, reason: collision with root package name */
    public static final Map<String, String> f9184g;

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f9185a;

    /* compiled from: ClassReference.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i10 = 0;
        List l10 = wb.l.l(ic.a.class, ic.l.class, ic.p.class, ic.q.class, ic.r.class, ic.s.class, ic.t.class, ic.u.class, ic.v.class, ic.w.class, ic.b.class, ic.c.class, ic.d.class, ic.e.class, ic.f.class, ic.g.class, ic.h.class, ic.i.class, ic.j.class, ic.k.class, ic.m.class, ic.n.class, ic.o.class);
        ArrayList arrayList = new ArrayList(wb.m.q(l10, 10));
        for (Object obj : l10) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                wb.l.p();
            }
            arrayList.add(vb.n.a((Class) obj, Integer.valueOf(i10)));
            i10 = i11;
        }
        f9180c = c0.i(arrayList);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("boolean", "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put("float", "kotlin.Float");
        hashMap.put("long", "kotlin.Long");
        hashMap.put("double", "kotlin.Double");
        f9181d = hashMap;
        HashMap<String, String> hashMap2 = new HashMap<>();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        f9182e = hashMap2;
        HashMap<String, String> hashMap3 = new HashMap<>();
        hashMap3.put("java.lang.Object", "kotlin.Any");
        hashMap3.put("java.lang.String", "kotlin.String");
        hashMap3.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap3.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap3.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap3.put("java.lang.Number", "kotlin.Number");
        hashMap3.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap3.put("java.lang.Enum", "kotlin.Enum");
        hashMap3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap3.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap3.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap3.put("java.util.List", "kotlin.collections.List");
        hashMap3.put("java.util.Set", "kotlin.collections.Set");
        hashMap3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap3.put("java.util.Map", "kotlin.collections.Map");
        hashMap3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap3.putAll(hashMap);
        hashMap3.putAll(hashMap2);
        Collection<String> values = hashMap.values();
        l.e(values, "primitiveFqNames.values");
        for (String str : values) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("kotlin.jvm.internal.");
            l.e(str, "kotlinName");
            sb2.append(qc.u.l0(str, '.', null, 2, null));
            sb2.append("CompanionObject");
            vb.i a10 = vb.n.a(sb2.toString(), str + ".Companion");
            hashMap3.put(a10.c(), a10.d());
        }
        for (Map.Entry<Class<? extends vb.b<?>>, Integer> entry : f9180c.entrySet()) {
            hashMap3.put(entry.getKey().getName(), "kotlin.Function" + entry.getValue().intValue());
        }
        f9183f = hashMap3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(wb.b0.a(hashMap3.size()));
        for (Map.Entry entry2 : hashMap3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), qc.u.l0((String) entry2.getValue(), '.', null, 2, null));
        }
        f9184g = linkedHashMap;
    }

    public e(Class<?> cls) {
        l.f(cls, "jClass");
        this.f9185a = cls;
    }

    @Override // jc.d
    public Class<?> a() {
        return this.f9185a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof e) && l.a(hc.a.b(this), hc.a.b((oc.b) obj));
    }

    public int hashCode() {
        return hc.a.b(this).hashCode();
    }

    public String toString() {
        return a().toString() + " (Kotlin reflection is not available)";
    }
}
