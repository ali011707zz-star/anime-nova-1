.class public final Lcom/facebook/ads/redexgen/X/D8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/D7;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/no;

.field public final A02:J

.field public final A03:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/D7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 33458
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/D8;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/no;J)V

    .line 33459
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/no;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/D7;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/no;",
            "J)V"
        }
    .end annotation

    .line 33460
    .local p1, "listenerAndHandlers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/facebook/ads/androidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33461
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33462
    iput p2, p0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    .line 33463
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/D8;->A01:Lcom/facebook/ads/redexgen/X/no;

    .line 33464
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/D8;->A02:J

    .line 33465
    return-void
.end method

.method private A00(J)J
    .locals 5

    .line 33466
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/5C;->A0P(J)J

    move-result-wide v3

    .line 33467
    .local v0, "mediaTimeMs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v3, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A02:J

    add-long/2addr v0, v3

    goto :goto_0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;I)V
    .locals 8
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "https://github.com/androidx/media/pull/1768"
    .end annotation

    .line 33468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D7;

    .line 33469
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/D7;->A01:Lcom/facebook/ads/redexgen/X/D9;

    .line 33470
    .local p0, "listener":Lcom/facebook/ads/redexgen/X/D9;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D7;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/D4;

    move-object v3, p0

    move v7, p3

    move-object v6, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/D4;-><init>(Lcom/facebook/ads/redexgen/X/D8;Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;I)V

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/5C;->A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 33471
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    .end local p0    # "listener":Lcom/facebook/ads/redexgen/X/D9;
    goto :goto_0

    .line 33472
    :cond_0
    return-void
.end method


# virtual methods
.method public final A02(ILcom/facebook/ads/redexgen/X/no;J)Lcom/facebook/ads/redexgen/X/D8;
    .locals 6

    .line 33473
    new-instance v0, Lcom/facebook/ads/redexgen/X/D8;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-wide v4, p3

    move-object v3, p2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/D8;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/no;J)V

    return-object v0
.end method

.method public final A03(ILcom/facebook/ads/redexgen/X/qI;ILjava/lang/Object;J)V
    .locals 12

    .line 33474
    new-instance v2, Lcom/facebook/ads/redexgen/X/Cs;

    .line 33475
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/D8;->A00(J)J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    move-object/from16 v7, p4

    move v6, p3

    move-object v5, p2

    move v4, p1

    invoke-direct/range {v2 .. v11}, Lcom/facebook/ads/redexgen/X/Cs;-><init>(IILcom/facebook/ads/redexgen/X/qI;ILjava/lang/Object;JJ)V

    .line 33476
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/D8;->A0C(Lcom/facebook/ads/redexgen/X/Cs;)V

    .line 33477
    return-void
.end method

.method public final A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/D9;)V
    .locals 2

    .line 33478
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33479
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33480
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/D7;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/D7;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/D9;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 33481
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Cq;IILcom/facebook/ads/redexgen/X/qI;ILjava/lang/Object;JJ)V
    .locals 13

    .line 33482
    move-object v0, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Cs;

    .line 33483
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/D8;->A00(J)J

    move-result-wide v9

    .line 33484
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/D8;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Cs;-><init>(IILcom/facebook/ads/redexgen/X/qI;ILjava/lang/Object;JJ)V

    .line 33485
    invoke-virtual {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/D8;->A09(Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;)V

    .line 33486
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Cq;IILcom/facebook/ads/redexgen/X/qI;ILjava/lang/Object;JJI)V
    .locals 13
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "https://github.com/androidx/media/pull/1768"
    .end annotation

    .line 33487
    move-object v0, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Cs;

    .line 33488
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/D8;->A00(J)J

    move-result-wide v9

    .line 33489
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/D8;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Cs;-><init>(IILcom/facebook/ads/redexgen/X/qI;ILjava/lang/Object;JJ)V

    .line 33490
    move/from16 v1, p11

    invoke-direct {v0, p1, v3, v1}, Lcom/facebook/ads/redexgen/X/D8;->A01(Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;I)V

    .line 33491
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Cq;IILcom/facebook/ads/redexgen/X/qI;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 13

    .line 33492
    move-object v0, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Cs;

    .line 33493
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/D8;->A00(J)J

    move-result-wide v9

    .line 33494
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/D8;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Cs;-><init>(IILcom/facebook/ads/redexgen/X/qI;ILjava/lang/Object;JJ)V

    .line 33495
    move/from16 v1, p12

    move-object/from16 v2, p11

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/D8;->A0A(Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/io/IOException;Z)V

    .line 33496
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/Cq;IILcom/facebook/ads/redexgen/X/qI;ILjava/lang/Object;JJLjava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .param p1    # Lcom/facebook/ads/redexgen/X/Cq;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    .line 33497
    move-object v0, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Cs;

    .line 33498
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/D8;->A00(J)J

    move-result-wide v9

    .line 33499
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/D8;->A00(J)J

    move-result-wide v11

    move-object/from16 v8, p6

    move/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v5, p3

    move v4, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Cs;-><init>(IILcom/facebook/ads/redexgen/X/qI;ILjava/lang/Object;JJ)V

    .line 33500
    move-object/from16 v1, p12

    move-object/from16 v2, p11

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/D8;->A0B(Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33501
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;)V
    .locals 4

    .line 33502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D7;

    .line 33503
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/D7;->A01:Lcom/facebook/ads/redexgen/X/D9;

    .line 33504
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/D9;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D7;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/D5;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/D8;Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 33505
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/D9;
    goto :goto_0

    .line 33506
    :cond_0
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/io/IOException;Z)V
    .locals 9

    .line 33507
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D7;

    .line 33508
    .local p0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/D7;->A01:Lcom/facebook/ads/redexgen/X/D9;

    .line 33509
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/D9;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D7;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/D0;

    move-object v3, p0

    move v8, p4

    move-object v7, p3

    move-object v6, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/D0;-><init>(Lcom/facebook/ads/redexgen/X/D8;Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/io/IOException;Z)V

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/5C;->A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 33510
    .end local p0    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    .end local p1    # "listener":Lcom/facebook/ads/redexgen/X/D9;
    goto :goto_0

    .line 33511
    :cond_0
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1    # Lcom/facebook/ads/redexgen/X/Cq;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/Cs;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    .line 33512
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D8;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D7;

    .line 33513
    .local p0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/D7;->A01:Lcom/facebook/ads/redexgen/X/D9;

    .line 33514
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/D9;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/D7;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/D1;

    move-object v3, p0

    move-object v8, p4

    move-object v7, p3

    move-object v6, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/D1;-><init>(Lcom/facebook/ads/redexgen/X/D8;Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/5C;->A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 33515
    .end local p0    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    .end local p1    # "listener":Lcom/facebook/ads/redexgen/X/D9;
    goto :goto_0

    .line 33516
    :cond_0
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/Cs;)V
    .locals 4

    .line 33517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/D7;

    .line 33518
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/D7;->A01:Lcom/facebook/ads/redexgen/X/D9;

    .line 33519
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/D9;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D7;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/D2;

    invoke-direct {v0, p0, v2, p1}, Lcom/facebook/ads/redexgen/X/D2;-><init>(Lcom/facebook/ads/redexgen/X/D8;Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cs;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 33520
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/D9;
    goto :goto_0

    .line 33521
    :cond_0
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/D9;)V
    .locals 3

    .line 33522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/D7;

    .line 33523
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/D7;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/D7;->A01:Lcom/facebook/ads/redexgen/X/D9;

    if-ne v0, p1, :cond_0

    .line 33524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33525
    :cond_1
    return-void
.end method

.method public final synthetic A0E(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;)V
    .locals 2

    .line 33526
    iget v1, p0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A01:Lcom/facebook/ads/redexgen/X/no;

    invoke-interface {p1, v1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/D9;->AEb(ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;)V

    return-void
.end method

.method public final synthetic A0F(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/io/IOException;Z)V
    .locals 7

    .line 33527
    iget v1, p0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D8;->A01:Lcom/facebook/ads/redexgen/X/no;

    move v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/D9;->AEg(ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final synthetic A0G(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 33528
    iget v1, p0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D8;->A01:Lcom/facebook/ads/redexgen/X/no;

    move-object v6, p5

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/D9;->AEd(ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/Cq;Lcom/facebook/ads/redexgen/X/Cs;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic A0H(Lcom/facebook/ads/redexgen/X/D9;Lcom/facebook/ads/redexgen/X/Cs;)V
    .locals 2

    .line 33529
    iget v1, p0, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D8;->A01:Lcom/facebook/ads/redexgen/X/no;

    invoke-interface {p1, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/D9;->ADk(ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/redexgen/X/Cs;)V

    return-void
.end method
