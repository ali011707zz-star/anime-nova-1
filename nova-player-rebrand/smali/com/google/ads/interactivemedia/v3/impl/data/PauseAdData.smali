.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/PauseAdData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_PauseAdData;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/PauseAdData$Builder;
    }
.end annotation


# instance fields
.field private pauseAdId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/PauseAdData;->pauseAdId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract clickThroughUrl()Ljava/lang/String;
.end method

.method public abstract fadeDuration()D
.end method

.method public abstract height()I
.end method

.method public abstract scaleTolerance()D
.end method

.method public abstract src()Ljava/lang/String;
.end method

.method public abstract type()Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;
.end method

.method public abstract useMask()Z
.end method

.method public abstract width()I
.end method
