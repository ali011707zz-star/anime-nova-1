package com.anslayer.data.firebase;

import com.anslayer.R;
import com.anslayer.api.endpoint.UserEndpoint;
import com.anslayer.data.notification.NotificationReceiver;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import e0.j;
import io.wax911.support.extension.RetroErrorExtKt;
import io.wax911.support.util.SupportAnalyticUtil;
import jc.l;
import jc.m;
import okhttp3.ResponseBody;
import rd.q;
import vb.p;
import z3.b;

/* compiled from: CloudMessagingService.kt */
/* loaded from: classes.dex */
public final class CloudMessagingService extends FirebaseMessagingService {

    /* compiled from: CloudMessagingService.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ResponseBody f4086f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ResponseBody responseBody) {
            super(0);
            this.f4086f = responseBody;
        }

        public final void a() {
            this.f4086f.toString();
            l.m("syncServiceToken(token: String?) -> ", this.f4086f.string());
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    public final void a(String str) {
        q<ResponseBody> execute = ((UserEndpoint) b.f17284d.getInstance(this).b(UserEndpoint.class)).syncFCMToken(k7.b.e(this), str).execute();
        if (!execute.f()) {
            RetroErrorExtKt.logError(execute.d());
            return;
        }
        ResponseBody a10 = execute.a();
        if (a10 == null) {
            return;
        }
        e7.a.a(a10, new a(a10));
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        String str;
        String str2;
        String str3;
        l.f(remoteMessage, "message");
        super.onMessageReceived(remoteMessage);
        l.e(remoteMessage.getData(), "message.data");
        if (!r0.isEmpty()) {
            String str4 = remoteMessage.getData().get("news_id");
            Long valueOf = str4 == null ? null : Long.valueOf(Long.parseLong(str4));
            if (valueOf == null) {
                return;
            }
            long longValue = valueOf.longValue();
            String str5 = remoteMessage.getData().get("news_title");
            if (str5 == null || (str = remoteMessage.getData().get("news_description")) == null || (str2 = remoteMessage.getData().get("news_image_url")) == null || (str3 = remoteMessage.getData().get("news_created_at")) == null) {
                return;
            }
            s4.a a10 = s4.a.Companion.a(longValue, str5, str, str2, str3, remoteMessage.getData().get("news_source_link"), remoteMessage.getData().get("news_video_link"));
            j.e c10 = e4.a.c(this, "common_channel", null, 2, null);
            c10.k(str5);
            c10.x(R.drawable.ic_live_tv_black_24dp);
            c10.f(true);
            c10.i(NotificationReceiver.f4087a.b(this, a10));
            e4.a.a(this).notify(str5.hashCode(), c10.b());
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        l.f(str, "token");
        super.onNewToken(str);
        try {
            a(str);
        } catch (Exception e10) {
            e10.printStackTrace();
            SupportAnalyticUtil d10 = k7.b.d(this);
            if (d10 == null) {
                return;
            }
            d10.logException(e10);
        }
    }
}
