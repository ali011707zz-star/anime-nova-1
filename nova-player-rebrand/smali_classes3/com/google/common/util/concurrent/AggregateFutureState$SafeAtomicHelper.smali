.class final Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;
.super Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
.source "AggregateFutureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AggregateFutureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeAtomicHelper"
.end annotation


# instance fields
.field final remainingCountUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field final seenExceptionsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;-><init>(Lcom/google/common/util/concurrent/AggregateFutureState$1;)V

    .line 172
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;->seenExceptionsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 173
    iput-object p2, p0, Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;->remainingCountUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method


# virtual methods
.method compareAndSetSeenExceptions(Lcom/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;->seenExceptionsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method decrementAndGetRemainingCount(Lcom/google/common/util/concurrent/AggregateFutureState;)I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;->remainingCountUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
