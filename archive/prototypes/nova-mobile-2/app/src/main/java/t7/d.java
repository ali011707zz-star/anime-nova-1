package t7;

import java.io.File;
import t7.a;

/* compiled from: DiskLruCacheFactory.java */
/* loaded from: classes.dex */
public class d implements a.InterfaceC0350a {

    /* renamed from: a, reason: collision with root package name */
    public final long f14053a;

    /* renamed from: b, reason: collision with root package name */
    public final a f14054b;

    /* compiled from: DiskLruCacheFactory.java */
    /* loaded from: classes.dex */
    public interface a {
        File a();
    }

    public d(a aVar, long j10) {
        this.f14053a = j10;
        this.f14054b = aVar;
    }

    @Override // t7.a.InterfaceC0350a
    public t7.a build() {
        File a10 = this.f14054b.a();
        if (a10 == null) {
            return null;
        }
        if (a10.mkdirs() || (a10.exists() && a10.isDirectory())) {
            return e.c(a10, this.f14053a);
        }
        return null;
    }
}
