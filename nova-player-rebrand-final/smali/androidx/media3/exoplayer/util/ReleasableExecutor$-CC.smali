.class public abstract synthetic Landroidx/media3/exoplayer/util/ReleasableExecutor$-CC;
.super Ljava/lang/Object;
.source "ReleasableExecutor.java"


# direct methods
.method public static from(Ljava/util/concurrent/Executor;Landroidx/media3/common/util/Consumer;)Landroidx/media3/exoplayer/util/ReleasableExecutor;
    .locals 1

    .line 46
    new-instance v0, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/media3/common/util/Consumer;)V

    return-object v0
.end method
