package v7;

import android.net.Uri;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.HttpHost;
import v7.n;

/* compiled from: UrlUriLoader.java */
/* loaded from: classes.dex */
public class x<Data> implements n<Uri, Data> {

    /* renamed from: b, reason: collision with root package name */
    public static final Set<String> f14957b = Collections.unmodifiableSet(new HashSet(Arrays.asList(HttpHost.DEFAULT_SCHEME_NAME, "https")));

    /* renamed from: a, reason: collision with root package name */
    public final n<g, Data> f14958a;

    /* compiled from: UrlUriLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {
        @Override // v7.o
        public n<Uri, InputStream> a(r rVar) {
            return new x(rVar.d(g.class, InputStream.class));
        }
    }

    public x(n<g, Data> nVar) {
        this.f14958a = nVar;
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<Data> a(Uri uri, int i10, int i11, p7.g gVar) {
        return this.f14958a.a(new g(uri.toString()), i10, i11, gVar);
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(Uri uri) {
        return f14957b.contains(uri.getScheme());
    }
}
