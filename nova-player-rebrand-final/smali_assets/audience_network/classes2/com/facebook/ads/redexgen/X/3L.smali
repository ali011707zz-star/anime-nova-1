.class public final Lcom/facebook/ads/redexgen/X/3L;
.super Lcom/facebook/ads/redexgen/X/ED;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/EA;

.field public final A01:Lcom/facebook/ads/redexgen/X/E4;

.field public final A02:Lcom/facebook/ads/redexgen/X/E2;

.field public final A03:Lcom/facebook/ads/redexgen/X/E0;

.field public final A04:Lcom/facebook/ads/redexgen/X/fI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 10467
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/3L;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V

    .line 10468
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10469
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/3L;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    .line 10470
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 10471
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/ED;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    .line 10472
    new-instance v0, Lcom/facebook/ads/redexgen/X/3R;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3R;-><init>(Lcom/facebook/ads/redexgen/X/3L;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A03:Lcom/facebook/ads/redexgen/X/E0;

    .line 10473
    new-instance v0, Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3Q;-><init>(Lcom/facebook/ads/redexgen/X/3L;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A01:Lcom/facebook/ads/redexgen/X/E4;

    .line 10474
    new-instance v0, Lcom/facebook/ads/redexgen/X/3O;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3O;-><init>(Lcom/facebook/ads/redexgen/X/3L;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A02:Lcom/facebook/ads/redexgen/X/E2;

    .line 10475
    new-instance v0, Lcom/facebook/ads/redexgen/X/3M;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3M;-><init>(Lcom/facebook/ads/redexgen/X/3L;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A00:Lcom/facebook/ads/redexgen/X/EA;

    .line 10476
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3L;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 10477
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/facebook/ads/redexgen/X/fI;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/fI;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A04:Lcom/facebook/ads/redexgen/X/fI;

    .line 10478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A04:Lcom/facebook/ads/redexgen/X/fI;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/fI;->setChecked(Z)V

    .line 10479
    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10480
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3L;->setVisibility(I)V

    .line 10481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A04:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/3L;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10482
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/3L;->setClickable(Z)V

    .line 10483
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/3L;->setFocusable(Z)V

    .line 10484
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/3L;)Lcom/facebook/ads/redexgen/X/fI;
    .locals 0

    .line 10485
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/3L;->A04:Lcom/facebook/ads/redexgen/X/fI;

    return-object p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 10486
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ED;->A07()V

    .line 10487
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/3L;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A04:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/fI;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10489
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10490
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A03:Lcom/facebook/ads/redexgen/X/E0;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A00:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A01:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A02:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 10491
    :cond_0
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 10492
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10493
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A02:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A01:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A00:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A03:Lcom/facebook/ads/redexgen/X/E0;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 10494
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/3L;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A04:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/fI;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10496
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ED;->A08()V

    .line 10497
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 10498
    .local v0, "this":Lcom/facebook/ads/redexgen/X/3L;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v2

    .line 10499
    .local v1, "videoView":Lcom/facebook/ads/redexgen/X/Ek;
    if-nez v2, :cond_1

    .line 10500
    return-void

    .line 10501
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_2

    .line 10502
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_2

    .line 10503
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_3

    .line 10504
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/3L;
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A04:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0xb

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    goto :goto_0

    .line 10505
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_4

    .line 10506
    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0i(ZI)V

    .line 10507
    :cond_4
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "videoView":Lcom/facebook/ads/redexgen/X/Ek;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setPauseAccessibilityLabel(Ljava/lang/String;)V
    .locals 1

    .line 10508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A04:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/fI;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 10509
    return-void
.end method

.method public setPlayAccessibilityLabel(Ljava/lang/String;)V
    .locals 1

    .line 10510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3L;->A04:Lcom/facebook/ads/redexgen/X/fI;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/fI;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 10511
    return-void
.end method
