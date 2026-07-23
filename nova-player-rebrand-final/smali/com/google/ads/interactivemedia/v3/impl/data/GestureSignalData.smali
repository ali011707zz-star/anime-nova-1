.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GestureSignalData;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/ads/interactivemedia/v3/impl/data/GestureSignalData$Builder;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GestureSignalData$Builder;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_GestureSignalData$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract gestureSignal()Ljava/lang/String;
.end method
