.class public final Landroidx/lifecycle/AtomicReference;
.super Ljava/lang/Object;
.source "Lifecycle.jvm.kt"


# instance fields
.field private final base:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/AtomicReference;->base:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/lifecycle/AtomicReference;->base:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1, p2}, Landroidx/lifecycle/AtomicReference$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Landroidx/lifecycle/AtomicReference;->base:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
