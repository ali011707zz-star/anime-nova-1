package o3;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.io.IOException;
import p3.c;

/* compiled from: ContentModelParser.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11692a = c.a.a("ty", GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG);

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00b4, code lost:
    
        if (r2.equals("gf") == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static l3.c a(p3.c cVar, e3.d dVar) throws IOException {
        l3.c cVar2;
        String str;
        cVar.h();
        char c10 = 2;
        int i10 = 2;
        while (true) {
            cVar2 = null;
            if (!cVar.z()) {
                str = null;
                break;
            }
            int c02 = cVar.c0(f11692a);
            if (c02 == 0) {
                str = cVar.R();
                break;
            }
            if (c02 != 1) {
                cVar.h0();
                cVar.k0();
            } else {
                i10 = cVar.L();
            }
        }
        if (str == null) {
            return null;
        }
        switch (str.hashCode()) {
            case 3239:
                if (str.equals("el")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 3270:
                if (str.equals("fl")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 3295:
                break;
            case 3307:
                if (str.equals("gr")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 3308:
                if (str.equals("gs")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 3488:
                if (str.equals("mm")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 3633:
                if (str.equals("rc")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 3646:
                if (str.equals("rp")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case 3669:
                if (str.equals("sh")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case 3679:
                if (str.equals("sr")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case 3681:
                if (str.equals("st")) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case 3705:
                if (str.equals("tm")) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case 3710:
                if (str.equals("tr")) {
                    c10 = '\f';
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                cVar2 = f.a(cVar, dVar, i10);
                break;
            case 1:
                cVar2 = h0.a(cVar, dVar);
                break;
            case 2:
                cVar2 = p.a(cVar, dVar);
                break;
            case 3:
                cVar2 = i0.a(cVar, dVar);
                break;
            case 4:
                cVar2 = q.a(cVar, dVar);
                break;
            case 5:
                cVar2 = y.a(cVar);
                dVar.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                break;
            case 6:
                cVar2 = d0.a(cVar, dVar);
                break;
            case 7:
                cVar2 = e0.a(cVar, dVar);
                break;
            case '\b':
                cVar2 = j0.a(cVar, dVar);
                break;
            case '\t':
                cVar2 = c0.a(cVar, dVar);
                break;
            case '\n':
                cVar2 = k0.a(cVar, dVar);
                break;
            case 11:
                cVar2 = l0.a(cVar, dVar);
                break;
            case '\f':
                cVar2 = c.g(cVar, dVar);
                break;
            default:
                q3.d.c("Unknown shape type " + str);
                break;
        }
        while (cVar.z()) {
            cVar.k0();
        }
        cVar.x();
        return cVar2;
    }
}
