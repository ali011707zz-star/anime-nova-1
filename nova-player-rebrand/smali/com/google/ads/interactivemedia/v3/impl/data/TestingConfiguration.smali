.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;
    zzb = {
        "extraParams",
        "isTv",
        "ignoreStrictModeFalsePositives"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final PARAMETER_KEY:Ljava/lang/String; = "tcnfp"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract disableExperiments()Z
.end method

.method public abstract disableOnScreenDetection()Z
.end method

.method public abstract disableSkipFadeTransition()Z
.end method

.method public abstract enableMonitorAppLifecycle()Z
.end method

.method public abstract extraParams()Lcom/google/ads/interactivemedia/v3/internal/zzqx;
.end method

.method public abstract forceAndroidTvMode()Z
.end method

.method public abstract forceExperimentIds()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
.end method

.method public abstract forceTvMode()Z
.end method

.method public abstract ignoreStrictModeFalsePositives()Z
.end method

.method public abstract useTestStreamManager()Z
.end method

.method public abstract useVideoElementMock()Z
.end method

.method public abstract videoElementMockDuration()F
.end method
