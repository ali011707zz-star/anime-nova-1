.class public Lcom/tonyodev/fetch2/Request;
.super Lcom/tonyodev/fetch2/RequestInfo;
.source "Request.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2/Request$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/tonyodev/fetch2/Request$CREATOR;


# instance fields
.field private final file:Ljava/lang/String;

.field private final id:I

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/tonyodev/fetch2/Request$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2/Request$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2/Request;->CREATOR:Lcom/tonyodev/fetch2/Request$CREATOR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/tonyodev/fetch2/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/tonyodev/fetch2/RequestInfo;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tonyodev/fetch2/Request;->url:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/tonyodev/fetch2/Request;->file:Ljava/lang/String;

    .line 32
    invoke-static {p1, p2}, Lcom/tonyodev/fetch2core/FetchCoreUtils;->getUniqueId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tonyodev/fetch2/Request;->id:I

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
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 43
    :cond_2
    invoke-super {p0, p1}, Lcom/tonyodev/fetch2/RequestInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 44
    :cond_3
    const-string v1, "null cannot be cast to non-null type com.tonyodev.fetch2.Request"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2/Request;

    .line 45
    iget v1, p0, Lcom/tonyodev/fetch2/Request;->id:I

    iget v3, p1, Lcom/tonyodev/fetch2/Request;->id:I

    if-eq v1, v3, :cond_4

    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/tonyodev/fetch2/Request;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/tonyodev/fetch2/Request;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 47
    :cond_5
    iget-object v1, p0, Lcom/tonyodev/fetch2/Request;->file:Ljava/lang/String;

    iget-object p1, p1, Lcom/tonyodev/fetch2/Request;->file:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFile()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tonyodev/fetch2/Request;->file:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/tonyodev/fetch2/Request;->id:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tonyodev/fetch2/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/tonyodev/fetch2/RequestInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget v1, p0, Lcom/tonyodev/fetch2/Request;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/tonyodev/fetch2/Request;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 55
    iget-object v1, p0, Lcom/tonyodev/fetch2/Request;->file:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 60
    iget-object v0, p0, Lcom/tonyodev/fetch2/Request;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/tonyodev/fetch2/Request;->file:Ljava/lang/String;

    iget v2, p0, Lcom/tonyodev/fetch2/Request;->id:I

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getGroupId()I

    move-result v3

    .line 61
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Request(url=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', file=\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', id="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", groupId="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", headers="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkType="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", tag="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/tonyodev/fetch2/Request;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/tonyodev/fetch2/Request;->file:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getGroupId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 70
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/Priority;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/NetworkType;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tonyodev/fetch2/EnqueueAction;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getDownloadOnEnqueue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Extras;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 76
    invoke-virtual {p0}, Lcom/tonyodev/fetch2/RequestInfo;->getAutoRetryMaxAttempts()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
