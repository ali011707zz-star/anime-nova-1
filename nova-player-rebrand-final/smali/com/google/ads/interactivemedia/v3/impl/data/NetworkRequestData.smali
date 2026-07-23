.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_NetworkRequestData;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData$RequestType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract connectionTimeoutMs()I
.end method

.method public abstract content()Ljava/lang/String;
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public abstract readTimeoutMs()I
.end method

.method public abstract requestType()Lcom/google/ads/interactivemedia/v3/impl/data/NetworkRequestData$RequestType;
.end method

.method public abstract url()Ljava/lang/String;
.end method

.method public abstract userAgent()Ljava/lang/String;
.end method
