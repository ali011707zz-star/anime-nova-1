.class public final Lcom/tonyodev/fetch2core/Extras$CREATOR;
.super Ljava/lang/Object;
.source "Extras.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch2core/Extras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/tonyodev/fetch2core/Extras$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2core/Extras;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/tonyodev/fetch2core/Extras;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type java.util.HashMap<kotlin.String, kotlin.String>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Lcom/tonyodev/fetch2core/Extras;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/Extras$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/tonyodev/fetch2core/Extras;

    move-result-object p1

    return-object p1
.end method

.method public final getEmptyExtras()Lcom/tonyodev/fetch2core/Extras;
    .locals 1

    .line 185
    invoke-static {}, Lcom/tonyodev/fetch2core/Extras;->access$getEmptyExtras$cp()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tonyodev/fetch2core/Extras;
    .locals 0

    .line 182
    new-array p1, p1, [Lcom/tonyodev/fetch2core/Extras;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/tonyodev/fetch2core/Extras$CREATOR;->newArray(I)[Lcom/tonyodev/fetch2core/Extras;

    move-result-object p1

    return-object p1
.end method
