package r7;

import com.bumptech.glide.load.data.d;
import java.io.File;
import java.util.List;
import r7.f;
import v7.n;

/* compiled from: DataCacheGenerator.java */
/* loaded from: classes.dex */
public class c implements f, d.a<Object> {

    /* renamed from: f, reason: collision with root package name */
    public final List<p7.e> f12892f;

    /* renamed from: g, reason: collision with root package name */
    public final g<?> f12893g;

    /* renamed from: h, reason: collision with root package name */
    public final f.a f12894h;

    /* renamed from: i, reason: collision with root package name */
    public int f12895i;

    /* renamed from: j, reason: collision with root package name */
    public p7.e f12896j;

    /* renamed from: k, reason: collision with root package name */
    public List<v7.n<File, ?>> f12897k;

    /* renamed from: l, reason: collision with root package name */
    public int f12898l;

    /* renamed from: m, reason: collision with root package name */
    public volatile n.a<?> f12899m;

    /* renamed from: n, reason: collision with root package name */
    public File f12900n;

    public c(g<?> gVar, f.a aVar) {
        this(gVar.c(), gVar, aVar);
    }

    public final boolean a() {
        return this.f12898l < this.f12897k.size();
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void c(Exception exc) {
        this.f12894h.b(this.f12896j, exc, this.f12899m.f14918c, p7.a.DATA_DISK_CACHE);
    }

    @Override // r7.f
    public void cancel() {
        n.a<?> aVar = this.f12899m;
        if (aVar != null) {
            aVar.f14918c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void d(Object obj) {
        this.f12894h.c(this.f12896j, obj, this.f12899m.f14918c, p7.a.DATA_DISK_CACHE, this.f12896j);
    }

    @Override // r7.f
    public boolean e() {
        while (true) {
            boolean z10 = false;
            if (this.f12897k != null && a()) {
                this.f12899m = null;
                while (!z10 && a()) {
                    List<v7.n<File, ?>> list = this.f12897k;
                    int i10 = this.f12898l;
                    this.f12898l = i10 + 1;
                    this.f12899m = list.get(i10).a(this.f12900n, this.f12893g.s(), this.f12893g.f(), this.f12893g.k());
                    if (this.f12899m != null && this.f12893g.t(this.f12899m.f14918c.a())) {
                        this.f12899m.f14918c.f(this.f12893g.l(), this);
                        z10 = true;
                    }
                }
                return z10;
            }
            int i11 = this.f12895i + 1;
            this.f12895i = i11;
            if (i11 >= this.f12892f.size()) {
                return false;
            }
            p7.e eVar = this.f12892f.get(this.f12895i);
            File b10 = this.f12893g.d().b(new d(eVar, this.f12893g.o()));
            this.f12900n = b10;
            if (b10 != null) {
                this.f12896j = eVar;
                this.f12897k = this.f12893g.j(b10);
                this.f12898l = 0;
            }
        }
    }

    public c(List<p7.e> list, g<?> gVar, f.a aVar) {
        this.f12895i = -1;
        this.f12892f = list;
        this.f12893g = gVar;
        this.f12894h = aVar;
    }
}
