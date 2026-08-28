package io.wax911.support.common;

import android.content.Context;
import io.wax911.support.common.callback.AuthCallback;
import io.wax911.support.common.callback.RevokeCallback;
import java.util.List;
import wb.l;

/* compiled from: ICommonAuth.kt */
/* loaded from: classes.dex */
public interface ICommonAuth {

    /* compiled from: ICommonAuth.kt */
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void connectToProvider$default(ICommonAuth iCommonAuth, Context context, AuthCallback authCallback, List list, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: connectToProvider");
            }
            if ((i10 & 4) != 0) {
                list = l.i();
            }
            iCommonAuth.connectToProvider(context, authCallback, list);
        }

        public static /* synthetic */ void revokeProvider$default(ICommonAuth iCommonAuth, Context context, RevokeCallback revokeCallback, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: revokeProvider");
            }
            if ((i10 & 2) != 0) {
                revokeCallback = null;
            }
            iCommonAuth.revokeProvider(context, revokeCallback);
        }
    }

    void connectToProvider(Context context, AuthCallback authCallback, List<String> list);

    void disconnectProvider(Context context);

    void revokeProvider(Context context, RevokeCallback revokeCallback);
}
