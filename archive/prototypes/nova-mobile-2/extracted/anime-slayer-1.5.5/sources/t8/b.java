package t8;

import java.io.File;
import java.util.Iterator;
import jc.l;

/* compiled from: ExifDataCopier.kt */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final b f14092a = new b();

    public final void a(File file, File file2) {
        l.g(file, "filePathOri");
        l.g(file2, "filePathDest");
        try {
            b1.a aVar = new b1.a(file);
            b1.a aVar2 = new b1.a(file2);
            Iterator it2 = wb.l.l("FNumber", "ExposureTime", "ISOSpeedRatings", "GPSAltitude", "GPSAltitudeRef", "FocalLength", "GPSDateStamp", "WhiteBalance", "GPSProcessingMethod", "GPSTimeStamp", "DateTime", "Flash", "GPSLatitude", "GPSLatitudeRef", "GPSLongitude", "GPSLongitudeRef", "Make", "Model", "Orientation").iterator();
            while (it2.hasNext()) {
                b(aVar, aVar2, (String) it2.next());
            }
            aVar2.L();
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error preserving Exif data on selected image: ");
            sb2.append(e10);
        }
    }

    public final void b(b1.a aVar, b1.a aVar2, String str) {
        if (aVar.f(str) != null) {
            aVar2.N(str, aVar.f(str));
        }
    }
}
