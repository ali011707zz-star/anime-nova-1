package e4;

import android.app.NotificationChannel;
import android.content.Context;
import android.os.Build;
import com.anslayer.R;
import jc.l;
import wb.k;

/* compiled from: Notifications.kt */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f6187a = new c();

    public final void a(Context context) {
        l.f(context, "context");
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        a.a(context).createNotificationChannels(k.d(new NotificationChannel("common_channel", context.getString(R.string.channel_common), 2)));
    }
}
