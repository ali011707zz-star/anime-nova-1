.class public final Lcom/google/common/util/concurrent/Futures$FutureCombiner;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FutureCombiner"
.end annotation


# instance fields
.field private final allMustSucceed:Z

.field private final futures:Lcom/google/common/collect/ImmutableList;


# direct methods
.method private constructor <init>(ZLcom/google/common/collect/ImmutableList;)V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->allMustSucceed:Z

    .line 662
    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->futures:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/Futures$1;)V
    .locals 0

    .line 655
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 712
    new-instance v0, Lcom/google/common/util/concurrent/CombinedFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->futures:Lcom/google/common/collect/ImmutableList;

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->allMustSucceed:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/common/util/concurrent/CombinedFuture;-><init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public run(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 732
    new-instance v0, Lcom/google/common/util/concurrent/Futures$FutureCombiner$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$FutureCombiner$1;-><init>(Lcom/google/common/util/concurrent/Futures$FutureCombiner;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
