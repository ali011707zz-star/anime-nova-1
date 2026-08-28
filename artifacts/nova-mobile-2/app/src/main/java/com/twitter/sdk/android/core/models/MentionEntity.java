package com.twitter.sdk.android.core.models;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.twitter.sdk.android.core.identity.AuthHandler;
import ka.c;

/* loaded from: classes.dex */
public class MentionEntity extends Entity {

    /* renamed from: id, reason: collision with root package name */
    @c("id")
    public final long f4980id;

    @c("id_str")
    public final String idStr;

    @c(AppMeasurementSdk.ConditionalUserProperty.NAME)
    public final String name;

    @c(AuthHandler.EXTRA_SCREEN_NAME)
    public final String screenName;

    public MentionEntity(long j10, String str, String str2, String str3, int i10, int i11) {
        super(i10, i11);
        this.f4980id = j10;
        this.idStr = str;
        this.name = str2;
        this.screenName = str3;
    }

    @Override // com.twitter.sdk.android.core.models.Entity
    public /* bridge */ /* synthetic */ int getEnd() {
        return super.getEnd();
    }

    @Override // com.twitter.sdk.android.core.models.Entity
    public /* bridge */ /* synthetic */ int getStart() {
        return super.getStart();
    }
}
