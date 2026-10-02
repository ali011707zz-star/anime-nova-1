package xd;

import android.annotation.TargetApi;
import android.content.Context;

/* compiled from: IcsScroller.java */
@TargetApi(14)
/* loaded from: classes2.dex */
public class b extends a {
    public b(Context context) {
        super(context);
    }

    @Override // xd.a, xd.d
    public boolean a() {
        return this.f16253a.computeScrollOffset();
    }
}
