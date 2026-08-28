package com.twitter.sdk.android.core.models;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import ka.c;

/* loaded from: classes.dex */
public class Card {

    @c("binding_values")
    public final BindingValues bindingValues;

    @c(AppMeasurementSdk.ConditionalUserProperty.NAME)
    public final String name;

    public Card(BindingValues bindingValues, String str) {
        this.bindingValues = bindingValues;
        this.name = str;
    }
}
