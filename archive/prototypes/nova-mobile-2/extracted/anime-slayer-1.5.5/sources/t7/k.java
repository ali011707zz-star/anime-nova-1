package t7;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import m8.a;

/* compiled from: SafeKeyGenerator.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public final l8.g<p7.e, String> f14079a = new l8.g<>(1000);

    /* renamed from: b, reason: collision with root package name */
    public final p0.f<b> f14080b = m8.a.d(10, new a());

    /* compiled from: SafeKeyGenerator.java */
    /* loaded from: classes.dex */
    public class a implements a.d<b> {
        public a() {
        }

        @Override // m8.a.d
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    /* compiled from: SafeKeyGenerator.java */
    /* loaded from: classes.dex */
    public static final class b implements a.f {

        /* renamed from: f, reason: collision with root package name */
        public final MessageDigest f14082f;

        /* renamed from: g, reason: collision with root package name */
        public final m8.c f14083g = m8.c.a();

        public b(MessageDigest messageDigest) {
            this.f14082f = messageDigest;
        }

        @Override // m8.a.f
        public m8.c d() {
            return this.f14083g;
        }
    }

    public final String a(p7.e eVar) {
        b bVar = (b) l8.j.d(this.f14080b.b());
        try {
            eVar.b(bVar.f14082f);
            return l8.k.t(bVar.f14082f.digest());
        } finally {
            this.f14080b.a(bVar);
        }
    }

    public String b(p7.e eVar) {
        String g10;
        synchronized (this.f14079a) {
            g10 = this.f14079a.g(eVar);
        }
        if (g10 == null) {
            g10 = a(eVar);
        }
        synchronized (this.f14079a) {
            this.f14079a.k(eVar, g10);
        }
        return g10;
    }
}
