package okhttp3.internal.http2;

import cd.h;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public interface PushObserver {
    public static final PushObserver CANCEL = new PushObserver() { // from class: okhttp3.internal.http2.PushObserver.1
        @Override // okhttp3.internal.http2.PushObserver
        public boolean onData(int i10, h hVar, int i11, boolean z10) throws IOException {
            hVar.a(i11);
            return true;
        }

        @Override // okhttp3.internal.http2.PushObserver
        public boolean onHeaders(int i10, List<Header> list, boolean z10) {
            return true;
        }

        @Override // okhttp3.internal.http2.PushObserver
        public boolean onRequest(int i10, List<Header> list) {
            return true;
        }

        @Override // okhttp3.internal.http2.PushObserver
        public void onReset(int i10, ErrorCode errorCode) {
        }
    };

    boolean onData(int i10, h hVar, int i11, boolean z10) throws IOException;

    boolean onHeaders(int i10, List<Header> list, boolean z10);

    boolean onRequest(int i10, List<Header> list);

    void onReset(int i10, ErrorCode errorCode);
}
