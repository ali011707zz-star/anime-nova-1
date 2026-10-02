package org.apache.http.impl.io;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.net.Socket;
import org.apache.http.params.HttpParams;

/* loaded from: classes2.dex */
public class SocketOutputBuffer extends AbstractSessionOutputBuffer {
    public SocketOutputBuffer(Socket socket, int i10, HttpParams httpParams) throws IOException {
        if (socket != null) {
            i10 = i10 < 0 ? socket.getSendBufferSize() : i10;
            init(socket.getOutputStream(), i10 < 1024 ? RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE : i10, httpParams);
            return;
        }
        throw new IllegalArgumentException("Socket may not be null");
    }
}
