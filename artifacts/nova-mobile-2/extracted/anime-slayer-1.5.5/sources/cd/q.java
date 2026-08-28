package cd;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;

/* compiled from: JvmOkio.kt */
/* loaded from: classes2.dex */
public final /* synthetic */ class q {

    /* renamed from: a */
    public static final Logger f3934a = Logger.getLogger("okio.Okio");

    public static final a0 b(File file) throws FileNotFoundException {
        jc.l.f(file, "$this$appendingSink");
        return p.h(new FileOutputStream(file, true));
    }

    public static final boolean c(AssertionError assertionError) {
        jc.l.f(assertionError, "$this$isAndroidGetsocknameError");
        if (assertionError.getCause() == null) {
            return false;
        }
        String message = assertionError.getMessage();
        return message != null ? qc.u.C(message, "getsockname failed", false, 2, null) : false;
    }

    public static final a0 d(File file, boolean z10) throws FileNotFoundException {
        jc.l.f(file, "$this$sink");
        return p.h(new FileOutputStream(file, z10));
    }

    public static final a0 e(OutputStream outputStream) {
        jc.l.f(outputStream, "$this$sink");
        return new t(outputStream, new d0());
    }

    public static final a0 f(Socket socket) throws IOException {
        jc.l.f(socket, "$this$sink");
        b0 b0Var = new b0(socket);
        OutputStream outputStream = socket.getOutputStream();
        jc.l.e(outputStream, "getOutputStream()");
        return b0Var.sink(new t(outputStream, b0Var));
    }

    public static /* synthetic */ a0 g(File file, boolean z10, int i10, Object obj) throws FileNotFoundException {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return p.g(file, z10);
    }

    public static final c0 h(File file) throws FileNotFoundException {
        jc.l.f(file, "$this$source");
        return p.l(new FileInputStream(file));
    }

    public static final c0 i(InputStream inputStream) {
        jc.l.f(inputStream, "$this$source");
        return new o(inputStream, new d0());
    }

    public static final c0 j(Socket socket) throws IOException {
        jc.l.f(socket, "$this$source");
        b0 b0Var = new b0(socket);
        InputStream inputStream = socket.getInputStream();
        jc.l.e(inputStream, "getInputStream()");
        return b0Var.source(new o(inputStream, b0Var));
    }
}
