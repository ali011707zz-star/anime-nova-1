package v7;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamEncoder.java */
/* loaded from: classes.dex */
public class t implements p7.d<InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final s7.b f14947a;

    public t(s7.b bVar) {
        this.f14947a = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override // p7.d
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean b(InputStream inputStream, File file, p7.g gVar) {
        byte[] bArr = (byte[]) this.f14947a.e(65536, byte[].class);
        boolean z10 = false;
        ?? r12 = 0;
        r12 = 0;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int read = inputStream.read(bArr);
                            r12 = -1;
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                        } catch (IOException unused) {
                            r12 = fileOutputStream;
                            Log.isLoggable("StreamEncoder", 3);
                            if (r12 != 0) {
                                r12.close();
                                r12 = r12;
                            }
                            this.f14947a.d(bArr);
                            return z10;
                        } catch (Throwable th) {
                            th = th;
                            r12 = fileOutputStream;
                            if (r12 != 0) {
                                try {
                                    r12.close();
                                } catch (IOException unused2) {
                                }
                            }
                            this.f14947a.d(bArr);
                            throw th;
                        }
                    }
                    fileOutputStream.close();
                    z10 = true;
                    fileOutputStream.close();
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
            }
            this.f14947a.d(bArr);
            return z10;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
