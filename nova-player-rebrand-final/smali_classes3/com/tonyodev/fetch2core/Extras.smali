.class public Lcom/tonyodev/fetch2core/Extras;
.super Ljava/lang/Object;
.source "Extras.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2core/Extras$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/tonyodev/fetch2core/Extras$CREATOR;

.field private static final emptyExtras:Lcom/tonyodev/fetch2core/Extras;


# instance fields
.field private final data:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tonyodev/fetch2core/Extras$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2core/Extras$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2core/Extras;->CREATOR:Lcom/tonyodev/fetch2core/Extras$CREATOR;

    .line 186
    new-instance v0, Lcom/tonyodev/fetch2core/Extras;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2core/Extras;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/tonyodev/fetch2core/Extras;->emptyExtras:Lcom/tonyodev/fetch2core/Extras;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tonyodev/fetch2core/Extras;->data:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getEmptyExtras$cp()Lcom/tonyodev/fetch2core/Extras;
    .locals 1

    .line 18
    sget-object v0, Lcom/tonyodev/fetch2core/Extras;->emptyExtras:Lcom/tonyodev/fetch2core/Extras;

    return-object v0
.end method


# virtual methods
.method public copy()Lcom/tonyodev/fetch2core/Extras;
    .locals 2

    .line 122
    new-instance v0, Lcom/tonyodev/fetch2core/Extras;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/Extras;->data:Ljava/util/Map;

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2core/Extras;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 165
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 166
    :cond_2
    const-string v0, "null cannot be cast to non-null type com.tonyodev.fetch2core.Extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2core/Extras;

    .line 167
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Extras;->data:Ljava/util/Map;

    iget-object p1, p1, Lcom/tonyodev/fetch2core/Extras;->data:Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getMap()Ljava/util/Map;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Extras;->data:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Extras;->data:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/tonyodev/fetch2core/Extras;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final toJSONString()Ljava/lang/String;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/Extras;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "{}"

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/Extras;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final toMutableExtras()Lcom/tonyodev/fetch2core/MutableExtras;
    .locals 2

    .line 93
    new-instance v0, Lcom/tonyodev/fetch2core/MutableExtras;

    iget-object v1, p0, Lcom/tonyodev/fetch2core/Extras;->data:Ljava/util/Map;

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2core/MutableExtras;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/tonyodev/fetch2core/Extras;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tonyodev/fetch2core/Extras;->data:Ljava/util/Map;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
