package w7;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
import p7.g;
import v7.n;
import v7.o;
import v7.r;
import y7.b0;

/* compiled from: MediaStoreVideoThumbLoader.java */
/* loaded from: classes.dex */
public class d implements n<Uri, InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f15341a;

    /* compiled from: MediaStoreVideoThumbLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f15342a;

        public a(Context context) {
            this.f15342a = context;
        }

        @Override // v7.o
        public n<Uri, InputStream> a(r rVar) {
            return new d(this.f15342a);
        }
    }

    public d(Context context) {
        this.f15341a = context.getApplicationContext();
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<InputStream> a(Uri uri, int i10, int i11, g gVar) {
        if (q7.b.d(i10, i11) && e(gVar)) {
            return new n.a<>(new k8.d(uri), q7.c.g(this.f15341a, uri));
        }
        return null;
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(Uri uri) {
        return q7.b.c(uri);
    }

    public final boolean e(g gVar) {
        Long l10 = (Long) gVar.c(b0.f16643d);
        return l10 != null && l10.longValue() == -1;
    }
}
