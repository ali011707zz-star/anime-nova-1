package w7;

import android.net.Uri;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.HttpHost;
import v7.g;
import v7.n;
import v7.o;
import v7.r;

/* compiled from: HttpUriLoader.java */
/* loaded from: classes.dex */
public class b implements n<Uri, InputStream> {

    /* renamed from: b, reason: collision with root package name */
    public static final Set<String> f15337b = Collections.unmodifiableSet(new HashSet(Arrays.asList(HttpHost.DEFAULT_SCHEME_NAME, "https")));

    /* renamed from: a, reason: collision with root package name */
    public final n<g, InputStream> f15338a;

    /* compiled from: HttpUriLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {
        @Override // v7.o
        public n<Uri, InputStream> a(r rVar) {
            return new b(rVar.d(g.class, InputStream.class));
        }
    }

    public b(n<g, InputStream> nVar) {
        this.f15338a = nVar;
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<InputStream> a(Uri uri, int i10, int i11, p7.g gVar) {
        return this.f15338a.a(new g(uri.toString()), i10, i11, gVar);
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(Uri uri) {
        return f15337b.contains(uri.getScheme());
    }
}
