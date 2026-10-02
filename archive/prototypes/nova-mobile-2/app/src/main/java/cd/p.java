package cd;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes2.dex */
public final class p {
    public static final a0 a(File file) throws FileNotFoundException {
        return q.b(file);
    }

    public static final a0 b() {
        return r.a();
    }

    public static final g c(a0 a0Var) {
        return r.b(a0Var);
    }

    public static final h d(c0 c0Var) {
        return r.c(c0Var);
    }

    public static final boolean e(AssertionError assertionError) {
        return q.c(assertionError);
    }

    public static final a0 f(File file) throws FileNotFoundException {
        return q.g(file, false, 1, null);
    }

    public static final a0 g(File file, boolean z10) throws FileNotFoundException {
        return q.d(file, z10);
    }

    public static final a0 h(OutputStream outputStream) {
        return q.e(outputStream);
    }

    public static final a0 i(Socket socket) throws IOException {
        return q.f(socket);
    }

    public static final c0 k(File file) throws FileNotFoundException {
        return q.h(file);
    }

    public static final c0 l(InputStream inputStream) {
        return q.i(inputStream);
    }

    public static final c0 m(Socket socket) throws IOException {
        return q.j(socket);
    }
}
