.class public final Lcom/tonyodev/fetch2/Request$CREATOR;
.super Ljava/lang/Object;
.source "Request.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2/Request$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2/Request;
    .locals 13

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 89
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.String>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Map;

    .line 92
    sget-object v7, Lcom/tonyodev/fetch2/Priority;->Companion:Lcom/tonyodev/fetch2/Priority$Companion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/tonyodev/fetch2/Priority$Companion;->valueOf(I)Lcom/tonyodev/fetch2/Priority;

    move-result-object v7

    .line 93
    sget-object v8, Lcom/tonyodev/fetch2/NetworkType;->Companion:Lcom/tonyodev/fetch2/NetworkType$Companion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/tonyodev/fetch2/NetworkType$Companion;->valueOf(I)Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v8

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 95
    sget-object v10, Lcom/tonyodev/fetch2/EnqueueAction;->Companion:Lcom/tonyodev/fetch2/EnqueueAction$Companion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/tonyodev/fetch2/EnqueueAction$Companion;->valueOf(I)Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v10

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 97
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/util/Map;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 99
    new-instance v6, Lcom/tonyodev/fetch2/Request;

    invoke-direct {v6, v0, v1}, Lcom/tonyodev/fetch2/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v6, v2, v3}, Lcom/tonyodev/fetch2/RequestInfo;->setIdentifier(J)V

    .line 101
    invoke-virtual {v6, v4}, Lcom/tonyodev/fetch2/RequestInfo;->setGroupId(I)V

    .line 121
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Lcom/tonyodev/fetch2/RequestInfo;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {v6, v7}, Lcom/tonyodev/fetch2/RequestInfo;->setPriority(Lcom/tonyodev/fetch2/Priority;)V

    .line 106
    invoke-virtual {v6, v8}, Lcom/tonyodev/fetch2/RequestInfo;->setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V

    .line 107
    invoke-virtual {v6, v9}, Lcom/tonyodev/fetch2/RequestInfo;->setTag(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v6, v10}, Lcom/tonyodev/fetch2/RequestInfo;->setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V

    .line 109
    invoke-virtual {v6, v12}, Lcom/tonyodev/fetch2/RequestInfo;->setDownloadOnEnqueue(Z)V

    .line 110
    new-instance v0, Lcom/tonyodev/fetch2core/Extras;

    invoke-direct {v0, v11}, Lcom/tonyodev/fetch2core/Extras;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Lcom/tonyodev/fetch2/RequestInfo;->setExtras(Lcom/tonyodev/fetch2core/Extras;)V

    .line 111
    invoke-virtual {v6, p1}, Lcom/tonyodev/fetch2/RequestInfo;->setAutoRetryMaxAttempts(I)V

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/Request$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2/Request;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tonyodev/fetch2/Request;
    .locals 0

    .line 116
    new-array p1, p1, [Lcom/tonyodev/fetch2/Request;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2/Request$CREATOR;->newArray(I)[Lcom/tonyodev/fetch2/Request;

    move-result-object p1

    return-object p1
.end method
