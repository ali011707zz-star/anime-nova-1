package okhttp3;

import cd.i;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public abstract class WebSocketListener {
    public void onClosed(WebSocket webSocket, int i10, String str) {
    }

    public void onClosing(WebSocket webSocket, int i10, String str) {
    }

    public void onFailure(WebSocket webSocket, Throwable th, @Nullable Response response) {
    }

    public void onMessage(WebSocket webSocket, i iVar) {
    }

    public void onMessage(WebSocket webSocket, String str) {
    }

    public void onOpen(WebSocket webSocket, Response response) {
    }
}
