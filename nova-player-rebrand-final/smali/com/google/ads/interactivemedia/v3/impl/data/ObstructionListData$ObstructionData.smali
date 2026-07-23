.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ObstructionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData$Builder;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData$Builder;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract attached()Z
.end method

.method abstract bounds()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;
.end method

.method abstract detailedReason()Ljava/lang/String;
.end method

.method abstract hidden()Z
.end method

.method abstract purpose()Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;
.end method

.method abstract type()Ljava/lang/String;
.end method
