package org.apache.http.conn;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

@Deprecated
@Immutable
/* loaded from: classes2.dex */
public final class MultihomePlainSocketFactory implements SocketFactory {
    private static final MultihomePlainSocketFactory DEFAULT_FACTORY = new MultihomePlainSocketFactory();

    private MultihomePlainSocketFactory() {
    }

    public static MultihomePlainSocketFactory getSocketFactory() {
        return DEFAULT_FACTORY;
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public Socket connectSocket(Socket socket, String str, int i10, InetAddress inetAddress, int i11, HttpParams httpParams) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Target host may not be null.");
        }
        if (httpParams != null) {
            if (socket == null) {
                socket = createSocket();
            }
            if (inetAddress != null || i11 > 0) {
                if (i11 < 0) {
                    i11 = 0;
                }
                socket.bind(new InetSocketAddress(inetAddress, i11));
            }
            int connectionTimeout = HttpConnectionParams.getConnectionTimeout(httpParams);
            InetAddress[] allByName = InetAddress.getAllByName(str);
            ArrayList<InetAddress> arrayList = new ArrayList(allByName.length);
            arrayList.addAll(Arrays.asList(allByName));
            Collections.shuffle(arrayList);
            IOException iOException = null;
            for (InetAddress inetAddress2 : arrayList) {
                try {
                    socket.connect(new InetSocketAddress(inetAddress2, i10), connectionTimeout);
                    break;
                } catch (SocketTimeoutException unused) {
                    throw new ConnectTimeoutException("Connect to " + inetAddress2 + " timed out");
                } catch (IOException e10) {
                    iOException = e10;
                    socket = new Socket();
                }
            }
            if (iOException == null) {
                return socket;
            }
            throw iOException;
        }
        throw new IllegalArgumentException("Parameters may not be null.");
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() {
        return new Socket();
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public final boolean isSecure(Socket socket) throws IllegalArgumentException {
        if (socket != null) {
            if (socket.getClass() == Socket.class) {
                if (socket.isClosed()) {
                    throw new IllegalArgumentException("Socket is closed.");
                }
                return false;
            }
            throw new IllegalArgumentException("Socket not created by this factory.");
        }
        throw new IllegalArgumentException("Socket may not be null.");
    }
}
