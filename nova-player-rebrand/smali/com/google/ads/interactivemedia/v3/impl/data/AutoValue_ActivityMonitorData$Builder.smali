.class final Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private appState:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private nativeTime:J

.field private nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

.field private nativeViewHidden:Z

.field private nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

.field private nativeVolume:D

.field private queryId:Ljava/lang/String;

.field private set$0:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appState(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->appState:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null appState"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData;
    .locals 14

    .line 1
    iget-byte v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->set$0:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->queryId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->eventId:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->appState:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    if-eqz v11, :cond_1

    iget-object v12, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    if-nez v12, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeTime:J

    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeVolume:D

    iget-boolean v10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeViewHidden:Z

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JDZLcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;[B)V

    return-object v2

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->queryId:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " queryId"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->eventId:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " eventId"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->appState:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, " appState"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_5

    const-string v1, " nativeTime"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    const-string v1, " nativeVolume"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->set$0:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_7

    const-string v1, " nativeViewHidden"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    if-nez v1, :cond_8

    const-string v1, " nativeViewBounds"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    if-nez v1, :cond_9

    const-string v1, " nativeViewVisibleBounds"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public eventId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->eventId:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null eventId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nativeTime(J)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeTime:J

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->set$0:B

    return-object p0
.end method

.method public nativeViewBounds(Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeViewBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null nativeViewBounds"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nativeViewHidden(Z)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeViewHidden:Z

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->set$0:B

    return-object p0
.end method

.method public nativeViewVisibleBounds(Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeViewVisibleBounds:Lcom/google/ads/interactivemedia/v3/impl/data/BoundingRectData;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null nativeViewVisibleBounds"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nativeVolume(D)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->nativeVolume:D

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->set$0:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->set$0:B

    return-object p0
.end method

.method public queryId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ActivityMonitorData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_ActivityMonitorData$Builder;->queryId:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null queryId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
