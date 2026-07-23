.class public final Lcom/facebook/ads/redexgen/X/e8;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6e;

.field public A01:Lcom/facebook/ads/redexgen/X/Eu;

.field public A02:Lcom/facebook/ads/redexgen/X/4L;

.field public A03:Lcom/facebook/ads/redexgen/X/Df;

.field public A04:Lcom/facebook/ads/redexgen/X/3S;

.field public A05:Lcom/facebook/ads/redexgen/X/34;

.field public final A06:Lcom/facebook/ads/redexgen/X/gi;

.field public final A07:Lcom/facebook/ads/redexgen/X/VI;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2741
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0b:I

    sput v0, Lcom/facebook/ads/redexgen/X/e8;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;)V
    .locals 0

    .line 80657
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80658
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/e8;->A07:Lcom/facebook/ads/redexgen/X/VI;

    .line 80659
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/e8;->A06:Lcom/facebook/ads/redexgen/X/gi;

    .line 80660
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/e8;->setUpView(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 80661
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/e8;)Lcom/facebook/ads/redexgen/X/34;
    .locals 0

    .line 80662
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/e8;->A05:Lcom/facebook/ads/redexgen/X/34;

    return-object p0
.end method

.method private setUpPlugins(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 5

    .line 80687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0Y()V

    .line 80688
    new-instance v0, Lcom/facebook/ads/redexgen/X/3S;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/3S;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A04:Lcom/facebook/ads/redexgen/X/3S;

    .line 80689
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A04:Lcom/facebook/ads/redexgen/X/3S;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 80690
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A07:Lcom/facebook/ads/redexgen/X/VI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Df;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Df;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A03:Lcom/facebook/ads/redexgen/X/Df;

    .line 80691
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3q;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/3q;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 80692
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A03:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 80693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A07:Lcom/facebook/ads/redexgen/X/VI;

    const/4 v4, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/34;

    invoke-direct {v0, p1, v4, v1}, Lcom/facebook/ads/redexgen/X/34;-><init>(Lcom/facebook/ads/redexgen/X/gi;ZLcom/facebook/ads/redexgen/X/VI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A05:Lcom/facebook/ads/redexgen/X/34;

    .line 80694
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A05:Lcom/facebook/ads/redexgen/X/34;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 80695
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/e8;->A05:Lcom/facebook/ads/redexgen/X/34;

    sget-object v1, Lcom/facebook/ads/redexgen/X/f9;->A02:Lcom/facebook/ads/redexgen/X/f9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dh;

    invoke-direct {v0, v2, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/Dh;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/f9;ZZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 80696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80697
    return-void

    .line 80698
    :cond_0
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80699
    .local v0, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80700
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80701
    sget v3, Lcom/facebook/ads/redexgen/X/e8;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/e8;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/e8;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/e8;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 80702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A03:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Df;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80703
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A03:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6e;->addView(Landroid/view/View;)V

    .line 80704
    return-void
.end method

.method private setUpVideo(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 4

    .line 80705
    new-instance v0, Lcom/facebook/ads/redexgen/X/6e;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/6e;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    .line 80706
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 80708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/e8;->addView(Landroid/view/View;)V

    .line 80709
    new-instance v0, Lcom/facebook/ads/redexgen/X/e7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/e7;-><init>(Lcom/facebook/ads/redexgen/X/e8;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/e8;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80710
    return-void
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 0

    .line 80711
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/e8;->setUpVideo(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 80712
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/e8;->setUpPlugins(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 80713
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 80663
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0i(ZI)V

    .line 80664
    return-void
.end method

.method public final A02()V
    .locals 2

    .line 80665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A01:Lcom/facebook/ads/redexgen/X/Eu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A01:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A07()V

    .line 80667
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A01:Lcom/facebook/ads/redexgen/X/Eu;

    .line 80668
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/4L;

    if-eqz v0, :cond_1

    .line 80669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4L;->A0p()V

    .line 80670
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/4L;

    .line 80671
    :cond_1
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/UN;)V
    .locals 1

    .line 80672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/UM;->A05(Lcom/facebook/ads/redexgen/X/UN;)Z

    .line 80673
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/VA;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80674
    .local p4, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/e8;->A02()V

    .line 80675
    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A06:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    const/4 v5, 0x0

    move-object v7, p3

    move-object v4, p2

    move-object v2, p1

    move-object v2, v2

    move-object v4, v4

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/4L;

    .line 80676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A06:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80677
    new-instance v0, Lcom/facebook/ads/redexgen/X/Eu;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A06:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Eu;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/EF;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A01:Lcom/facebook/ads/redexgen/X/Eu;

    .line 80678
    :goto_0
    return-void

    .line 80679
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A01:Lcom/facebook/ads/redexgen/X/Eu;

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/et;)V
    .locals 2

    .line 80680
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    const/16 v0, 0xd

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 80681
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 80682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0p()Z

    move-result v0

    return v0
.end method

.method public getSimpleVideoView()Lcom/facebook/ads/redexgen/X/Ek;
    .locals 1

    .line 80683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 80684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getVolume()F

    move-result v0

    return v0
.end method

.method public setPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 80685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A04:Lcom/facebook/ads/redexgen/X/3S;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3S;->setImage(Ljava/lang/String;)V

    .line 80686
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    .line 80714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->setVideoURI(Ljava/lang/String;)V

    .line 80715
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 80716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->setVolume(F)V

    .line 80717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A03:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Df;->A09()V

    .line 80718
    return-void
.end method
