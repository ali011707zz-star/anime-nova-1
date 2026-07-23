.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData$Builder;
    }
.end annotation


# instance fields
.field private final attached:Z

.field private final bounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

.field private final detailedReason:Ljava/lang/String;

.field private final hidden:Z

.field private final purpose:Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;Ljava/lang/String;ZLcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;-><init>()V

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->attached:Z

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->bounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->detailedReason:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->hidden:Z

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->purpose:Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->type:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;Ljava/lang/String;ZLcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;Ljava/lang/String;[B)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;-><init>(ZLcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;Ljava/lang/String;ZLcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method attached()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->attached:Z

    return v0
.end method

.method bounds()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->bounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    return-object v0
.end method

.method detailedReason()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->detailedReason:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->attached:Z

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;->attached()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->bounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;->bounds()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->detailedReason:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;->detailedReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;->detailedReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->hidden:Z

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;->hidden()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->purpose:Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;->purpose()Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->type:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ObstructionListData$ObstructionData;->type()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->attached:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->bounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    const v5, 0xf4243

    xor-int/2addr v0, v5

    mul-int/2addr v0, v5

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->detailedReason:Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    mul-int/2addr v0, v5

    xor-int/2addr v0, v4

    mul-int/2addr v0, v5

    .line 1
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->hidden:Z

    if-eq v3, v4, :cond_2

    move v1, v2

    :cond_2
    xor-int/2addr v0, v1

    mul-int/2addr v0, v5

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->purpose:Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v5

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->type:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method hidden()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->hidden:Z

    return v0
.end method

.method purpose()Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->purpose:Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->purpose:Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->bounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->attached:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->detailedReason:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->hidden:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->type:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v3, v3, 0x22

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x11

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x9

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v9

    add-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v11

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ObstructionData{attached="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bounds="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detailedReason="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", purpose="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method type()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ObstructionListData_ObstructionData;->type:Ljava/lang/String;

    return-object v0
.end method
