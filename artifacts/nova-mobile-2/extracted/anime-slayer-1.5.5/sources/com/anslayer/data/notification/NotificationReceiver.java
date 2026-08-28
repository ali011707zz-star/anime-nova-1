package com.anslayer.data.notification;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.anslayer.ui.news.detail.NewsDetailsActivity;
import jc.g;
import jc.l;

/* compiled from: NotificationReceiver.kt */
/* loaded from: classes.dex */
public final class NotificationReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final a f4087a = new a(null);

    /* compiled from: NotificationReceiver.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final PendingIntent a(Context context, int i10) {
            l.f(context, "context");
            Intent intent = new Intent(context, (Class<?>) NotificationReceiver.class);
            intent.setAction("com.anslayer.NotificationReceiver.ACTION_DISMISS_NOTIFICATION");
            intent.putExtra("com.anslayer.NotificationReceiver.NOTIFICATION_ID", i10);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 134217728);
            l.e(broadcast, "getBroadcast(context, 0,…tent.FLAG_UPDATE_CURRENT)");
            return broadcast;
        }

        public final PendingIntent b(Context context, s4.a aVar) {
            l.f(context, "context");
            l.f(aVar, "news");
            Intent a10 = NewsDetailsActivity.f4237l.a(context, aVar);
            a10.addFlags(67108864);
            PendingIntent activity = PendingIntent.getActivity(context, aVar.j().hashCode(), a10, 134217728);
            l.e(activity, "getActivity(context, new…tent.FLAG_UPDATE_CURRENT)");
            return activity;
        }
    }

    public final void a(Context context, int i10) {
        e4.a.a(context).cancel(i10);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        l.f(context, "context");
        l.f(intent, "intent");
        String action = intent.getAction();
        if (action != null && action.hashCode() == -1437629077 && action.equals("com.anslayer.NotificationReceiver.ACTION_DISMISS_NOTIFICATION")) {
            a(context, intent.getIntExtra("com.anslayer.NotificationReceiver.NOTIFICATION_ID", -1));
        }
    }
}
