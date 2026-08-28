package r7;

import com.bumptech.glide.load.data.d;
import java.io.File;
import java.util.List;
import r7.f;
import v7.n;

/* compiled from: ResourceCacheGenerator.java */
/* loaded from: classes.dex */
public class v implements f, d.a<Object> {

    /* renamed from: f, reason: collision with root package name */
    public final f.a f13058f;

    /* renamed from: g, reason: collision with root package name */
    public final g<?> f13059g;

    /* renamed from: h, reason: collision with root package name */
    public int f13060h;

    /* renamed from: i, reason: collision with root package name */
    public int f13061i = -1;

    /* renamed from: j, reason: collision with root package name */
    public p7.e f13062j;

    /* renamed from: k, reason: collision with root package name */
    public List<v7.n<File, ?>> f13063k;

    /* renamed from: l, reason: collision with root package name */
    public int f13064l;

    /* renamed from: m, reason: collision with root package name */
    public volatile n.a<?> f13065m;

    /* renamed from: n, reason: collision with root package name */
    public File f13066n;

    /* renamed from: o, reason: collision with root package name */
    public w f13067o;

    public v(g<?> gVar, f.a aVar) {
        this.f13059g = gVar;
        this.f13058f = aVar;
    }

    public final boolean a() {
        return this.f13064l < this.f13063k.size();
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void c(Exception exc) {
        this.f13058f.b(this.f13067o, exc, this.f13065m.f14918c, p7.a.RESOURCE_DISK_CACHE);
    }

    @Override // r7.f
    public void cancel() {
        n.a<?> aVar = this.f13065m;
        if (aVar != null) {
            aVar.f14918c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void d(Object obj) {
        this.f13058f.c(this.f13062j, obj, this.f13065m.f14918c, p7.a.RESOURCE_DISK_CACHE, this.f13067o);
    }

    @Override // r7.f
    public boolean e() {
        List<p7.e> c10 = this.f13059g.c();
        boolean z10 = false;
        if (c10.isEmpty()) {
            return false;
        }
        List<Class<?>> m10 = this.f13059g.m();
        if (m10.isEmpty()) {
            if (File.class.equals(this.f13059g.q())) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f13059g.i() + " to " + this.f13059g.q());
        }
        while (true) {
            if (this.f13063k != null && a()) {
                this.f13065m = null;
                while (!z10 && a()) {
                    List<v7.n<File, ?>> list = this.f13063k;
                    int i10 = this.f13064l;
                    this.f13064l = i10 + 1;
                    this.f13065m = list.get(i10).a(this.f13066n, this.f13059g.s(), this.f13059g.f(), this.f13059g.k());
                    if (this.f13065m != null && this.f13059g.t(this.f13065m.f14918c.a())) {
                        this.f13065m.f14918c.f(this.f13059g.l(), this);
                        z10 = true;
                    }
                }
                return z10;
            }
            int i11 = this.f13061i + 1;
            this.f13061i = i11;
            if (i11 >= m10.size()) {
                int i12 = this.f13060h + 1;
                this.f13060h = i12;
                if (i12 >= c10.size()) {
                    return false;
                }
                this.f13061i = 0;
            }
            p7.e eVar = c10.get(this.f13060h);
            Class<?> cls = m10.get(this.f13061i);
            this.f13067o = new w(this.f13059g.b(), eVar, this.f13059g.o(), this.f13059g.s(), this.f13059g.f(), this.f13059g.r(cls), cls, this.f13059g.k());
            File b10 = this.f13059g.d().b(this.f13067o);
            this.f13066n = b10;
            if (b10 != null) {
                this.f13062j = eVar;
                this.f13063k = this.f13059g.j(b10);
                this.f13064l = 0;
            }
        }
    }
}
