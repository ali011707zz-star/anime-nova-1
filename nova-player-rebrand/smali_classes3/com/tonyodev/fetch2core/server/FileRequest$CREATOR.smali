.class public final Lcom/tonyodev/fetch2core/server/FileRequest$CREATOR;
.super Ljava/lang/Object;
.source "FileRequest.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/server/FileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FileRequest$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2core/server/FileRequest;
    .locals 14

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/tonyodev/fetch2core/server/FileRequest;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    if-nez v0, :cond_0

    move-object v0, v3

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    move-object v8, v3

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    move-object v9, v3

    .line 87
    :cond_2
    new-instance v10, Lcom/tonyodev/fetch2core/Extras;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    const-string v11, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.String>"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/HashMap;

    invoke-direct {v10, v3}, Lcom/tonyodev/fetch2core/Extras;-><init>(Ljava/util/Map;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    :goto_0
    move v13, v3

    move-object v3, v0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 80
    :goto_1
    invoke-direct/range {v1 .. v13}, Lcom/tonyodev/fetch2core/server/FileRequest;-><init>(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2core/Extras;IIZ)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/server/FileRequest$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2core/server/FileRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tonyodev/fetch2core/server/FileRequest;
    .locals 0

    .line 94
    new-array p1, p1, [Lcom/tonyodev/fetch2core/server/FileRequest;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/server/FileRequest$CREATOR;->newArray(I)[Lcom/tonyodev/fetch2core/server/FileRequest;

    move-result-object p1

    return-object p1
.end method
