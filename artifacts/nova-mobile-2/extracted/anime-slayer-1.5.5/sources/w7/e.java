package w7;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.load.data.d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import p7.g;
import v7.n;
import v7.o;
import v7.r;

/* compiled from: QMediaStoreUriLoader.java */
/* loaded from: classes.dex */
public final class e<DataT> implements n<Uri, DataT> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f15343a;

    /* renamed from: b, reason: collision with root package name */
    public final n<File, DataT> f15344b;

    /* renamed from: c, reason: collision with root package name */
    public final n<Uri, DataT> f15345c;

    /* renamed from: d, reason: collision with root package name */
    public final Class<DataT> f15346d;

    /* compiled from: QMediaStoreUriLoader.java */
    /* loaded from: classes.dex */
    public static abstract class a<DataT> implements o<Uri, DataT> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f15347a;

        /* renamed from: b, reason: collision with root package name */
        public final Class<DataT> f15348b;

        public a(Context context, Class<DataT> cls) {
            this.f15347a = context;
            this.f15348b = cls;
        }

        @Override // v7.o
        public final n<Uri, DataT> a(r rVar) {
            return new e(this.f15347a, rVar.d(File.class, this.f15348b), rVar.d(Uri.class, this.f15348b), this.f15348b);
        }
    }

    /* compiled from: QMediaStoreUriLoader.java */
    /* loaded from: classes.dex */
    public static final class b extends a<ParcelFileDescriptor> {
        public b(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    /* compiled from: QMediaStoreUriLoader.java */
    /* loaded from: classes.dex */
    public static final class c extends a<InputStream> {
        public c(Context context) {
            super(context, InputStream.class);
        }
    }

    /* compiled from: QMediaStoreUriLoader.java */
    /* loaded from: classes.dex */
    public static final class d<DataT> implements com.bumptech.glide.load.data.d<DataT> {

        /* renamed from: p, reason: collision with root package name */
        public static final String[] f15349p = {"_data"};

        /* renamed from: f, reason: collision with root package name */
        public final Context f15350f;

        /* renamed from: g, reason: collision with root package name */
        public final n<File, DataT> f15351g;

        /* renamed from: h, reason: collision with root package name */
        public final n<Uri, DataT> f15352h;

        /* renamed from: i, reason: collision with root package name */
        public final Uri f15353i;

        /* renamed from: j, reason: collision with root package name */
        public final int f15354j;

        /* renamed from: k, reason: collision with root package name */
        public final int f15355k;

        /* renamed from: l, reason: collision with root package name */
        public final g f15356l;

        /* renamed from: m, reason: collision with root package name */
        public final Class<DataT> f15357m;

        /* renamed from: n, reason: collision with root package name */
        public volatile boolean f15358n;

        /* renamed from: o, reason: collision with root package name */
        public volatile com.bumptech.glide.load.data.d<DataT> f15359o;

        public d(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Uri uri, int i10, int i11, g gVar, Class<DataT> cls) {
            this.f15350f = context.getApplicationContext();
            this.f15351g = nVar;
            this.f15352h = nVar2;
            this.f15353i = uri;
            this.f15354j = i10;
            this.f15355k = i11;
            this.f15356l = gVar;
            this.f15357m = cls;
        }

        @Override // com.bumptech.glide.load.data.d
        public Class<DataT> a() {
            return this.f15357m;
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            com.bumptech.glide.load.data.d<DataT> dVar = this.f15359o;
            if (dVar != null) {
                dVar.b();
            }
        }

        public final n.a<DataT> c() throws FileNotFoundException {
            if (Environment.isExternalStorageLegacy()) {
                return this.f15351g.a(h(this.f15353i), this.f15354j, this.f15355k, this.f15356l);
            }
            return this.f15352h.a(g() ? MediaStore.setRequireOriginal(this.f15353i) : this.f15353i, this.f15354j, this.f15355k, this.f15356l);
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
            this.f15358n = true;
            com.bumptech.glide.load.data.d<DataT> dVar = this.f15359o;
            if (dVar != null) {
                dVar.cancel();
            }
        }

        public final com.bumptech.glide.load.data.d<DataT> d() throws FileNotFoundException {
            n.a<DataT> c10 = c();
            if (c10 != null) {
                return c10.f14918c;
            }
            return null;
        }

        @Override // com.bumptech.glide.load.data.d
        public p7.a e() {
            return p7.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void f(com.bumptech.glide.g gVar, d.a<? super DataT> aVar) {
            try {
                com.bumptech.glide.load.data.d<DataT> d10 = d();
                if (d10 == null) {
                    aVar.c(new IllegalArgumentException("Failed to build fetcher for: " + this.f15353i));
                    return;
                }
                this.f15359o = d10;
                if (this.f15358n) {
                    cancel();
                } else {
                    d10.f(gVar, aVar);
                }
            } catch (FileNotFoundException e10) {
                aVar.c(e10);
            }
        }

        public final boolean g() {
            return this.f15350f.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0;
        }

        public final File h(Uri uri) throws FileNotFoundException {
            Cursor cursor = null;
            try {
                Cursor query = this.f15350f.getContentResolver().query(uri, f15349p, null, null, null);
                if (query != null && query.moveToFirst()) {
                    String string = query.getString(query.getColumnIndexOrThrow("_data"));
                    if (!TextUtils.isEmpty(string)) {
                        File file = new File(string);
                        query.close();
                        return file;
                    }
                    throw new FileNotFoundException("File path was empty in media store for: " + uri);
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }
    }

    public e(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Class<DataT> cls) {
        this.f15343a = context.getApplicationContext();
        this.f15344b = nVar;
        this.f15345c = nVar2;
        this.f15346d = cls;
    }

    @Override // v7.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<DataT> a(Uri uri, int i10, int i11, g gVar) {
        return new n.a<>(new k8.d(uri), new d(this.f15343a, this.f15344b, this.f15345c, uri, i10, i11, gVar, this.f15346d));
    }

    @Override // v7.n
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && q7.b.b(uri);
    }
}
