package na;

import java.lang.reflect.AccessibleObject;
import la.d;

/* compiled from: ReflectionAccessor.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final b f11380a;

    static {
        f11380a = d.c() < 9 ? new a() : new c();
    }

    public static b a() {
        return f11380a;
    }

    public abstract void b(AccessibleObject accessibleObject);
}
