package w7;

import java.io.InputStream;
import java.net.URL;
import v7.g;
import v7.n;
import v7.o;
import v7.r;

/* compiled from: UrlLoader.java */
/* loaded from: classes.dex */
public class f implements n<URL, InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final n<g, InputStream> f15360a;

    /* compiled from: UrlLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<URL, InputStream> {
        @Override // v7.o
        public n<URL, InputStream> a(r rVar) {
            return new f(rVar.d(g.class, InputStream.class));
        }
    }

    public f(n<g, InputStream> nVar) {
        this.f15360a = nVar;
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<InputStream> a(URL url, int i10, int i11, p7.g gVar) {
        return this.f15360a.a(new g(url), i10, i11, gVar);
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(URL url) {
        return true;
    }
}
