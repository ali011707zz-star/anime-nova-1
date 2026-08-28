package okhttp3;

import cd.i;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public interface WebSocket {

    /* loaded from: classes2.dex */
    public interface Factory {
        WebSocket newWebSocket(Request request, WebSocketListener webSocketListener);
    }

    void cancel();

    boolean close(int i10, @Nullable String str);

    long queueSize();

    Request request();

    boolean send(i iVar);

    boolean send(String str);
}
