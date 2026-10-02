package n3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* compiled from: DefaultLottieFetchResult.java */
/* loaded from: classes.dex */
public class a implements d {

    /* renamed from: f, reason: collision with root package name */
    public final HttpURLConnection f11238f;

    public a(HttpURLConnection httpURLConnection) {
        this.f11238f = httpURLConnection;
    }

    public final String b(HttpURLConnection httpURLConnection) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb2.append(readLine);
                        sb2.append('\n');
                    } else {
                        try {
                            break;
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception e10) {
                    throw e10;
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        }
        bufferedReader.close();
        return sb2.toString();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f11238f.disconnect();
    }

    @Override // n3.d
    public boolean isSuccessful() {
        try {
            return this.f11238f.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // n3.d
    public InputStream j() throws IOException {
        return this.f11238f.getInputStream();
    }

    @Override // n3.d
    public String s0() {
        return this.f11238f.getContentType();
    }

    @Override // n3.d
    public String y0() {
        try {
            if (isSuccessful()) {
                return null;
            }
            return "Unable to fetch " + this.f11238f.getURL() + ". Failed with " + this.f11238f.getResponseCode() + "\n" + b(this.f11238f);
        } catch (IOException e10) {
            q3.d.d("get error failed ", e10);
            return e10.getMessage();
        }
    }
}
