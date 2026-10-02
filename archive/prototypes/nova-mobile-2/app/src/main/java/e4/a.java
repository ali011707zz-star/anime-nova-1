package e4;

import android.app.NotificationManager;
import android.content.Context;
import com.anslayer.R;
import e0.j;
import jc.l;
import vb.p;

/* compiled from: NotificationExtionsion.kt */
/* loaded from: classes.dex */
public final class a {
    public static final NotificationManager a(Context context) {
        l.f(context, "<this>");
        Object systemService = context.getSystemService("notification");
        if (systemService != null) {
            return (NotificationManager) systemService;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.app.NotificationManager");
    }

    public static final j.e b(Context context, String str, ic.l<? super j.e, p> lVar) {
        l.f(context, "<this>");
        l.f(str, "channelId");
        j.e h10 = new j.e(context, str).h(f0.a.d(context, R.color.colorPrimary));
        l.e(h10, "Builder(this, channelId)…s, R.color.colorPrimary))");
        if (lVar != null) {
            lVar.invoke(h10);
        }
        return h10;
    }

    public static /* synthetic */ j.e c(Context context, String str, ic.l lVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        return b(context, str, lVar);
    }
}
