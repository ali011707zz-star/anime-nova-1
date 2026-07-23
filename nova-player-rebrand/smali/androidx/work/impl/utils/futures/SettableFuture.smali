.class public final Landroidx/work/impl/utils/futures/SettableFuture;
.super Landroidx/work/impl/utils/futures/AbstractFuture;
.source "SettableFuture.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroidx/work/impl/utils/futures/AbstractFuture;-><init>()V

    return-void
.end method

.method public static create()Landroidx/work/impl/utils/futures/SettableFuture;
    .locals 1

    .line 46
    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v0}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroidx/work/impl/utils/futures/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroidx/work/impl/utils/futures/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/work/impl/utils/futures/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result p1

    return p1
.end method
