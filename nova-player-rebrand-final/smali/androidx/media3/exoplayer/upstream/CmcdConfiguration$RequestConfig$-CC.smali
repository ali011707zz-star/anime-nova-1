.class public abstract synthetic Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig$-CC;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# direct methods
.method public static $default$getCustomData(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 0

    .line 211
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static $default$getRequestedMaximumThroughputKbps(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;I)I
    .locals 0

    .line 222
    const p0, -0x7fffffff

    return p0
.end method

.method public static $default$isKeyAllowed(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;Ljava/lang/String;)Z
    .locals 0

    .line 171
    const/4 p0, 0x1

    return p0
.end method
