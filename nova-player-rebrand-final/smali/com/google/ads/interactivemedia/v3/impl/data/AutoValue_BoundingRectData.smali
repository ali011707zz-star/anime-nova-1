.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;
.super Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;
    }
.end annotation


# instance fields
.field private final height:I

.field private final left:I

.field private final top:I

.field private final width:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->left:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->top:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->height:I

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->width:I

    return-void
.end method

.method synthetic constructor <init>(IIII[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->left:I

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->left()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->top:I

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->top()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->height:I

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->height()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->width:I

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;->width()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->left:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->top:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->height:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->width:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public height()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->height:I

    return v0
.end method

.method public left()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->left:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->left:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->top:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->height:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->width:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v1, 0x1c

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x9

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v7

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BoundingRectData{left="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", top="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public top()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->top:I

    return v0
.end method

.method public width()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;->width:I

    return v0
.end method
