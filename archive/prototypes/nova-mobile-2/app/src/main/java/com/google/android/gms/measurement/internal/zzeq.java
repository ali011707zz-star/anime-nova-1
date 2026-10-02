package com.google.android.gms.measurement.internal;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzeq implements Runnable {
    public final /* synthetic */ zzer zza;
    private final URL zzb;
    private final byte[] zzc;
    private final zzen zzd;
    private final String zze;
    private final Map<String, String> zzf;

    public zzeq(zzer zzerVar, String str, URL url, byte[] bArr, Map<String, String> map, zzen zzenVar) {
        this.zza = zzerVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzenVar);
        this.zzb = url;
        this.zzc = bArr;
        this.zzd = zzenVar;
        this.zze = str;
        this.zzf = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x012d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Throwable th;
        HttpURLConnection httpURLConnection;
        Map map;
        IOException e10;
        Map map2;
        IOException iOException;
        int i10;
        zzep zzepVar;
        zzfs zzfsVar;
        InputStream inputStream;
        this.zza.zzax();
        OutputStream outputStream = null;
        try {
            httpURLConnection = this.zza.zza(this.zzb);
            try {
                Map<String, String> map3 = this.zzf;
                if (map3 != null) {
                    for (Map.Entry<String, String> entry : map3.entrySet()) {
                        httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                if (this.zzc != null) {
                    byte[] zzz = this.zza.zzf.zzu().zzz(this.zzc);
                    zzej zzj = this.zza.zzs.zzay().zzj();
                    int length = zzz.length;
                    zzj.zzb("Uploading data. size", Integer.valueOf(length));
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
                    httpURLConnection.setFixedLengthStreamingMode(length);
                    httpURLConnection.connect();
                    OutputStream outputStream2 = httpURLConnection.getOutputStream();
                    try {
                        outputStream2.write(zzz);
                        outputStream2.close();
                    } catch (IOException e11) {
                        map2 = null;
                        iOException = e11;
                        outputStream = outputStream2;
                        i10 = 0;
                        if (outputStream != null) {
                        }
                        if (httpURLConnection != null) {
                        }
                        zzfsVar = this.zza.zzs.zzaz();
                        zzepVar = new zzep(this.zze, this.zzd, i10, iOException, null, map2, null);
                        zzfsVar.zzp(zzepVar);
                    } catch (Throwable th2) {
                        th = th2;
                        map = null;
                        outputStream = outputStream2;
                        i10 = 0;
                        if (outputStream != null) {
                        }
                        if (httpURLConnection != null) {
                        }
                        this.zza.zzs.zzaz().zzp(new zzep(this.zze, this.zzd, i10, null, null, map, null));
                        throw th;
                    }
                }
                i10 = httpURLConnection.getResponseCode();
            } catch (IOException e12) {
                e10 = e12;
                map2 = null;
                iOException = e10;
                i10 = 0;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e13) {
                        this.zza.zzs.zzay().zzd().zzc("Error closing HTTP compressed POST connection output stream. appId", zzel.zzn(this.zze), e13);
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                zzfsVar = this.zza.zzs.zzaz();
                zzepVar = new zzep(this.zze, this.zzd, i10, iOException, null, map2, null);
                zzfsVar.zzp(zzepVar);
            } catch (Throwable th3) {
                th = th3;
                map = null;
            }
        } catch (IOException e14) {
            e10 = e14;
            httpURLConnection = null;
            map2 = null;
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
            map = null;
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
                            if (read <= 0) {
                                break;
                            } else {
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        inputStream.close();
                        httpURLConnection.disconnect();
                        zzfsVar = this.zza.zzs.zzaz();
                        zzepVar = new zzep(this.zze, this.zzd, i10, null, byteArray, headerFields, null);
                    } catch (Throwable th5) {
                        th = th5;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    inputStream = null;
                }
            } catch (IOException e15) {
                e = e15;
                iOException = e;
                if (outputStream != null) {
                }
                if (httpURLConnection != null) {
                }
                zzfsVar = this.zza.zzs.zzaz();
                zzepVar = new zzep(this.zze, this.zzd, i10, iOException, null, map2, null);
                zzfsVar.zzp(zzepVar);
            } catch (Throwable th7) {
                th = th7;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e16) {
                        this.zza.zzs.zzay().zzd().zzc("Error closing HTTP compressed POST connection output stream. appId", zzel.zzn(this.zze), e16);
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                this.zza.zzs.zzaz().zzp(new zzep(this.zze, this.zzd, i10, null, null, map, null));
                throw th;
            }
        } catch (IOException e17) {
            e = e17;
            map2 = null;
            iOException = e;
            if (outputStream != null) {
            }
            if (httpURLConnection != null) {
            }
            zzfsVar = this.zza.zzs.zzaz();
            zzepVar = new zzep(this.zze, this.zzd, i10, iOException, null, map2, null);
            zzfsVar.zzp(zzepVar);
        } catch (Throwable th8) {
            th = th8;
            map = null;
            if (outputStream != null) {
            }
            if (httpURLConnection != null) {
            }
            this.zza.zzs.zzaz().zzp(new zzep(this.zze, this.zzd, i10, null, null, map, null));
            throw th;
        }
        zzfsVar.zzp(zzepVar);
    }
}
