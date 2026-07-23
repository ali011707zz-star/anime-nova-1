.class public final Lcom/tonyodev/fetch2core/server/FileResponse$CREATOR;
.super Ljava/lang/Object;
.source "FileResponse.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/server/FileResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/server/FileResponse$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2core/server/FileResponse;
    .locals 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/tonyodev/fetch2core/server/FileResponse;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    if-nez v0, :cond_0

    move-object v0, v9

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move-object v10, v9

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object v10, p1

    goto :goto_0

    .line 65
    :goto_1
    invoke-direct/range {v1 .. v10}, Lcom/tonyodev/fetch2core/server/FileResponse;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/server/FileResponse$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2core/server/FileResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tonyodev/fetch2core/server/FileResponse;
    .locals 0

    .line 76
    new-array p1, p1, [Lcom/tonyodev/fetch2core/server/FileResponse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/server/FileResponse$CREATOR;->newArray(I)[Lcom/tonyodev/fetch2core/server/FileResponse;

    move-result-object p1

    return-object p1
.end method
