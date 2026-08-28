package o3;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.io.IOException;
import l3.h;

/* compiled from: MaskParser.java */
/* loaded from: classes.dex */
public class x {
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006a, code lost:
    
        if (r1.equals("s") == false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static l3.h a(p3.c cVar, e3.d dVar) throws IOException {
        char c10;
        cVar.h();
        h.a aVar = null;
        k3.h hVar = null;
        k3.d dVar2 = null;
        boolean z10 = false;
        while (cVar.z()) {
            String N = cVar.N();
            N.hashCode();
            char c11 = 3;
            switch (N.hashCode()) {
                case 111:
                    if (N.equals("o")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3588:
                    if (N.equals("pt")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 104433:
                    if (N.equals("inv")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3357091:
                    if (N.equals("mode")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            c10 = 65535;
            switch (c10) {
                case 0:
                    dVar2 = d.h(cVar, dVar);
                    break;
                case 1:
                    hVar = d.k(cVar, dVar);
                    break;
                case 2:
                    z10 = cVar.F();
                    break;
                case 3:
                    String R = cVar.R();
                    R.hashCode();
                    switch (R.hashCode()) {
                        case 97:
                            if (R.equals("a")) {
                                c11 = 0;
                                break;
                            }
                            break;
                        case 105:
                            if (R.equals("i")) {
                                c11 = 1;
                                break;
                            }
                            break;
                        case 110:
                            if (R.equals(GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION)) {
                                c11 = 2;
                                break;
                            }
                            break;
                        case 115:
                            break;
                    }
                    c11 = 65535;
                    switch (c11) {
                        case 0:
                            aVar = h.a.MASK_MODE_ADD;
                            break;
                        case 1:
                            dVar.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                            aVar = h.a.MASK_MODE_INTERSECT;
                            break;
                        case 2:
                            aVar = h.a.MASK_MODE_NONE;
                            break;
                        case 3:
                            aVar = h.a.MASK_MODE_SUBTRACT;
                            break;
                        default:
                            q3.d.c("Unknown mask mode " + N + ". Defaulting to Add.");
                            aVar = h.a.MASK_MODE_ADD;
                            break;
                    }
                default:
                    cVar.k0();
                    break;
            }
        }
        cVar.x();
        return new l3.h(aVar, hVar, dVar2, z10);
    }
}
