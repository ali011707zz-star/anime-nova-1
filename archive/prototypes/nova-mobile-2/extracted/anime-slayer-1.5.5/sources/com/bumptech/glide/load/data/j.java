package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.d;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
import org.apache.http.HttpHeaders;

/* compiled from: HttpUrlFetcher.java */
/* loaded from: classes.dex */
public class j implements d<InputStream> {

    /* renamed from: l, reason: collision with root package name */
    public static final b f4618l = new a();

    /* renamed from: f, reason: collision with root package name */
    public final v7.g f4619f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4620g;

    /* renamed from: h, reason: collision with root package name */
    public final b f4621h;

    /* renamed from: i, reason: collision with root package name */
    public HttpURLConnection f4622i;

    /* renamed from: j, reason: collision with root package name */
    public InputStream f4623j;

    /* renamed from: k, reason: collision with root package name */
    public volatile boolean f4624k;

    /* compiled from: HttpUrlFetcher.java */
    /* loaded from: classes.dex */
    public static class a implements b {
        @Override // com.bumptech.glide.load.data.j.b
        public HttpURLConnection a(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* compiled from: HttpUrlFetcher.java */
    /* loaded from: classes.dex */
    public interface b {
        HttpURLConnection a(URL url) throws IOException;
    }

    public j(v7.g gVar, int i10) {
        this(gVar, i10, f4618l);
    }

    public static boolean d(int i10) {
        return i10 / 100 == 2;
    }

    public static boolean g(int i10) {
        return i10 / 100 == 3;
    }

    @Override // com.bumptech.glide.load.data.d
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        InputStream inputStream = this.f4623j;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f4622i;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f4622i = null;
    }

    public final InputStream c(HttpURLConnection httpURLConnection) throws IOException {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.f4623j = l8.c.d(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Got non empty content encoding: ");
                sb2.append(httpURLConnection.getContentEncoding());
            }
            this.f4623j = httpURLConnection.getInputStream();
        }
        return this.f4623j;
    }

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
        this.f4624k = true;
    }

    @Override // com.bumptech.glide.load.data.d
    public p7.a e() {
        return p7.a.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.d
    public void f(com.bumptech.glide.g gVar, d.a<? super InputStream> aVar) {
        StringBuilder sb2;
        long b10 = l8.f.b();
        try {
            try {
                aVar.d(h(this.f4619f.h(), 0, null, this.f4619f.e()));
            } catch (IOException e10) {
                Log.isLoggable("HttpUrlFetcher", 3);
                aVar.c(e10);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                } else {
                    sb2 = new StringBuilder();
                }
            }
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb2 = new StringBuilder();
                sb2.append("Finished http url fetcher fetch in ");
                sb2.append(l8.f.a(b10));
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Finished http url fetcher fetch in ");
                sb3.append(l8.f.a(b10));
            }
            throw th;
        }
    }

    public final InputStream h(URL url, int i10, URL url2, Map<String, String> map) throws IOException {
        if (i10 < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new HttpException("In re-direct loop");
                    }
                } catch (URISyntaxException unused) {
                }
            }
            this.f4622i = this.f4621h.a(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f4622i.addRequestProperty(entry.getKey(), entry.getValue());
            }
            this.f4622i.setConnectTimeout(this.f4620g);
            this.f4622i.setReadTimeout(this.f4620g);
            this.f4622i.setUseCaches(false);
            this.f4622i.setDoInput(true);
            this.f4622i.setInstanceFollowRedirects(false);
            this.f4622i.connect();
            this.f4623j = this.f4622i.getInputStream();
            if (this.f4624k) {
                return null;
            }
            int responseCode = this.f4622i.getResponseCode();
            if (d(responseCode)) {
                return c(this.f4622i);
            }
            if (!g(responseCode)) {
                if (responseCode == -1) {
                    throw new HttpException(responseCode);
                }
                throw new HttpException(this.f4622i.getResponseMessage(), responseCode);
            }
            String headerField = this.f4622i.getHeaderField(HttpHeaders.LOCATION);
            if (!TextUtils.isEmpty(headerField)) {
                URL url3 = new URL(url, headerField);
                b();
                return h(url3, i10 + 1, url, map);
            }
            throw new HttpException("Received empty or null redirect url");
        }
        throw new HttpException("Too many (> 5) redirects!");
    }

    public j(v7.g gVar, int i10, b bVar) {
        this.f4619f = gVar;
        this.f4620g = i10;
        this.f4621h = bVar;
    }
}
