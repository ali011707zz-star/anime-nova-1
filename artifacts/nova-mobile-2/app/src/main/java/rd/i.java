package rd;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

/* compiled from: Invocation.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final Method f13396a;

    /* renamed from: b, reason: collision with root package name */
    public final List<?> f13397b;

    public i(Method method, List<?> list) {
        this.f13396a = method;
        this.f13397b = Collections.unmodifiableList(list);
    }

    public Method a() {
        return this.f13396a;
    }

    public String toString() {
        return String.format("%s.%s() %s", this.f13396a.getDeclaringClass().getName(), this.f13396a.getName(), this.f13397b);
    }
}
