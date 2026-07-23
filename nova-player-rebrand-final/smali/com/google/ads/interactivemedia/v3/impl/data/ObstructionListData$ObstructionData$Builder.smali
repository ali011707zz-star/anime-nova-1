.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract attached(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;
.end method

.method public abstract bounds(Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;
.end method

.method public abstract build()Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;
.end method

.method public abstract detailedReason(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;
.end method

.method public abstract hidden(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;
.end method

.method public abstract purpose(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;
.end method

.method public abstract type(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;
.end method

.method view(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->locationOnScreenOfView(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;->attached(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;->bounds(Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;->hidden(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;->type(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;

    move-result-object p1

    return-object p1
.end method
