.class public final Lcom/tonyodev/fetch2/database/DownloadInfo$CREATOR;
.super Ljava/lang/Object;
.source "DownloadInfo.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/database/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/database/DownloadInfo$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 28

    const-string v0, "source"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    .line 221
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v3

    .line 222
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v5

    .line 223
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 224
    sget-object v6, Lcom/tonyodev/fetch2/Priority;->Companion:Lcom/tonyodev/fetch2/Priority$Companion;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tonyodev/fetch2/Priority$Companion;->valueOf(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v6

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/util/Map;

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 228
    sget-object v13, Lcom/tonyodev/fetch2/Status;->Companion:Lcom/tonyodev/fetch2/Status$Companion;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/tonyodev/fetch2/Status$Companion;->valueOf(I)Lcom/tonyodev/fetch2/Status;

    move-result-object v13

    .line 229
    sget-object v14, Lcom/tonyodev/fetch2/Error;->Companion:Lcom/tonyodev/fetch2/Error$Companion;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/tonyodev/fetch2/Error$Companion;->valueOf(I)Lcom/tonyodev/fetch2/Error;

    move-result-object v14

    .line 230
    sget-object v15, Lcom/tonyodev/fetch2/NetworkType;->Companion:Lcom/tonyodev/fetch2/NetworkType$Companion;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/tonyodev/fetch2/NetworkType$Companion;->valueOf(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v1

    move-object/from16 v16, v14

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-wide/from16 v17, v14

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 233
    sget-object v15, Lcom/tonyodev/fetch2/EnqueueAction;->Companion:Lcom/tonyodev/fetch2/EnqueueAction$Companion;

    move-object/from16 v19, v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v15, v14}, Lcom/tonyodev/fetch2/EnqueueAction$Companion;->valueOf(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v14

    move-object/from16 v20, v14

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-wide/from16 v21, v14

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    :goto_1
    move/from16 v23, v15

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 236
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-wide/from16 v24, v14

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-wide/from16 v26, v14

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v14

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/util/Map;

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move/from16 p1, v15

    .line 242
    new-instance v15, Lcom/tonyodev/fetch2/database/DownloadInfo;

    invoke-direct {v15}, Lcom/tonyodev/fetch2/database/DownloadInfo;-><init>()V

    .line 243
    invoke-virtual {v15, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setId(I)V

    .line 244
    invoke-virtual {v15, v2}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNamespace(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v15, v4}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v15, v3}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setFile(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v15, v5}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setGroup(I)V

    .line 248
    invoke-virtual {v15, v6}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 249
    invoke-virtual {v15, v7}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setHeaders(Ljava/util/Map;)V

    .line 250
    invoke-virtual {v15, v9, v10}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloaded(J)V

    .line 251
    invoke-virtual {v15, v11, v12}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTotal(J)V

    .line 252
    invoke-virtual {v15, v13}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setStatus(Lcom/tonyodev/fetch2/Status;)V

    move-object/from16 v0, v16

    .line 253
    invoke-virtual {v15, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setError(Lcom/tonyodev/fetch2/Error;)V

    .line 254
    invoke-virtual {v15, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    move-wide/from16 v0, v17

    .line 255
    invoke-virtual {v15, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setCreated(J)V

    move-object/from16 v0, v19

    .line 256
    invoke-virtual {v15, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setTag(Ljava/lang/String;)V

    move-object/from16 v0, v20

    .line 257
    invoke-virtual {v15, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    move-wide/from16 v0, v21

    .line 258
    invoke-virtual {v15, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setIdentifier(J)V

    move/from16 v0, v23

    .line 259
    invoke-virtual {v15, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadOnEnqueue(Z)V

    move-wide/from16 v0, v24

    .line 260
    invoke-virtual {v15, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setEtaInMilliSeconds(J)V

    move-wide/from16 v0, v26

    .line 261
    invoke-virtual {v15, v0, v1}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setDownloadedBytesPerSecond(J)V

    .line 262
    new-instance v0, Lcom/tonyodev/fetch2core/Extras;

    invoke-direct {v0, v14}, Lcom/tonyodev/fetch2core/Extras;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    .line 263
    invoke-virtual {v15, v8}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryMaxAttempts(I)V

    move/from16 v0, p1

    .line 264
    invoke-virtual {v15, v0}, Lcom/tonyodev/fetch2/database/DownloadInfo;->setAutoRetryAttempts(I)V

    return-object v15
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 215
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/database/DownloadInfo$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tonyodev/fetch2/database/DownloadInfo;
    .locals 0

    .line 269
    new-array p1, p1, [Lcom/tonyodev/fetch2/database/DownloadInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 215
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/database/DownloadInfo$CREATOR;->newArray(I)[Lcom/tonyodev/fetch2/database/DownloadInfo;

    move-result-object p1

    return-object p1
.end method
