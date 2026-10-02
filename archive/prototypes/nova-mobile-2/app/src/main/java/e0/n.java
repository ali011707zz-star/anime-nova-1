package e0;

import android.app.RemoteInput;

/* compiled from: RemoteInput.java */
/* loaded from: classes.dex */
public final class n {
    public static RemoteInput a(n nVar) {
        throw null;
    }

    public static RemoteInput[] b(n[] nVarArr) {
        if (nVarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[nVarArr.length];
        for (int i10 = 0; i10 < nVarArr.length; i10++) {
            remoteInputArr[i10] = a(nVarArr[i10]);
        }
        return remoteInputArr;
    }
}
