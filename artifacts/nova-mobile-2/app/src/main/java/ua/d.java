package ua;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import jc.l;

/* compiled from: Utils.kt */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final d f14511a = new d();

    public final boolean a(Context context) {
        l.f(context, "context");
        Object systemService = context.getSystemService("connectivity");
        if (systemService != null) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        }
        throw new NullPointerException("null cannot be cast to non-null type android.net.ConnectivityManager");
    }

    public final String b(InputStream inputStream) {
        l.f(inputStream, "inputStream");
        try {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                StringBuilder sb2 = new StringBuilder();
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    sb2.append(readLine);
                    sb2.append("\n");
                }
                String sb3 = sb2.toString();
                l.e(sb3, "sb.toString()");
                return sb3;
            } catch (Exception unused) {
                throw new RuntimeException("Can't parse HTML file.");
            }
        } finally {
            inputStream.close();
        }
    }
}
