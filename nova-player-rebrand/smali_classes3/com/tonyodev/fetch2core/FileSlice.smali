.class public final Lcom/tonyodev/fetch2core/FileSlice;
.super Ljava/lang/Object;
.source "FileSlice.kt"


# instance fields
.field private downloaded:J

.field private final endBytes:J

.field private final id:I

.field private final position:I

.field private final startBytes:J


# direct methods
.method public constructor <init>(IIJJJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    .line 4
    iput p2, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    .line 5
    iput-wide p3, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    .line 6
    iput-wide p5, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    .line 7
    iput-wide p7, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

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
    instance-of v1, p1, Lcom/tonyodev/fetch2core/FileSlice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tonyodev/fetch2core/FileSlice;

    iget v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    iget v3, p1, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    iget v3, p1, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDownloaded()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    return-wide v0
.end method

.method public final getEndBytes()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    return-wide v0
.end method

.method public final getId()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    return v0
.end method

.method public final getStartBytes()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDownloaded()Z
    .locals 4

    .line 11
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    iget-wide v2, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setDownloaded(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 0
    iget v0, p0, Lcom/tonyodev/fetch2core/FileSlice;->id:I

    iget v1, p0, Lcom/tonyodev/fetch2core/FileSlice;->position:I

    iget-wide v2, p0, Lcom/tonyodev/fetch2core/FileSlice;->startBytes:J

    iget-wide v4, p0, Lcom/tonyodev/fetch2core/FileSlice;->endBytes:J

    iget-wide v6, p0, Lcom/tonyodev/fetch2core/FileSlice;->downloaded:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileSlice(id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", position="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startBytes="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", endBytes="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", downloaded="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
