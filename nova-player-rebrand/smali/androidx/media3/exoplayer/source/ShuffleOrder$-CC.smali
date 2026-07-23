.class public abstract synthetic Landroidx/media3/exoplayer/source/ShuffleOrder$-CC;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"


# direct methods
.method public static $default$cloneAndMove(Landroidx/media3/exoplayer/source/ShuffleOrder;III)Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 0

    .line 284
    return-object p0
.end method

.method public static $default$cloneAndSet(Landroidx/media3/exoplayer/source/ShuffleOrder;II)Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 0

    .line 303
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object p0

    return-object p0
.end method
