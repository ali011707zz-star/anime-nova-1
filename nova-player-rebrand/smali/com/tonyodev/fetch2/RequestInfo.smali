.class public abstract Lcom/tonyodev/fetch2/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoRetryMaxAttempts:I

.field private downloadOnEnqueue:Z

.field private enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

.field private extras:Lcom/tonyodev/fetch2core/Extras;

.field private groupId:I

.field private final headers:Ljava/util/Map;

.field private identifier:J

.field private networkType:Lcom/tonyodev/fetch2/NetworkType;

.field private priority:Lcom/tonyodev/fetch2/Priority;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    .line 27
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultPriority()Lcom/tonyodev/fetch2/Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    .line 31
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultNetworkType()Lcom/tonyodev/fetch2/NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    .line 48
    invoke-static {}, Lcom/tonyodev/fetch2/util/FetchDefaults;->getDefaultEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    .line 77
    sget-object v0, Lcom/tonyodev/fetch2core/Extras;->CREATOR:Lcom/tonyodev/fetch2core/Extras$CREATOR;

    invoke-virtual {v0}, Lcom/tonyodev/fetch2core/Extras$CREATOR;->getEmptyExtras()Lcom/tonyodev/fetch2core/Extras;

    move-result-object v0

    iput-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    return-void
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 84
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

    .line 85
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.tonyodev.fetch2.RequestInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tonyodev/fetch2/RequestInfo;

    .line 86
    iget-wide v3, p0, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    iget-wide v5, p1, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 87
    :cond_3
    iget v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    iget v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    if-eq v1, v3, :cond_4

    return v2

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 89
    :cond_5
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    if-eq v1, v3, :cond_6

    return v2

    .line 90
    :cond_6
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    if-eq v1, v3, :cond_7

    return v2

    .line 91
    :cond_7
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 92
    :cond_8
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    if-eq v1, v3, :cond_9

    return v2

    .line 93
    :cond_9
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    iget-boolean v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 94
    :cond_a
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    iget-object v3, p1, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 95
    :cond_b
    iget v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    iget p1, p1, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAutoRetryMaxAttempts()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    return v0
.end method

.method public final getDownloadOnEnqueue()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    return v0
.end method

.method public final getEnqueueAction()Lcom/tonyodev/fetch2/EnqueueAction;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    return-object v0
.end method

.method public final getExtras()Lcom/tonyodev/fetch2core/Extras;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    return v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getIdentifier()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    return-wide v0
.end method

.method public final getNetworkType()Lcom/tonyodev/fetch2/NetworkType;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    return-object v0
.end method

.method public final getPriority()Lcom/tonyodev/fetch2/Priority;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->headers:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-boolean v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-object v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    invoke-virtual {v1}, Lcom/tonyodev/fetch2core/Extras;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget v1, p0, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAutoRetryMaxAttempts(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 69
    iput p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->autoRetryMaxAttempts:I

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The maximum number of attempts has to be greater than -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDownloadOnEnqueue(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->downloadOnEnqueue:Z

    return-void
.end method

.method public final setEnqueueAction(Lcom/tonyodev/fetch2/EnqueueAction;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->enqueueAction:Lcom/tonyodev/fetch2/EnqueueAction;

    return-void
.end method

.method public final setExtras(Lcom/tonyodev/fetch2core/Extras;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/tonyodev/fetch2core/Extras;->copy()Lcom/tonyodev/fetch2core/Extras;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->extras:Lcom/tonyodev/fetch2core/Extras;

    return-void
.end method

.method public final setGroupId(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->groupId:I

    return-void
.end method

.method public final setIdentifier(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->identifier:J

    return-void
.end method

.method public final setNetworkType(Lcom/tonyodev/fetch2/NetworkType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->networkType:Lcom/tonyodev/fetch2/NetworkType;

    return-void
.end method

.method public final setPriority(Lcom/tonyodev/fetch2/Priority;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->priority:Lcom/tonyodev/fetch2/Priority;

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tonyodev/fetch2/RequestInfo;->tag:Ljava/lang/String;

    return-void
.end method
