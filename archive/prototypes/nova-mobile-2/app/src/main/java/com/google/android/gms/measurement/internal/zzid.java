package com.google.android.gms.measurement.internal;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzid implements Runnable {
    public final /* synthetic */ zzie zza;
    private final URL zzb;
    private final String zzc;
    private final zzft zzd;

    public zzid(zzie zzieVar, String str, URL url, byte[] bArr, Map map, zzft zzftVar, byte[] bArr2) {
        this.zza = zzieVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzftVar);
        this.zzb = url;
        this.zzd = zzftVar;
        this.zzc = str;
    }

    private final void zzb(final int i10, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        this.zza.zzs.zzaz().zzp(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzic
            @Override // java.lang.Runnable
            public final void run() {
                zzid.this.zza(i10, exc, bArr, map);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0061  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Map<String, List<String>> map;
        Throwable th;
        int i10;
        HttpURLConnection httpURLConnection;
        Map<String, List<String>> map2;
        IOException e10;
        InputStream inputStream;
        this.zza.zzax();
        try {
            httpURLConnection = this.zza.zza(this.zzb);
            try {
                i10 = httpURLConnection.getResponseCode();
            } catch (IOException e11) {
                map2 = null;
                e10 = e11;
                i10 = 0;
            } catch (Throwable th2) {
                map = null;
                th = th2;
                i10 = 0;
            }
        } catch (IOException e12) {
            map2 = null;
            e10 = e12;
            i10 = 0;
            httpURLConnection = null;
        } catch (Throwable th3) {
            map = null;
            th = th3;
            i10 = 0;
            httpURLConnection = null;
        }
        try {
            try {
                Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    inputStream = httpURLConnection.getInputStream();
                    try {
                        byte[] bArr = new byte[RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read > 0) {
                                byteArrayOutputStream.write(bArr, 0, read);
                            } else {
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                inputStream.close();
                                httpURLConnection.disconnect();
                                zzb(i10, null, byteArray, headerFields);
                                return;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    inputStream = null;
                }
            } catch (IOException e13) {
                e10 = e13;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                zzb(i10, e10, null, map2);
            } catch (Throwable th6) {
                th = th6;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                zzb(i10, null, null, map);
                throw th;
            }
        } catch (IOException e14) {
            e10 = e14;
            map2 = null;
            if (httpURLConnection != null) {
            }
            zzb(i10, e10, null, map2);
        } catch (Throwable th7) {
            th = th7;
            map = null;
            if (httpURLConnection != null) {
            }
            zzb(i10, null, null, map);
            throw th;
        }
    }

    public final /* synthetic */ void zza(int i10, Exception exc, byte[] bArr, Map map) {
        zzft zzftVar = this.zzd;
        zzftVar.zza.zzC(this.zzc, i10, exc, bArr, map);
    }
}
