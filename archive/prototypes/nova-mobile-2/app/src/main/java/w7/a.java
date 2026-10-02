package w7;

import com.bumptech.glide.load.data.j;
import java.io.InputStream;
import v7.g;
import v7.m;
import v7.n;
import v7.o;
import v7.r;

/* compiled from: HttpGlideUrlLoader.java */
/* loaded from: classes.dex */
public class a implements n<g, InputStream> {

    /* renamed from: b, reason: collision with root package name */
    public static final p7.f<Integer> f15334b = p7.f.f("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    /* renamed from: a, reason: collision with root package name */
    public final m<g, g> f15335a;

    /* compiled from: HttpGlideUrlLoader.java */
    /* renamed from: w7.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0398a implements o<g, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final m<g, g> f15336a = new m<>(500);

        @Override // v7.o
        public n<g, InputStream> a(r rVar) {
            return new a(this.f15336a);
        }
    }

    public a(m<g, g> mVar) {
        this.f15335a = mVar;
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<InputStream> a(g gVar, int i10, int i11, p7.g gVar2) {
        m<g, g> mVar = this.f15335a;
        if (mVar != null) {
            g a10 = mVar.a(gVar, 0, 0);
            if (a10 == null) {
                this.f15335a.b(gVar, 0, 0, gVar);
            } else {
                gVar = a10;
            }
        }
        return new n.a<>(gVar, new j(gVar, ((Integer) gVar2.c(f15334b)).intValue()));
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(g gVar) {
        return true;
    }
}
