package c4;

import com.google.firebase.messaging.FirebaseMessaging;

/* compiled from: FirebaseNotification.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f3668a = new a();

    public final void a() {
        try {
            FirebaseMessaging.getInstance().subscribeToTopic("new_episode");
        } catch (Exception unused) {
        }
    }

    public final void b() {
        try {
            FirebaseMessaging.getInstance().unsubscribeFromTopic("new_episode");
        } catch (Exception unused) {
        }
    }
}
