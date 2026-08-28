package ib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import androidx.recyclerview.widget.RecyclerView;
import cd.a0;
import cd.h;
import cd.p;
import hb.c;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.http.HttpHost;

/* compiled from: BitmapLoadTask.java */
/* loaded from: classes.dex */
public class b extends AsyncTask<Void, Void, a> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7972a;

    /* renamed from: b, reason: collision with root package name */
    public Uri f7973b;

    /* renamed from: c, reason: collision with root package name */
    public Uri f7974c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7975d;

    /* renamed from: e, reason: collision with root package name */
    public final int f7976e;

    /* renamed from: f, reason: collision with root package name */
    public final gb.b f7977f;

    public b(Context context, Uri uri, Uri uri2, int i10, int i11, gb.b bVar) {
        this.f7972a = context;
        this.f7973b = uri;
        this.f7974c = uri2;
        this.f7975d = i10;
        this.f7976e = i11;
        this.f7977f = bVar;
    }

    public final boolean a(Bitmap bitmap, BitmapFactory.Options options) {
        if ((bitmap != null ? bitmap.getByteCount() : 0) <= 104857600) {
            return false;
        }
        options.inSampleSize *= 2;
        return true;
    }

    public final void b(Uri uri, Uri uri2) throws NullPointerException, IOException {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        if (uri2 != null) {
            FileOutputStream fileOutputStream2 = null;
            try {
                inputStream = this.f7972a.getContentResolver().openInputStream(uri);
                try {
                    fileOutputStream = new FileOutputStream(new File(uri2.getPath()));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
            try {
                if (inputStream == null) {
                    throw new NullPointerException("InputStream for given input Uri is null");
                }
                byte[] bArr = new byte[RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read > 0) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        jb.a.c(fileOutputStream);
                        jb.a.c(inputStream);
                        this.f7973b = this.f7974c;
                        return;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = fileOutputStream;
                jb.a.c(fileOutputStream2);
                jb.a.c(inputStream);
                this.f7973b = this.f7974c;
                throw th;
            }
        } else {
            throw new NullPointerException("Output Uri is null - cannot copy image");
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public a doInBackground(Void... voidArr) {
        InputStream openInputStream;
        if (this.f7973b == null) {
            return new a(new NullPointerException("Input Uri cannot be null"));
        }
        try {
            f();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inSampleSize = jb.a.a(options, this.f7975d, this.f7976e);
            boolean z10 = false;
            options.inJustDecodeBounds = false;
            Bitmap bitmap = null;
            while (!z10) {
                try {
                    openInputStream = this.f7972a.getContentResolver().openInputStream(this.f7973b);
                    try {
                        bitmap = BitmapFactory.decodeStream(openInputStream, null, options);
                    } finally {
                        jb.a.c(openInputStream);
                    }
                } catch (IOException e10) {
                    return new a(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.f7973b + "]", e10));
                } catch (OutOfMemoryError unused) {
                    options.inSampleSize *= 2;
                }
                if (options.outWidth != -1 && options.outHeight != -1) {
                    jb.a.c(openInputStream);
                    if (!a(bitmap, options)) {
                        z10 = true;
                    }
                } else {
                    return new a(new IllegalArgumentException("Bounds for bitmap could not be retrieved from the Uri: [" + this.f7973b + "]"));
                }
            }
            if (bitmap == null) {
                return new a(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.f7973b + "]"));
            }
            int g10 = jb.a.g(this.f7972a, this.f7973b);
            int e11 = jb.a.e(g10);
            int f10 = jb.a.f(g10);
            c cVar = new c(g10, e11, f10);
            Matrix matrix = new Matrix();
            if (e11 != 0) {
                matrix.preRotate(e11);
            }
            if (f10 != 1) {
                matrix.postScale(f10, 1.0f);
            }
            if (!matrix.isIdentity()) {
                return new a(jb.a.h(bitmap, matrix), cVar);
            }
            return new a(bitmap, cVar);
        } catch (IOException | NullPointerException e12) {
            return new a(e12);
        }
    }

    public final void d(Uri uri, Uri uri2) throws NullPointerException, IOException {
        Closeable closeable;
        Response response;
        Response execute;
        h source;
        if (uri2 != null) {
            OkHttpClient okHttpClient = new OkHttpClient();
            h hVar = null;
            try {
                execute = okHttpClient.newCall(new Request.Builder().url(uri.toString()).build()).execute();
                try {
                    source = execute.body().source();
                } catch (Throwable th) {
                    th = th;
                    response = execute;
                    closeable = null;
                }
            } catch (Throwable th2) {
                th = th2;
                closeable = null;
                response = null;
            }
            try {
                OutputStream openOutputStream = this.f7972a.getContentResolver().openOutputStream(uri2);
                if (openOutputStream != null) {
                    a0 h10 = p.h(openOutputStream);
                    source.T(h10);
                    jb.a.c(source);
                    jb.a.c(h10);
                    jb.a.c(execute.body());
                    okHttpClient.dispatcher().cancelAll();
                    this.f7973b = this.f7974c;
                    return;
                }
                throw new NullPointerException("OutputStream for given output Uri is null");
            } catch (Throwable th3) {
                th = th3;
                response = execute;
                closeable = null;
                hVar = source;
                jb.a.c(hVar);
                jb.a.c(closeable);
                if (response != null) {
                    jb.a.c(response.body());
                }
                okHttpClient.dispatcher().cancelAll();
                this.f7973b = this.f7974c;
                throw th;
            }
        }
        throw new NullPointerException("Output Uri is null - cannot download image");
    }

    @Override // android.os.AsyncTask
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(a aVar) {
        Exception exc = aVar.f7980c;
        if (exc == null) {
            gb.b bVar = this.f7977f;
            Bitmap bitmap = aVar.f7978a;
            c cVar = aVar.f7979b;
            String path = this.f7973b.getPath();
            Uri uri = this.f7974c;
            bVar.a(bitmap, cVar, path, uri == null ? null : uri.getPath());
            return;
        }
        this.f7977f.onFailure(exc);
    }

    public final void f() throws NullPointerException, IOException {
        String scheme = this.f7973b.getScheme();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Uri scheme: ");
        sb2.append(scheme);
        if (!HttpHost.DEFAULT_SCHEME_NAME.equals(scheme) && !"https".equals(scheme)) {
            if ("content".equals(scheme)) {
                try {
                    b(this.f7973b, this.f7974c);
                    return;
                } catch (IOException | NullPointerException e10) {
                    throw e10;
                }
            } else {
                if ("file".equals(scheme)) {
                    return;
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Invalid Uri scheme ");
                sb3.append(scheme);
                throw new IllegalArgumentException("Invalid Uri scheme" + scheme);
            }
        }
        try {
            d(this.f7973b, this.f7974c);
        } catch (IOException | NullPointerException e11) {
            throw e11;
        }
    }

    /* compiled from: BitmapLoadTask.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public Bitmap f7978a;

        /* renamed from: b, reason: collision with root package name */
        public c f7979b;

        /* renamed from: c, reason: collision with root package name */
        public Exception f7980c;

        public a(Bitmap bitmap, c cVar) {
            this.f7978a = bitmap;
            this.f7979b = cVar;
        }

        public a(Exception exc) {
            this.f7980c = exc;
        }
    }
}
