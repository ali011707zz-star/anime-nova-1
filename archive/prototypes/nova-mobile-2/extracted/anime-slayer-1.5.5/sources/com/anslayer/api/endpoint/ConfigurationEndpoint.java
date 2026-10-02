package com.anslayer.api.endpoint;

import java.util.List;
import n4.c;
import rd.b;
import td.f;

/* compiled from: ConfigurationEndpoint.kt */
/* loaded from: classes.dex */
public interface ConfigurationEndpoint {
    @f("configs/get-android-config")
    b<c<r4.b>> getApplicationConfiguration();

    @f("configs/check-server")
    b<c<List<Object>>> getServerConfig();
}
