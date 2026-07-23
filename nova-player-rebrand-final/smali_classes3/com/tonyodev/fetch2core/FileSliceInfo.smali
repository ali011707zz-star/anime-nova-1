.class public final Lcom/tonyodev/fetch2core/FileSliceInfo;
.super Ljava/lang/Object;
.source "FileSliceInfo.kt"


# instance fields
.field private final bytesPerFileSlice:J

.field private final slicingCount:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    iput-wide p2, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tonyodev/fetch2core/FileSliceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tonyodev/fetch2core/FileSliceInfo;

    iget v1, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    iget v3, p1, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBytesPerFileSlice()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    return-wide v0
.end method

.method public final getSlicingCount()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget v0, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->slicingCount:I

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSliceInfo;->bytesPerFileSlice:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileSliceInfo(slicingCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bytesPerFileSlice="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
