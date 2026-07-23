.class public final Lcom/facebook/ads/redexgen/X/3S;
.super Lcom/facebook/ads/redexgen/X/ED;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/gi;

.field public final A02:Lcom/facebook/ads/redexgen/X/UN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/UN<",
            "Lcom/facebook/ads/redexgen/X/4K;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/UN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/UN<",
            "Lcom/facebook/ads/redexgen/X/E3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 156
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hk0dnqphYZ0B2FA2HHbeoaEOUC9cHUBv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "tTD1hmxYdA3U5n9t8Z20NsAIS"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BfpeWRttIDT9n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BdF5VvNpfNEd8dAFz8yBB3tju8j2QPKu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "opIRFI8OjkHX6xnIsWRzCqWD0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Ob0oYr4gU4dgC4EVWukqT8XlG8BtSCcB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HPuRIIJ62FmEL4YF0ip1f4WrSa12U9bK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7SB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3S;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 10540
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/3S;-><init>(Lcom/facebook/ads/redexgen/X/gi;Z)V

    .line 10541
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Z)V
    .locals 3

    .line 10542
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ED;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 10543
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Dc;-><init>(Lcom/facebook/ads/redexgen/X/3S;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A03:Lcom/facebook/ads/redexgen/X/UN;

    .line 10544
    new-instance v0, Lcom/facebook/ads/redexgen/X/Db;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Db;-><init>(Lcom/facebook/ads/redexgen/X/3S;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A02:Lcom/facebook/ads/redexgen/X/UN;

    .line 10545
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3S;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 10546
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A00:Landroid/widget/ImageView;

    .line 10547
    if-nez p2, :cond_0

    .line 10548
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 10549
    .local v0, "scaleType":Landroid/widget/ImageView$ScaleType;
    const/high16 v1, -0x1000000

    .line 10550
    .local v1, "color":I
    .restart local v1    # "color":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A00:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 10552
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3S;->A00:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3S;->addView(Landroid/view/View;)V

    .line 10554
    return-void

    .line 10555
    .end local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .end local v1    # "color":I
    :cond_0
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 10556
    .restart local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 10557
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ED;->A07()V

    .line 10558
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10559
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v4

    const/4 v0, 0x2

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3S;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3S;->A04:[Ljava/lang/String;

    const-string v1, "Nqq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "4efeQvUmAeHBj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A03:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v3, v5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A02:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v3, v1

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 10560
    :cond_1
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 10561
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10562
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ED;->getVideoView()Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A02:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3S;->A03:Lcom/facebook/ads/redexgen/X/UN;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 10563
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ED;->A08()V

    .line 10564
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 10565
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3S;->A00:Landroid/widget/ImageView;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 10566
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1

    .line 10567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/3S;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/b8;)V

    .line 10568
    return-void
.end method

.method public setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/b8;)V
    .locals 3

    .line 10569
    if-nez p1, :cond_0

    .line 10570
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3S;->setVisibility(I)V

    .line 10571
    return-void

    .line 10572
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3S;->setVisibility(I)V

    .line 10573
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3S;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3S;->A01:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 10574
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A04()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v0

    .line 10575
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/LM;
    if-eqz p2, :cond_1

    .line 10576
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    .line 10577
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 10578
    return-void
.end method
