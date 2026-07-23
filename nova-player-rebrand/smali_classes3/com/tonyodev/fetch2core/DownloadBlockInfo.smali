.class public final Lcom/tonyodev/fetch2core/DownloadBlockInfo;
.super Ljava/lang/Object;
.source "DownloadBlockInfo.kt"

# interfaces
.implements Lcom/tonyodev/fetch2core/DownloadBlock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;


# instance fields
.field private blockPosition:I

.field private downloadId:I

.field private downloadedBytes:J

.field private endByte:J

.field private startByte:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->CREATOR:Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadId:I

    .line 9
    iput v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->blockPosition:I

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->startByte:J

    .line 11
    iput-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->endByte:J

    .line 12
    iput-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadedBytes:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 32
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.tonyodev.fetch2core.DownloadBlockInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    .line 33
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 35
    :cond_4
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 36
    :cond_5
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 37
    :cond_6
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getBlockPosition()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->blockPosition:I

    return v0
.end method

.method public getDownloadId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadId:I

    return v0
.end method

.method public getDownloadedBytes()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadedBytes:J

    return-wide v0
.end method

.method public getEndByte()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->endByte:J

    return-wide v0
.end method

.method public getStartByte()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->startByte:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 46
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setBlockPosition(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->blockPosition:I

    return-void
.end method

.method public setDownloadId(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadId:I

    return-void
.end method

.method public setDownloadedBytes(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->downloadedBytes:J

    return-void
.end method

.method public setEndByte(J)V
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->endByte:J

    return-void
.end method

.method public setStartByte(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->startByte:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 51
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result v0

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result v1

    .line 52
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadBlock(downloadId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blockPosition="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startByte="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", endByte="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", downloadedBytes="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getBlockPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getStartByte()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getEndByte()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->getDownloadedBytes()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
