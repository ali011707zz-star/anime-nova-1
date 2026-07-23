.class public final Lcom/facebook/ads/redexgen/X/F7;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ee;


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public final A00:Lcom/facebook/ads/NativeBannerAd;

.field public final A01:Lcom/facebook/ads/redexgen/X/gi;

.field public final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 728
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/F7;->A04:I

    .line 729
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/F7;->A03:I

    .line 730
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x42580000    # 54.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/F7;->A05:I

    .line 731
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/F7;->A07:I

    .line 732
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/F7;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Vd;Lcom/facebook/ads/redexgen/X/Ve;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;Lcom/facebook/ads/redexgen/X/a5;)V
    .locals 16

    .line 35475
    move-object/from16 v4, p0

    move-object v4, v4

    move-object/from16 v11, p1

    invoke-direct {v4, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/F7;->A02:Ljava/util/ArrayList;

    .line 35477
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/NativeBannerAd;

    .line 35478
    iput-object v11, v4, Lcom/facebook/ads/redexgen/X/F7;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 35479
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/F7;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35480
    .local v11, "commonLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35481
    move-object/from16 v13, p4

    invoke-static {v13}, Lcom/facebook/ads/redexgen/X/F7;->A00(Lcom/facebook/ads/redexgen/X/Ve;)I

    move-result v1

    .line 35482
    .local v13, "iconSize":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/F7;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v6, Lcom/facebook/ads/redexgen/X/bl;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/bl;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 35483
    .local v14, "iconContainer":Lcom/facebook/ads/redexgen/X/bl;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/bl;->setFullCircleCorners(Z)V

    .line 35484
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35485
    .local v9, "iconContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v5, p5

    invoke-virtual {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/bl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35486
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/F7;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35487
    .local v7, "iconParentContainer":Landroid/widget/RelativeLayout;
    const/4 v1, -0x2

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35488
    .local v5, "iconParentContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 35489
    invoke-virtual {v9, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35490
    move-object/from16 v10, p7

    if-eqz v10, :cond_0

    .line 35491
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35492
    .local v4, "adChoiceV2LayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35493
    sget v6, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0A:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A00:I

    invoke-virtual {v7, v6, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 35494
    invoke-virtual {v9, v10, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35495
    .end local v4    # "adChoiceV2LayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {v3, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35496
    new-instance v10, Lcom/facebook/ads/redexgen/X/eb;

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/NativeBannerAd;

    .end local v5    # "iconParentContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .local p0, "iconParentContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "iconParentContainer":Landroid/widget/RelativeLayout;
    .local p1, "iconParentContainer":Landroid/widget/RelativeLayout;
    const/4 v7, -0x2

    .end local v9    # "iconContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local p2, "iconContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v15, p6

    move-object/from16 v14, p3

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/eb;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Ve;Lcom/facebook/ads/redexgen/X/Vd;Lcom/facebook/ads/AdOptionsView;)V

    .line 35497
    .local v4, "contentView":Landroid/view/View;
    sget v1, Lcom/facebook/ads/redexgen/X/F7;->A06:I

    const/4 v0, 0x0

    invoke-virtual {v10, v1, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 35498
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35499
    .local v5, "contentViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 35500
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 35501
    invoke-virtual {v3, v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35502
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ve;->A0A:Lcom/facebook/ads/redexgen/X/Ve;

    if-ne v13, v0, :cond_1

    .line 35503
    sget v6, Lcom/facebook/ads/redexgen/X/F7;->A07:I

    sget v2, Lcom/facebook/ads/redexgen/X/F7;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/F7;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/F7;->A07:I

    invoke-virtual {v4, v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F7;->setPadding(IIII)V

    .line 35504
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/F7;->setOrientation(I)V

    .line 35505
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35506
    .local v7, "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35507
    .local v9, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/F7;->A07:I

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 35508
    .end local v6
    .restart local v7    # "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 35509
    invoke-virtual {v4, v3, v1}, Lcom/facebook/ads/redexgen/X/F7;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35510
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/F7;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35511
    .local v6, "ctaButton":Landroid/widget/TextView;
    sget v3, Lcom/facebook/ads/redexgen/X/F7;->A06:I

    sget v2, Lcom/facebook/ads/redexgen/X/F7;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/F7;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/F7;->A07:I

    invoke-virtual {v7, v3, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 35512
    invoke-virtual {v14, v7}, Lcom/facebook/ads/redexgen/X/Vd;->A05(Landroid/widget/TextView;)V

    .line 35513
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35514
    invoke-virtual {v4, v7, v6}, Lcom/facebook/ads/redexgen/X/F7;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35515
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/F7;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35516
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/F7;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35517
    return-void

    .line 35518
    .end local v7    # "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v7, -0x1

    sget v6, Lcom/facebook/ads/redexgen/X/F7;->A06:I

    sget v2, Lcom/facebook/ads/redexgen/X/F7;->A06:I

    sget v1, Lcom/facebook/ads/redexgen/X/F7;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/F7;->A06:I

    invoke-virtual {v4, v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F7;->setPadding(IIII)V

    .line 35519
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/F7;->setOrientation(I)V

    .line 35520
    const/4 v2, 0x0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35521
    .local v6, "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, -0x2

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35522
    .restart local v9    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/F7;->A06:I

    invoke-virtual {v3, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Ve;)I
    .locals 2

    .line 35523
    sget-object v1, Lcom/facebook/ads/redexgen/X/ec;->A00:[I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ve;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 35524
    sget v0, Lcom/facebook/ads/redexgen/X/F7;->A05:I

    return v0

    .line 35525
    :pswitch_0
    sget v0, Lcom/facebook/ads/redexgen/X/F7;->A03:I

    return v0

    .line 35526
    :pswitch_1
    sget v0, Lcom/facebook/ads/redexgen/X/F7;->A04:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 35527
    return-object p0
.end method

.method public getViewsForInteraction()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 35528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A02:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final unregisterView()V
    .locals 1

    .line 35529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F7;->A00:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->unregisterView()V

    .line 35530
    return-void
.end method
