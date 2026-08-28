package com.google.firebase.messaging;

import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import h9.e;

/* compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* loaded from: classes.dex */
final /* synthetic */ class MessagingAnalytics$$Lambda$0 implements e {
    public static final e $instance = new MessagingAnalytics$$Lambda$0();

    private MessagingAnalytics$$Lambda$0() {
    }

    @Override // h9.e
    public Object apply(Object obj) {
        return ((MessagingClientEventExtension) obj).toByteArray();
    }
}
