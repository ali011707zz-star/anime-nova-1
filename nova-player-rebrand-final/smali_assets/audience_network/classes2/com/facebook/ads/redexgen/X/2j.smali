.class public final Lcom/facebook/ads/redexgen/X/2j;
.super Lcom/facebook/ads/redexgen/X/Q9;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/T4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewabilityCheckRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Q9<",
        "Lcom/facebook/ads/redexgen/X/fp;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/T4;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/gi;

.field public A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 9418
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Ljava/lang/Object;)V

    .line 9419
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Lcom/facebook/ads/redexgen/X/gi;

    .line 9420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A01:Z

    .line 9421
    return-void
.end method

.method private A00(I)V
    .locals 1

    .line 9422
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A01:Z

    if-nez v0, :cond_0

    .line 9423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->A3v(I)V

    .line 9424
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A01:Z

    .line 9425
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 11

    .line 9426
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Q9;->A08()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/fp;

    .line 9427
    .local v0, "checker":Lcom/facebook/ads/redexgen/X/fp;
    const/4 v9, 0x0

    if-nez v4, :cond_0

    .line 9428
    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/2j;->A00(I)V

    .line 9429
    return-void

    .line 9430
    :cond_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0C(Lcom/facebook/ads/redexgen/X/fp;)Landroid/view/View;

    move-result-object v3

    .line 9431
    .local v2, "adView":Landroid/view/View;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0I(Lcom/facebook/ads/redexgen/X/fp;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/fo;

    .line 9432
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/fo;
    const/4 v6, 0x1

    if-nez v3, :cond_4

    const/4 v1, 0x1

    .line 9433
    .local v5, "viewIsNull":Z
    :goto_0
    if-nez v1, :cond_1

    if-nez v2, :cond_5

    .line 9434
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :cond_1
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0P(Lcom/facebook/ads/redexgen/X/fp;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9435
    if-eqz v1, :cond_3

    .line 9436
    :goto_1
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/2j;->A00(I)V

    .line 9437
    :cond_2
    return-void

    .line 9438
    :cond_3
    const/4 v6, 0x2

    goto :goto_1

    .line 9439
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 9440
    :cond_5
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A03(Lcom/facebook/ads/redexgen/X/fp;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/fp;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/redexgen/X/fq;

    move-result-object v5

    .line 9441
    .local v6, "viewabilityResult":Lcom/facebook/ads/redexgen/X/fq;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/fq;->A04()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9442
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A05(Lcom/facebook/ads/redexgen/X/fp;)I

    .line 9443
    :goto_2
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A04(Lcom/facebook/ads/redexgen/X/fp;)I

    move-result v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A06(Lcom/facebook/ads/redexgen/X/fp;)I

    move-result v0

    if-le v1, v0, :cond_9

    const/4 v10, 0x1

    .line 9444
    .local v7, "isViewable":Z
    :goto_3
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0F(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/fq;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0F(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fq;->A04()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v8, 0x1

    .line 9445
    .local v8, "wasViewable":Z
    :goto_4
    if-nez v10, :cond_6

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/fq;->A04()Z

    move-result v0

    if-nez v0, :cond_7

    .line 9446
    :cond_6
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/fp;->A0G(Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/fq;)Lcom/facebook/ads/redexgen/X/fq;

    .line 9447
    :cond_7
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/fq;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 9448
    .local v9, "resultCode":Ljava/lang/String;
    monitor-enter v4

    goto :goto_5

    .line 9449
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 9450
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 9451
    :cond_a
    invoke-static {v4, v9}, Lcom/facebook/ads/redexgen/X/fp;->A07(Lcom/facebook/ads/redexgen/X/fp;I)I

    goto :goto_2

    .line 9452
    :goto_5
    :try_start_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0J(Lcom/facebook/ads/redexgen/X/fp;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0J(Lcom/facebook/ads/redexgen/X/fp;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 9453
    .local v1, "historicalCount":I
    :cond_b
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0J(Lcom/facebook/ads/redexgen/X/fp;)Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v0, v9, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9454
    .end local v1    # "historicalCount":I
    monitor-exit v4

    .line 9455
    if-eqz v10, :cond_e

    if-nez v8, :cond_e
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9456
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/2j;->A01:Z

    .line 9457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/fp;->A0A(Lcom/facebook/ads/redexgen/X/fp;J)J

    .line 9458
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0P(Lcom/facebook/ads/redexgen/X/fp;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3w()V

    .line 9460
    :cond_c
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/fo;->A03()V

    .line 9461
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVisibleAnimation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 9462
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 9463
    .local v1, "animation":Landroid/view/animation/Animation;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 9464
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9465
    .end local v1    # "animation":Landroid/view/animation/Animation;
    :cond_d
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0Q(Lcom/facebook/ads/redexgen/X/fp;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 9466
    return-void

    .line 9467
    :cond_e
    if-nez v10, :cond_12

    if-eqz v8, :cond_12

    .line 9468
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/2j;->A01:Z

    .line 9469
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0P(Lcom/facebook/ads/redexgen/X/fp;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 9470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/fq;->A02()Lcom/facebook/ads/redexgen/X/Lr;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3S(Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 9471
    :cond_f
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/fo;->A00()V

    .line 9472
    :cond_10
    :goto_6
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0O(Lcom/facebook/ads/redexgen/X/fp;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0D(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/Wc;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 9473
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0B(Lcom/facebook/ads/redexgen/X/fp;)Landroid/os/Handler;

    move-result-object v3

    .line 9474
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0D(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/Wc;

    move-result-object v2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A02(Lcom/facebook/ads/redexgen/X/fp;)I

    move-result v0

    int-to-long v0, v0

    .line 9475
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9476
    :cond_11
    return-void

    .line 9477
    :cond_12
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/fo;->A02()V

    .line 9478
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A01:Z

    if-nez v0, :cond_13

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/fp;->A0P(Lcom/facebook/ads/redexgen/X/fp;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 9479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/fq;->A02()Lcom/facebook/ads/redexgen/X/Lr;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3u(Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 9480
    :cond_13
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/2j;->A01:Z

    goto :goto_6

    .line 9481
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final A6m()Lcom/facebook/ads/redexgen/X/gi;
    .locals 1

    .line 9482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Lcom/facebook/ads/redexgen/X/gi;

    return-object v0
.end method
