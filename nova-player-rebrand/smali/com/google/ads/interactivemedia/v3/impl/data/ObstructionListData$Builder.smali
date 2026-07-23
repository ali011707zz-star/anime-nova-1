.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$Builder;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData;
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
.method public abstract build()Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData;
.end method

.method public friendlyObstructions(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$Builder;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;

    move-result-object v2

    .line 3
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;->view(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getPurpose()Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;->purpose(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;

    move-result-object v2

    .line 5
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getDetailedReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;->detailedReason(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;->build()Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$Builder;->obstructions(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract obstructions(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$Builder;
.end method
