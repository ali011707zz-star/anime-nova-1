package com.twitter.sdk.android.core.models;

import java.util.ArrayList;
import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class Coordinates {
    public static final int INDEX_LATITUDE = 1;
    public static final int INDEX_LONGITUDE = 0;

    @c("coordinates")
    public final List<Double> coordinates;

    @c("type")
    public final String type;

    public Coordinates(Double d10, Double d11, String str) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(0, d10);
        arrayList.add(1, d11);
        this.coordinates = ModelUtils.getSafeList(arrayList);
        this.type = str;
    }

    public Double getLatitude() {
        return this.coordinates.get(1);
    }

    public Double getLongitude() {
        return this.coordinates.get(0);
    }
}
