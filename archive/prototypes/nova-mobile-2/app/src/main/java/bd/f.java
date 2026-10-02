package bd;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import jc.l;

/* compiled from: Throwables.kt */
/* loaded from: classes2.dex */
public final class f {
    public static final String a(Throwable th) {
        l.f(th, "<this>");
        StringWriter stringWriter = new StringWriter(256);
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String stringWriter2 = stringWriter.toString();
        l.e(stringWriter2, "stringWriter.toString()");
        return stringWriter2;
    }
}
