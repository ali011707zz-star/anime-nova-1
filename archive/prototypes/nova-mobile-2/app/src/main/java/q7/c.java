package q7;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ThumbFetcher.java */
/* loaded from: classes.dex */
public class c implements com.bumptech.glide.load.data.d<InputStream> {

    /* renamed from: f, reason: collision with root package name */
    public final Uri f12531f;

    /* renamed from: g, reason: collision with root package name */
    public final e f12532g;

    /* renamed from: h, reason: collision with root package name */
    public InputStream f12533h;

    /* compiled from: ThumbFetcher.java */
    /* loaded from: classes.dex */
    public static class a implements d {

        /* renamed from: b, reason: collision with root package name */
        public static final String[] f12534b = {"_data"};

        /* renamed from: a, reason: collision with root package name */
        public final ContentResolver f12535a;

        public a(ContentResolver contentResolver) {
            this.f12535a = contentResolver;
        }

        @Override // q7.d
        public Cursor a(Uri uri) {
            return this.f12535a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f12534b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* compiled from: ThumbFetcher.java */
    /* loaded from: classes.dex */
    public static class b implements d {

        /* renamed from: b, reason: collision with root package name */
        public static final String[] f12536b = {"_data"};

        /* renamed from: a, reason: collision with root package name */
        public final ContentResolver f12537a;

        public b(ContentResolver contentResolver) {
            this.f12537a = contentResolver;
        }

        @Override // q7.d
        public Cursor a(Uri uri) {
            return this.f12537a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f12536b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    public c(Uri uri, e eVar) {
        this.f12531f = uri;
        this.f12532g = eVar;
    }

    public static c c(Context context, Uri uri, d dVar) {
        return new c(uri, new e(com.bumptech.glide.c.c(context).j().g(), dVar, com.bumptech.glide.c.c(context).e(), context.getContentResolver()));
    }

    public static c d(Context context, Uri uri) {
        return c(context, uri, new a(context.getContentResolver()));
    }

    public static c g(Context context, Uri uri) {
        return c(context, uri, new b(context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.d
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        InputStream inputStream = this.f12533h;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.d
    public p7.a e() {
        return p7.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public void f(g gVar, d.a<? super InputStream> aVar) {
        try {
            InputStream h10 = h();
            this.f12533h = h10;
            aVar.d(h10);
        } catch (FileNotFoundException e10) {
            aVar.c(e10);
        }
    }

    public final InputStream h() throws FileNotFoundException {
        InputStream d10 = this.f12532g.d(this.f12531f);
        int a10 = d10 != null ? this.f12532g.a(this.f12531f) : -1;
        return a10 != -1 ? new com.bumptech.glide.load.data.g(d10, a10) : d10;
    }
}
