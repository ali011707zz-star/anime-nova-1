package ed;

import android.os.Looper;
import ed.f;
import ed.g;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.EventBusException;

/* compiled from: EventBusBuilder.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: m, reason: collision with root package name */
    public static final ExecutorService f6324m = Executors.newCachedThreadPool();

    /* renamed from: e, reason: collision with root package name */
    public boolean f6329e;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6331g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6332h;

    /* renamed from: j, reason: collision with root package name */
    public List<gd.b> f6334j;

    /* renamed from: k, reason: collision with root package name */
    public f f6335k;

    /* renamed from: l, reason: collision with root package name */
    public g f6336l;

    /* renamed from: a, reason: collision with root package name */
    public boolean f6325a = true;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6326b = true;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6327c = true;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6328d = true;

    /* renamed from: f, reason: collision with root package name */
    public boolean f6330f = true;

    /* renamed from: i, reason: collision with root package name */
    public ExecutorService f6333i = f6324m;

    public static Object b() {
        try {
            return Looper.getMainLooper();
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public c a() {
        return new c(this);
    }

    public f c() {
        f fVar = this.f6335k;
        return fVar != null ? fVar : f.a.a();
    }

    public g d() {
        Object b10;
        g gVar = this.f6336l;
        if (gVar != null) {
            return gVar;
        }
        if (!fd.a.c() || (b10 = b()) == null) {
            return null;
        }
        return new g.a((Looper) b10);
    }

    public c e() {
        c cVar;
        synchronized (c.class) {
            if (c.f6295s == null) {
                c.f6295s = a();
                cVar = c.f6295s;
            } else {
                throw new EventBusException("Default instance already exists. It may be only set once before it's used the first time to ensure consistent behavior.");
            }
        }
        return cVar;
    }

    public d f(boolean z10) {
        this.f6326b = z10;
        return this;
    }

    public d g(boolean z10) {
        this.f6328d = z10;
        return this;
    }

    public d h(boolean z10) {
        this.f6327c = z10;
        return this;
    }

    public d i(boolean z10) {
        this.f6329e = z10;
        return this;
    }
}
