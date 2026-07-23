.class public final Lcom/facebook/ads/redexgen/X/UM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/ads/redexgen/X/UN;",
        "E:",
        "Lcom/facebook/ads/redexgen/X/UL;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67595
    .local p0, "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67596
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A00:Ljava/util/Map;

    .line 67597
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:Ljava/util/Queue;

    .line 67598
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 67599
    .local p3, "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local p4, "event":Lcom/facebook/ads/redexgen/X/UL;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A00:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 67600
    return-void

    .line 67601
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UM;->A00:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 67602
    .local v0, "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-nez v1, :cond_1

    .line 67603
    return-void

    .line 67604
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/UM;->A01(Ljava/util/List;)V

    .line 67605
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67606
    return-void

    .line 67607
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67608
    .local v1, "immutableSubscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 67609
    .local p0, "subscriberReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/UN;

    .line 67610
    .local p1, "subscriber":Lcom/facebook/ads/redexgen/X/UN;, "TT;"
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/UN;->A00(Lcom/facebook/ads/redexgen/X/UL;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67611
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/UN;->A03(Lcom/facebook/ads/redexgen/X/UL;)V

    goto :goto_0

    .line 67612
    :cond_4
    return-void
.end method

.method private A01(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 67613
    .local p0, "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local p1, "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-eqz p1, :cond_2

    .line 67614
    const/4 v3, 0x0

    .line 67615
    .local v0, "writePtr":I
    const/4 v2, 0x0

    .local v1, "readPtr":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 67616
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 67617
    .local v2, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67618
    add-int/lit8 v0, v3, 0x1

    .end local v0    # "writePtr":I
    .local v3, "writePtr":I
    invoke-interface {p1, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, v0

    .line 67619
    .end local v2    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    .end local v3    # "writePtr":I
    .restart local v0    # "writePtr":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67620
    .end local v1    # "readPtr":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v1, "ix":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 67621
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 67622
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 67623
    .end local v0    # "writePtr":I
    .end local v1    # "ix":I
    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized A02(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .local p1, "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local p2, "event":Lcom/facebook/ads/redexgen/X/UL;, "TE;"
    monitor-enter p0

    .line 67624
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 67626
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UL;

    .line 67628
    .local v0, "currentEvent":Lcom/facebook/ads/redexgen/X/UL;, "TE;"
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/UM;->A00(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 67629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 67630
    .end local p1    # "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67631
    :cond_1
    monitor-exit p0

    return-void

    .line 67632
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized A03([Lcom/facebook/ads/redexgen/X/UN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local p1, "subscribers":[Lcom/facebook/ads/redexgen/X/UN;, "[TT;"
    monitor-enter p0

    .line 67633
    if-nez p1, :cond_0

    .line 67634
    monitor-exit p0

    return-void

    .line 67635
    :cond_0
    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 67636
    .local v2, "subscriber":Lcom/facebook/ads/redexgen/X/UN;, "TT;"
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/UM;->A05(Lcom/facebook/ads/redexgen/X/UN;)Z

    .line 67637
    .end local v2    # "subscriber":Lcom/facebook/ads/redexgen/X/UN;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67638
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 67639
    .end local p1    # "subscribers":[Lcom/facebook/ads/redexgen/X/UN;, "[TT;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized A04([Lcom/facebook/ads/redexgen/X/UN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local p1, "subscribers":[Lcom/facebook/ads/redexgen/X/UN;, "[TT;"
    monitor-enter p0

    .line 67640
    if-nez p1, :cond_0

    .line 67641
    monitor-exit p0

    return-void

    .line 67642
    :cond_0
    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 67643
    .local v2, "subscriber":Lcom/facebook/ads/redexgen/X/UN;, "TT;"
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/UM;->A06(Lcom/facebook/ads/redexgen/X/UN;)Z

    .line 67644
    .end local v2    # "subscriber":Lcom/facebook/ads/redexgen/X/UN;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67645
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 67646
    .end local p1    # "subscribers":[Lcom/facebook/ads/redexgen/X/UN;, "[TT;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A05(Lcom/facebook/ads/redexgen/X/UN;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .local p1, "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local p2, "subscriber":Lcom/facebook/ads/redexgen/X/UN;, "TT;"
    monitor-enter p0

    .line 67647
    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 67648
    monitor-exit p0

    return v4

    .line 67649
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UN;->A01()Ljava/lang/Class;

    move-result-object v2

    .line 67650
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A00:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67651
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67652
    .local v2, "subscriberSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A00:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67653
    .end local v2    # "subscriberSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local p1    # "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A00:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 67654
    .local v2, "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/UM;->A01(Ljava/util/List;)V

    .line 67655
    const/4 v2, 0x0

    .local v3, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v4, "len":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 67656
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    goto :goto_1

    .line 67657
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67658
    :goto_1
    monitor-exit p0

    return v4

    .line 67659
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 67660
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .end local v2    # "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06(Lcom/facebook/ads/redexgen/X/UN;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local p1, "subscriber":Lcom/facebook/ads/redexgen/X/UN;, "TT;"
    monitor-enter p0

    .line 67661
    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 67662
    monitor-exit p0

    return v4

    .line 67663
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UM;->A00:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UN;->A01()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 67664
    .local v1, "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-nez v3, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67665
    monitor-exit p0

    return v4

    .line 67666
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v3, "len":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 67667
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 67668
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_1

    .line 67669
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UM;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67670
    :goto_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 67671
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_3
    monitor-exit p0

    return v4

    .line 67672
    .end local v1    # "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local p1    # "subscriber":Lcom/facebook/ads/redexgen/X/UN;, "TT;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
