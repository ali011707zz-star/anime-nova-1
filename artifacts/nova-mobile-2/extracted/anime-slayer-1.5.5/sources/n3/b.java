package n3;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.client.methods.HttpGet;

/* compiled from: DefaultLottieNetworkFetcher.java */
/* loaded from: classes.dex */
public class b implements f {
    @Override // n3.f
    public d a(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(HttpGet.METHOD_NAME);
        httpURLConnection.connect();
        return new a(httpURLConnection);
    }
}
