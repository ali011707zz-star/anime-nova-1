package com.google.firebase.analytics.ktx;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.List;
import wb.k;

/* compiled from: com.google.firebase:firebase-analytics-ktx@@19.0.2 */
/* loaded from: classes.dex */
public final class FirebaseAnalyticsKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List<Component<?>> getComponents() {
        return k.d(LibraryVersionComponent.create("fire-analytics-ktx", "19.0.2"));
    }
}
