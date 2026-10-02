package com.twitter.sdk.android.core.models;

import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;
import ka.c;

/* loaded from: classes.dex */
public class Place {

    @c("attributes")
    public final Map<String, String> attributes;

    @c("bounding_box")
    public final BoundingBox boundingBox;

    @c("country")
    public final String country;

    @c("country_code")
    public final String countryCode;

    @c("full_name")
    public final String fullName;

    /* renamed from: id, reason: collision with root package name */
    @c("id")
    public final String f4981id;

    @c(AppMeasurementSdk.ConditionalUserProperty.NAME)
    public final String name;

    @c("place_type")
    public final String placeType;

    @c(ImagesContract.URL)
    public final String url;

    /* loaded from: classes.dex */
    public static class BoundingBox {

        @c("coordinates")
        public final List<List<List<Double>>> coordinates;

        @c("type")
        public final String type;

        public BoundingBox(List<List<List<Double>>> list, String str) {
            this.coordinates = ModelUtils.getSafeList(list);
            this.type = str;
        }
    }

    public Place(Map<String, String> map, BoundingBox boundingBox, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.attributes = ModelUtils.getSafeMap(map);
        this.boundingBox = boundingBox;
        this.country = str;
        this.countryCode = str2;
        this.fullName = str3;
        this.f4981id = str4;
        this.name = str5;
        this.placeType = str6;
        this.url = str7;
    }
}
