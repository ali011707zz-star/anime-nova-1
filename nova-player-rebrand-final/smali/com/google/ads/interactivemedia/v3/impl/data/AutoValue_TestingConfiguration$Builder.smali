.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration$Builder;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_TestingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private disableExperiments:Z

.field private disableOnScreenDetection:Z

.field private disableSkipFadeTransition:Z

.field private enableMonitorAppLifecycle:Z

.field private extraParams:Lcom/google/ads/interactivemedia/v3/internal/zzqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqx<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private forceAndroidTvMode:Z

.field private forceExperimentIds:Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzqu<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private forceTvMode:Z

.field private ignoreStrictModeFalsePositives:Z

.field private set$0:S

.field private useTestStreamManager:Z

.field private useVideoElementMock:Z

.field private videoElementMockDuration:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
