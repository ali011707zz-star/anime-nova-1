package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.cookie.ClientCookie;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public class LibraryVersion {
    private static final GmsLogger zza = new GmsLogger("LibraryVersion", "");
    private static LibraryVersion zzb = new LibraryVersion();
    private ConcurrentHashMap<String, String> zzc = new ConcurrentHashMap<>();

    @VisibleForTesting
    public LibraryVersion() {
    }

    @RecentlyNonNull
    @KeepForSdk
    public static LibraryVersion getInstance() {
        return zzb;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00b7  */
    @RecentlyNonNull
    @KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getVersion(@RecentlyNonNull String str) {
        String str2;
        InputStream resourceAsStream;
        Preconditions.checkNotEmpty(str, "Please provide a valid libraryName");
        if (this.zzc.containsKey(str)) {
            return this.zzc.get(str);
        }
        Properties properties = new Properties();
        InputStream inputStream = null;
        String str3 = null;
        InputStream inputStream2 = null;
        try {
            try {
                resourceAsStream = LibraryVersion.class.getResourceAsStream(String.format("/%s.properties", str));
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e10) {
            e = e10;
            str2 = null;
        }
        try {
            if (resourceAsStream != null) {
                properties.load(resourceAsStream);
                str3 = properties.getProperty(ClientCookie.VERSION_ATTR, null);
                GmsLogger gmsLogger = zza;
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 12 + String.valueOf(str3).length());
                sb2.append(str);
                sb2.append(" version is ");
                sb2.append(str3);
                gmsLogger.v("LibraryVersion", sb2.toString());
            } else {
                GmsLogger gmsLogger2 = zza;
                String valueOf = String.valueOf(str);
                gmsLogger2.w("LibraryVersion", valueOf.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf) : new String("Failed to get app version for libraryName: "));
            }
            if (resourceAsStream != null) {
                IOUtils.closeQuietly(resourceAsStream);
            }
        } catch (IOException e11) {
            e = e11;
            inputStream = resourceAsStream;
            str2 = null;
            GmsLogger gmsLogger3 = zza;
            String valueOf2 = String.valueOf(str);
            gmsLogger3.e("LibraryVersion", valueOf2.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf2) : new String("Failed to get app version for libraryName: "), e);
            if (inputStream != null) {
                IOUtils.closeQuietly(inputStream);
            }
            str3 = str2;
            if (str3 == null) {
            }
            this.zzc.put(str, str3);
            return str3;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = resourceAsStream;
            if (inputStream2 != null) {
                IOUtils.closeQuietly(inputStream2);
            }
            throw th;
        }
        if (str3 == null) {
            zza.d("LibraryVersion", ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used");
            str3 = "UNKNOWN";
        }
        this.zzc.put(str, str3);
        return str3;
    }
}
