package h0;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import g0.e;
import java.io.IOException;
import java.io.InputStream;
import n0.f;
import org.apache.http.HttpStatus;

/* compiled from: TypefaceCompatApi29Impl.java */
/* loaded from: classes.dex */
public class m extends n {
    @Override // h0.n
    public Typeface b(Context context, e.b bVar, Resources resources, int i10) {
        try {
            e.c[] a10 = bVar.a();
            int length = a10.length;
            FontFamily.Builder builder = null;
            int i11 = 0;
            while (true) {
                int i12 = 1;
                if (i11 >= length) {
                    break;
                }
                e.c cVar = a10[i11];
                try {
                    Font.Builder weight = new Font.Builder(resources, cVar.b()).setWeight(cVar.e());
                    if (!cVar.f()) {
                        i12 = 0;
                    }
                    Font build = weight.setSlant(i12).setTtcIndex(cVar.c()).setFontVariationSettings(cVar.d()).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                } catch (IOException unused) {
                }
                i11++;
            }
            if (builder == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i10 & 1) != 0 ? 700 : HttpStatus.SC_BAD_REQUEST, (i10 & 2) != 0 ? 1 : 0)).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x005a, code lost:
    
        if (r4 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005c, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0061, code lost:
    
        if ((r14 & 1) == 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0063, code lost:
    
        r12 = 700;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x006a, code lost:
    
        if ((r14 & 2) == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x006c, code lost:
    
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0081, code lost:
    
        return new android.graphics.Typeface.CustomFallbackBuilder(r4.build()).setStyle(new android.graphics.fonts.FontStyle(r12, r2)).build();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0066, code lost:
    
        r12 = org.apache.http.HttpStatus.SC_BAD_REQUEST;
     */
    @Override // h0.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Typeface c(Context context, CancellationSignal cancellationSignal, f.b[] bVarArr, int i10) {
        int i11;
        ParcelFileDescriptor openFileDescriptor;
        ContentResolver contentResolver = context.getContentResolver();
        try {
            int length = bVarArr.length;
            int i12 = 0;
            FontFamily.Builder builder = null;
            while (true) {
                int i13 = 1;
                if (i11 >= length) {
                    break;
                }
                f.b bVar = bVarArr[i11];
                try {
                    openFileDescriptor = contentResolver.openFileDescriptor(bVar.d(), "r", cancellationSignal);
                } catch (IOException unused) {
                }
                if (openFileDescriptor != null) {
                    try {
                        Font.Builder weight = new Font.Builder(openFileDescriptor).setWeight(bVar.e());
                        if (!bVar.f()) {
                            i13 = 0;
                        }
                        Font build = weight.setSlant(i13).setTtcIndex(bVar.c()).build();
                        if (builder == null) {
                            builder = new FontFamily.Builder(build);
                        } else {
                            builder.addFont(build);
                        }
                    } catch (Throwable th) {
                        try {
                            openFileDescriptor.close();
                        } catch (Throwable unused2) {
                        }
                        throw th;
                        break;
                    }
                } else {
                    i11 = openFileDescriptor == null ? i11 + 1 : 0;
                }
                openFileDescriptor.close();
            }
        } catch (Exception unused3) {
            return null;
        }
    }

    @Override // h0.n
    public Typeface d(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // h0.n
    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        try {
            Font build = new Font.Builder(resources, i10).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // h0.n
    public f.b h(f.b[] bVarArr, int i10) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
