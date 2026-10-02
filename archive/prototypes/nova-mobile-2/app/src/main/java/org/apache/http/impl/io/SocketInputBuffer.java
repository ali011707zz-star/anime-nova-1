package org.apache.http.impl.io;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import org.apache.http.io.EofSensor;
import org.apache.http.params.HttpParams;

/* loaded from: classes2.dex */
public class SocketInputBuffer extends AbstractSessionInputBuffer implements EofSensor {
    private static final Class SOCKET_TIMEOUT_CLASS = SocketTimeoutExceptionClass();
    private boolean eof;
    private final Socket socket;

    public SocketInputBuffer(Socket socket, int i10, HttpParams httpParams) throws IOException {
        if (socket != null) {
            this.socket = socket;
            this.eof = false;
            i10 = i10 < 0 ? socket.getReceiveBufferSize() : i10;
            init(socket.getInputStream(), i10 < 1024 ? RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE : i10, httpParams);
            return;
        }
        throw new IllegalArgumentException("Socket may not be null");
    }

    private static Class SocketTimeoutExceptionClass() {
        try {
            return Class.forName("java.net.SocketTimeoutException");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static boolean isSocketTimeoutException(InterruptedIOException interruptedIOException) {
        Class cls = SOCKET_TIMEOUT_CLASS;
        if (cls != null) {
            return cls.isInstance(interruptedIOException);
        }
        return true;
    }

    @Override // org.apache.http.impl.io.AbstractSessionInputBuffer
    public int fillBuffer() throws IOException {
        int fillBuffer = super.fillBuffer();
        this.eof = fillBuffer == -1;
        return fillBuffer;
    }

    @Override // org.apache.http.io.SessionInputBuffer
    public boolean isDataAvailable(int i10) throws IOException {
        boolean hasBufferedData = hasBufferedData();
        if (!hasBufferedData) {
            int soTimeout = this.socket.getSoTimeout();
            try {
                try {
                    this.socket.setSoTimeout(i10);
                    fillBuffer();
                    hasBufferedData = hasBufferedData();
                } catch (InterruptedIOException e10) {
                    if (!isSocketTimeoutException(e10)) {
                        throw e10;
                    }
                }
            } finally {
                this.socket.setSoTimeout(soTimeout);
            }
        }
        return hasBufferedData;
    }

    @Override // org.apache.http.io.EofSensor
    public boolean isEof() {
        return this.eof;
    }
}
