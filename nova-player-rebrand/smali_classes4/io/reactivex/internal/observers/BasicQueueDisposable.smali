.class public abstract Lio/reactivex/internal/observers/BasicQueueDisposable;
.super Ljava/lang/Object;
.source "BasicQueueDisposable.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/QueueDisposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
