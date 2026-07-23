.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;
.super Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private height:I

.field private left:I

.field private set$0:B

.field private top:I

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;
    .locals 8

    .line 1
    iget-byte v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, " left"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, " top"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    const-string v1, " height"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    const-string v1, " width"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->left:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->top:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->height:I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->width:I

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData;-><init>(IIII[B)V

    return-object v2
.end method

.method public height(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->height:I

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    return-object p0
.end method

.method public left(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->left:I

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    return-object p0
.end method

.method public top(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->top:I

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    return-object p0
.end method

.method public width(I)Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData$Builder;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->width:I

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_BoundingRectData$Builder;->set$0:B

    return-object p0
.end method
