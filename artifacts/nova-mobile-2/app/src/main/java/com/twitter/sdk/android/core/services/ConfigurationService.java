package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Configuration;
import rd.b;
import td.f;

/* loaded from: classes.dex */
public interface ConfigurationService {
    @f("/1.1/help/configuration.json")
    b<Configuration> configuration();
}
