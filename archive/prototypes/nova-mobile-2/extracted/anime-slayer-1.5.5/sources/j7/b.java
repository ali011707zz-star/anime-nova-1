package j7;

import cd.g;
import cd.h;
import cd.p;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import jc.l;

/* compiled from: okioExtionsio.kt */
/* loaded from: classes.dex */
public final class b {
    public static final void a(h hVar, File file) {
        l.f(hVar, "<this>");
        l.f(file, "file");
        try {
            file.getParentFile().mkdirs();
            b(hVar, new FileOutputStream(file));
        } catch (Exception e10) {
            hVar.close();
            file.delete();
            throw e10;
        }
    }

    public static final void b(h hVar, OutputStream outputStream) {
        l.f(hVar, "<this>");
        l.f(outputStream, "stream");
        try {
            g c10 = p.c(p.h(outputStream));
            try {
                c10.Z(hVar);
                c10.flush();
                vb.p pVar = vb.p.f15031a;
                gc.b.a(c10, null);
                gc.b.a(hVar, null);
            } finally {
            }
        } finally {
        }
    }
}
