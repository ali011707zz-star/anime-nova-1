package com.twitter.sdk.android.core.services.params;

/* loaded from: classes.dex */
public class Geocode {
    public final Distance distance;
    public final double latitude;
    public final double longitude;
    public final int radius;

    /* loaded from: classes.dex */
    public enum Distance {
        MILES("mi"),
        KILOMETERS("km");

        public final String identifier;

        Distance(String str) {
            this.identifier = str;
        }
    }

    public Geocode(double d10, double d11, int i10, Distance distance) {
        this.latitude = d10;
        this.longitude = d11;
        this.radius = i10;
        this.distance = distance;
    }

    public String toString() {
        return this.latitude + "," + this.longitude + "," + this.radius + this.distance.identifier;
    }
}
