.class public final Lcoil/decode/InterruptibleSource;
.super Lokio/ForwardingSource;
.source "InterruptibleSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final _state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final targetThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lokio/Source;)V
    .locals 2

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 59
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcoil/decode/InterruptibleSource;->targetThread:Ljava/lang/Thread;

    .line 63
    invoke-interface {p1, p0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 153
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, p1}, Lcoil/decode/InterruptibleSource;->invalidState(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 69
    :cond_2
    iget-object v1, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method private final invalidState(I)Ljava/lang/Void;
    .locals 1

    .line 153
    const-string v0, "Illegal state: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setInterruptible(Z)V
    .locals 5

    .line 88
    iget-object v0, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_0

    if-ne v1, v3, :cond_1

    .line 107
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    .line 110
    :cond_1
    invoke-direct {p0, v1}, Lcoil/decode/InterruptibleSource;->invalidState(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 96
    :cond_2
    iget-object v2, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object p1, p0, Lcoil/decode/InterruptibleSource;->targetThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 98
    iget-object p1, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_3
    xor-int/2addr v2, p1

    .line 93
    iget-object v3, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method


# virtual methods
.method public final clearInterrupt()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    .line 126
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    .line 129
    :cond_1
    invoke-direct {p0, v1}, Lcoil/decode/InterruptibleSource;->invalidState(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 119
    :cond_2
    iget-object v2, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcoil/decode/InterruptibleSource;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 5

    .line 136
    iget-object p1, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v0, v3, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0, v0}, Lcoil/decode/InterruptibleSource;->invalidState(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 145
    :cond_2
    iget-object v1, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    :goto_0
    return-void

    .line 139
    :cond_4
    iget-object v3, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object p1, p0, Lcoil/decode/InterruptibleSource;->targetThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 141
    iget-object p1, p0, Lcoil/decode/InterruptibleSource;->_state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 79
    :try_start_0
    invoke-direct {p0, v0}, Lcoil/decode/InterruptibleSource;->setInterruptible(Z)V

    .line 80
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-direct {p0, v1}, Lcoil/decode/InterruptibleSource;->setInterruptible(Z)V

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1}, Lcoil/decode/InterruptibleSource;->setInterruptible(Z)V

    throw p1
.end method
