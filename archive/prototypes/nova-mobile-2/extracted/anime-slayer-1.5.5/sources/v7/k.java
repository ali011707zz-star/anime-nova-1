package v7;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.data.d;
import java.io.File;
import java.io.FileNotFoundException;
import v7.n;

/* compiled from: MediaStoreFileLoader.java */
/* loaded from: classes.dex */
public final class k implements n<Uri, File> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f14905a;

    /* compiled from: MediaStoreFileLoader.java */
    /* loaded from: classes.dex */
    public static final class a implements o<Uri, File> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f14906a;

        public a(Context context) {
            this.f14906a = context;
        }

        @Override // v7.o
        public n<Uri, File> a(r rVar) {
            return new k(this.f14906a);
        }
    }

    /* compiled from: MediaStoreFileLoader.java */
    /* loaded from: classes.dex */
    public static class b implements com.bumptech.glide.load.data.d<File> {

        /* renamed from: h, reason: collision with root package name */
        public static final String[] f14907h = {"_data"};

        /* renamed from: f, reason: collision with root package name */
        public final Context f14908f;

        /* renamed from: g, reason: collision with root package name */
        public final Uri f14909g;

        public b(Context context, Uri uri) {
            this.f14908f = context;
            this.f14909g = uri;
        }

        @Override // com.bumptech.glide.load.data.d
        public Class<File> a() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public p7.a e() {
            return p7.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void f(com.bumptech.glide.g gVar, d.a<? super File> aVar) {
            Cursor query = this.f14908f.getContentResolver().query(this.f14909g, f14907h, null, null, null);
            if (query != null) {
                try {
                    r0 = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(r0)) {
                aVar.c(new FileNotFoundException("Failed to find file path for: " + this.f14909g));
                return;
            }
            aVar.d(new File(r0));
        }
    }

    public k(Context context) {
        this.f14905a = context;
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<File> a(Uri uri, int i10, int i11, p7.g gVar) {
        return new n.a<>(new k8.d(uri), new b(this.f14905a, uri));
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(Uri uri) {
        return q7.b.b(uri);
    }
}
