.class public final Lcom/tonyodev/fetch2core/server/FileRequest;
.super Ljava/lang/Object;
.source "FileRequest.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2core/server/FileRequest$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/tonyodev/fetch2core/server/FileRequest$CREATOR;


# instance fields
.field private final authorization:Ljava/lang/String;

.field private final client:Ljava/lang/String;

.field private final extras:Lcom/tonyodev/fetch2core/Extras;

.field private final fileResourceId:Ljava/lang/String;

.field private final page:I

.field private final persistConnection:Z

.field private final rangeEnd:J

.field private final rangeStart:J

.field private final size:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/tonyodev/fetch2core/server/FileRequest$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tonyodev/fetch2core/server/FileRequest$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tonyodev/fetch2core/server/FileRequest;->CREATOR:Lcom/tonyodev/fetch2core/server/FileRequest$CREATOR;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2core/Extras;IIZ)V
    .locals 1

    const-string v0, "fileResourceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorization"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->type:I

    .line 13
    iput-object p2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->fileResourceId:Ljava/lang/String;

    .line 14
    iput-wide p3, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeStart:J

    .line 15
    iput-wide p5, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeEnd:J

    .line 16
    iput-object p7, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->authorization:Ljava/lang/String;

    .line 17
    iput-object p8, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->client:Ljava/lang/String;

    .line 18
    iput-object p9, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    .line 19
    iput p10, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->page:I

    .line 20
    iput p11, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->size:I

    .line 21
    iput-boolean p12, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->persistConnection:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2core/Extras;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    .line 13
    const-string p2, "-1"

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    const-wide/16 p3, 0x0

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    const-wide/16 p5, -0x1

    :cond_3
    and-int/lit8 p14, p13, 0x10

    .line 12
    const-string v0, ""

    if-eqz p14, :cond_4

    move-object p7, v0

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    move-object p8, v0

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    .line 18
    sget-object p9, Lcom/tonyodev/fetch2core/Extras;->CREATOR:Lcom/tonyodev/fetch2core/Extras$CREATOR;

    invoke-virtual {p9}, Lcom/tonyodev/fetch2core/Extras$CREATOR;->getEmptyExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object p9

    :cond_6
    and-int/lit16 p14, p13, 0x80

    const/4 v0, 0x0

    if-eqz p14, :cond_7

    move p10, v0

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    move p11, v0

    :cond_8
    and-int/lit16 p13, p13, 0x200

    if-eqz p13, :cond_9

    const/4 p12, 0x1

    :cond_9
    move p13, p11

    move p14, p12

    move-object p11, p9

    move p12, p10

    move-object p9, p7

    move-object p10, p8

    move-wide p7, p5

    move-wide p5, p3

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 12
    invoke-direct/range {p2 .. p14}, Lcom/tonyodev/fetch2core/server/FileRequest;-><init>(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/tonyodev/fetch2core/Extras;IIZ)V

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

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tonyodev/fetch2core/server/FileRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tonyodev/fetch2core/server/FileRequest;

    iget v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->type:I

    iget v3, p1, Lcom/tonyodev/fetch2core/server/FileRequest;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->fileResourceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/tonyodev/fetch2core/server/FileRequest;->fileResourceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeStart:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeStart:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeEnd:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeEnd:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->authorization:Ljava/lang/String;

    iget-object v3, p1, Lcom/tonyodev/fetch2core/server/FileRequest;->authorization:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->client:Ljava/lang/String;

    iget-object v3, p1, Lcom/tonyodev/fetch2core/server/FileRequest;->client:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    iget-object v3, p1, Lcom/tonyodev/fetch2core/server/FileRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->page:I

    iget v3, p1, Lcom/tonyodev/fetch2core/server/FileRequest;->page:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->size:I

    iget v3, p1, Lcom/tonyodev/fetch2core/server/FileRequest;->size:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->persistConnection:Z

    iget-boolean p1, p1, Lcom/tonyodev/fetch2core/server/FileRequest;->persistConnection:Z

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getToJsonString()Ljava/lang/String;
    .locals 5

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "\"Type\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, "\"FileResourceId\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->fileResourceId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    const-string v2, "\"Range-Start\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    const-string v2, "\"Range-End\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "\"Authorization\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->authorization:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "\"Client\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->client:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "\"Extras\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    invoke-virtual {v2}, Lcom/tonyodev/fetch2core/Extras;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "\"Page\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->page:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "\"Size\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "\"Persist-Connection\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->persistConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget v0, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->fileResourceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeStart:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeEnd:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->authorization:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->client:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Extras;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->page:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->size:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->persistConnection:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 0
    iget v0, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->type:I

    iget-object v1, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->fileResourceId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeStart:J

    iget-wide v4, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeEnd:J

    iget-object v6, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->authorization:Ljava/lang/String;

    iget-object v7, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->client:Ljava/lang/String;

    iget-object v8, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    iget v9, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->page:I

    iget v10, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->size:I

    iget-boolean v11, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->persistConnection:Z

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileRequest(type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fileResourceId="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rangeStart="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", rangeEnd="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", authorization="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", client="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", extras="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", page="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", persistConnection="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget p2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object p2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->fileResourceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v0, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->rangeEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-object p2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->authorization:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->client:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->extras:Lcom/tonyodev/fetch2core/Extras;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Extras;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 49
    iget p2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->page:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget p2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean p2, p0, Lcom/tonyodev/fetch2core/server/FileRequest;->persistConnection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
