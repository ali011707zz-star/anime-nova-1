package w7;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
import p7.g;
import v7.n;
import v7.o;
import v7.r;

/* compiled from: MediaStoreImageThumbLoader.java */
/* loaded from: classes.dex */
public class c implements n<Uri, InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f15339a;

    /* compiled from: MediaStoreImageThumbLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f15340a;

        public a(Context context) {
            this.f15340a = context;
        }

        @Override // v7.o
        public n<Uri, InputStream> a(r rVar) {
            return new c(this.f15340a);
        }
    }

    public c(Context context) {
        this.f15339a = context.getApplicationContext();
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<InputStream> a(Uri uri, int i10, int i11, g gVar) {
        if (q7.b.d(i10, i11)) {
            return new n.a<>(new k8.d(uri), q7.c.d(this.f15339a, uri));
        }
        return null;
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(Uri uri) {
        return q7.b.a(uri);
    }
}
