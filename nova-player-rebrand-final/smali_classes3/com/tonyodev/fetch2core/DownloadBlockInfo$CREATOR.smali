.class public final Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;
.super Ljava/lang/Object;
.source "DownloadBlockInfo.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/DownloadBlockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2core/DownloadBlockInfo;
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    invoke-direct {v0}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadId(I)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setBlockPosition(I)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setStartByte(J)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setEndByte(J)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tonyodev/fetch2core/DownloadBlockInfo;->setDownloadedBytes(J)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tonyodev/fetch2core/DownloadBlockInfo;
    .locals 0

    .line 80
    new-array p1, p1, [Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/DownloadBlockInfo$CREATOR;->newArray(I)[Lcom/tonyodev/fetch2core/DownloadBlockInfo;

    move-result-object p1

    return-object p1
.end method
