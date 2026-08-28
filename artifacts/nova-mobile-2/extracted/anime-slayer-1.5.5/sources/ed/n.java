package ed;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;

/* compiled from: SubscriberMethod.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    public final Method f6354a;

    /* renamed from: b, reason: collision with root package name */
    public final ThreadMode f6355b;

    /* renamed from: c, reason: collision with root package name */
    public final Class<?> f6356c;

    /* renamed from: d, reason: collision with root package name */
    public final int f6357d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f6358e;

    /* renamed from: f, reason: collision with root package name */
    public String f6359f;

    public n(Method method, Class<?> cls, ThreadMode threadMode, int i10, boolean z10) {
        this.f6354a = method;
        this.f6355b = threadMode;
        this.f6356c = cls;
        this.f6357d = i10;
        this.f6358e = z10;
    }

    public final synchronized void a() {
        if (this.f6359f == null) {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append(this.f6354a.getDeclaringClass().getName());
            sb2.append('#');
            sb2.append(this.f6354a.getName());
            sb2.append('(');
            sb2.append(this.f6356c.getName());
            this.f6359f = sb2.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        a();
        n nVar = (n) obj;
        nVar.a();
        return this.f6359f.equals(nVar.f6359f);
    }

    public int hashCode() {
        return this.f6354a.hashCode();
    }
}
