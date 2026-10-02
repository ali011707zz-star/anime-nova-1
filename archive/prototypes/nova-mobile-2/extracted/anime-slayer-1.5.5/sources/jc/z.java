package jc;

/* compiled from: ReflectionFactory.java */
/* loaded from: classes2.dex */
public class z {
    public oc.d a(i iVar) {
        return iVar;
    }

    public oc.b b(Class cls) {
        return new e(cls);
    }

    public oc.c c(Class cls, String str) {
        return new q(cls, str);
    }

    public oc.e d(n nVar) {
        return nVar;
    }

    public oc.f e(r rVar) {
        return rVar;
    }

    public String f(h hVar) {
        String obj = hVar.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith("kotlin.jvm.functions.") ? obj.substring(21) : obj;
    }

    public String g(m mVar) {
        return f(mVar);
    }
}
