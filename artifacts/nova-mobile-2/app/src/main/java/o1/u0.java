package o1;

import java.io.File;
import java.io.InputStream;
import java.util.concurrent.Callable;
import r1.h;

/* compiled from: SQLiteCopyOpenHelperFactory.java */
/* loaded from: classes.dex */
public class u0 implements h.c {

    /* renamed from: a, reason: collision with root package name */
    public final String f11627a;

    /* renamed from: b, reason: collision with root package name */
    public final File f11628b;

    /* renamed from: c, reason: collision with root package name */
    public final Callable<InputStream> f11629c;

    /* renamed from: d, reason: collision with root package name */
    public final h.c f11630d;

    public u0(String str, File file, Callable<InputStream> callable, h.c cVar) {
        this.f11627a = str;
        this.f11628b = file;
        this.f11629c = callable;
        this.f11630d = cVar;
    }

    @Override // r1.h.c
    public r1.h a(h.b bVar) {
        return new t0(bVar.f12794a, this.f11627a, this.f11628b, this.f11629c, bVar.f12796c.f12793a, this.f11630d.a(bVar));
    }
}
