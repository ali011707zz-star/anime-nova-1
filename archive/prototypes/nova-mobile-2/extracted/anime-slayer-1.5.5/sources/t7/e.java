package t7;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import n7.a;
import t7.a;

/* compiled from: DiskLruCacheWrapper.java */
/* loaded from: classes.dex */
public class e implements a {

    /* renamed from: b, reason: collision with root package name */
    public final File f14056b;

    /* renamed from: c, reason: collision with root package name */
    public final long f14057c;

    /* renamed from: e, reason: collision with root package name */
    public n7.a f14059e;

    /* renamed from: d, reason: collision with root package name */
    public final c f14058d = new c();

    /* renamed from: a, reason: collision with root package name */
    public final k f14055a = new k();

    @Deprecated
    public e(File file, long j10) {
        this.f14056b = file;
        this.f14057c = j10;
    }

    public static a c(File file, long j10) {
        return new e(file, j10);
    }

    @Override // t7.a
    public void a(p7.e eVar, a.b bVar) {
        n7.a d10;
        String b10 = this.f14055a.b(eVar);
        this.f14058d.a(b10);
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Put: Obtained: ");
                sb2.append(b10);
                sb2.append(" for for Key: ");
                sb2.append(eVar);
            }
            try {
                d10 = d();
            } catch (IOException unused) {
                Log.isLoggable("DiskLruCacheWrapper", 5);
            }
            if (d10.k0(b10) != null) {
                return;
            }
            a.c a02 = d10.a0(b10);
            if (a02 != null) {
                try {
                    if (bVar.a(a02.f(0))) {
                        a02.e();
                    }
                    a02.b();
                    return;
                } catch (Throwable th) {
                    a02.b();
                    throw th;
                }
            }
            throw new IllegalStateException("Had two simultaneous puts for: " + b10);
        } finally {
            this.f14058d.b(b10);
        }
    }

    @Override // t7.a
    public File b(p7.e eVar) {
        String b10 = this.f14055a.b(eVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Get: Obtained: ");
            sb2.append(b10);
            sb2.append(" for for Key: ");
            sb2.append(eVar);
        }
        try {
            a.e k02 = d().k0(b10);
            if (k02 != null) {
                return k02.a(0);
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    public final synchronized n7.a d() throws IOException {
        if (this.f14059e == null) {
            this.f14059e = n7.a.B0(this.f14056b, 1, 1, this.f14057c);
        }
        return this.f14059e;
    }
}
