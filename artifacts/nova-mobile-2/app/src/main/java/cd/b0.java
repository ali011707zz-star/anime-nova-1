package cd;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: JvmOkio.kt */
/* loaded from: classes2.dex */
public final class b0 extends d {

    /* renamed from: a, reason: collision with root package name */
    public final Socket f3901a;

    public b0(Socket socket) {
        jc.l.f(socket, "socket");
        this.f3901a = socket;
    }

    @Override // cd.d
    public IOException newTimeoutException(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // cd.d
    public void timedOut() {
        Logger logger;
        Logger logger2;
        try {
            this.f3901a.close();
        } catch (AssertionError e10) {
            if (p.e(e10)) {
                logger2 = q.f3934a;
                logger2.log(Level.WARNING, "Failed to close timed out socket " + this.f3901a, (Throwable) e10);
                return;
            }
            throw e10;
        } catch (Exception e11) {
            logger = q.f3934a;
            logger.log(Level.WARNING, "Failed to close timed out socket " + this.f3901a, (Throwable) e11);
        }
    }
}
