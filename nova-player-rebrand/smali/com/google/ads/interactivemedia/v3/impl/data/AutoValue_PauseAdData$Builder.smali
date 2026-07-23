.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_PauseAdData$Builder;
.super Lcom/google/ads/interactivemedia/v3/impl/data/PauseAdData$Builder;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_PauseAdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private clickThroughUrl:Ljava/lang/String;

.field private fadeDuration:D

.field private height:I

.field private scaleTolerance:D

.field private set$0:B

.field private src:Ljava/lang/String;

.field private type:Lcom/google/ads/interactivemedia/v3/impl/data/AdViewData$Type;

.field private useMask:Z

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/PauseAdData$Builder;-><init>()V

    return-void
.end method
