package e4;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import jc.l;

/* compiled from: NotificationHandler.kt */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final b f6186a = new b();

    public final PendingIntent a(Context context, Uri uri) {
        l.f(context, "context");
        l.f(uri, "uri");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, "application/vnd.android.package-archive");
        intent.setFlags(268435457);
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 0);
        l.e(activity, "getActivity(context, 0, intent, 0)");
        return activity;
    }
}
