.class public final Lcom/facebook/ads/redexgen/X/6K;
.super Lcom/facebook/ads/redexgen/X/Ka;
.source ""


# static fields
.field public static A09:[B


# instance fields
.field public A00:F

.field public A01:Lcom/facebook/ads/redexgen/X/eS;

.field public A02:Z

.field public final A03:Landroid/os/Handler;

.field public final A04:Landroid/view/View;

.field public final A05:Landroid/widget/RelativeLayout;

.field public final A06:Landroid/widget/RelativeLayout;

.field public final A07:Lcom/facebook/ads/redexgen/X/Yb;

.field public final A08:Lcom/facebook/ads/redexgen/X/Yh;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6K;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;)V
    .locals 7

    .line 16494
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Ka;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 16495
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A03:Landroid/os/Handler;

    .line 16496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A02:Z

    .line 16497
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A08:Lcom/facebook/ads/redexgen/X/Yh;

    .line 16498
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A07:Lcom/facebook/ads/redexgen/X/Yb;

    .line 16499
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A06:Landroid/widget/RelativeLayout;

    .line 16500
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Landroid/widget/RelativeLayout;

    .line 16501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 16502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 16503
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Landroid/view/View;

    .line 16504
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6K;->A04()V

    .line 16505
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6K;->A06:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Landroid/widget/RelativeLayout;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16506
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6K;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/6K;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16507
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdInfo()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    .line 16508
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/br;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 16509
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6K;->A03()V

    .line 16510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 16511
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 16512
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A00:F

    .line 16513
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A00(F)Ljava/lang/String;

    move-result-object v2

    .line 16514
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 16515
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A04()Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A0C(Lcom/facebook/ads/redexgen/X/Mt;)Ljava/lang/String;

    move-result-object v6

    .line 16516
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Lt;->AKh(Ljava/lang/String;IZZLjava/lang/String;)V

    .line 16517
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/6K;)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 16518
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6K;->A07:Lcom/facebook/ads/redexgen/X/Yb;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/6K;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 8

    .line 16519
    const/4 v0, 0x3

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A07:Lcom/facebook/ads/redexgen/X/Yb;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 16520
    new-instance v1, Lcom/facebook/ads/redexgen/X/eS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 16521
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    .line 16522
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/6K;->A08:Lcom/facebook/ads/redexgen/X/Yh;

    .line 16523
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/6K;->A03:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 16524
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A08()Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/eS;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Kr;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/VI;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Lcom/facebook/ads/redexgen/X/eS;

    .line 16525
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16526
    .local v0, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Lcom/facebook/ads/redexgen/X/eS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eS;->A0W()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6K;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16527
    return-void
.end method

.method private A03()V
    .locals 2

    .line 16528
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 16529
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16530
    .local v0, "adDetailsLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/6K;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16531
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->setVisibility(I)V

    .line 16532
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6K;->A07(I)V

    .line 16533
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/LK;

    if-eqz v0, :cond_0

    .line 16534
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/LK;

    .line 16535
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LK;->A0u(I)V

    .line 16536
    :cond_0
    return-void
.end method

.method private A04()V
    .locals 4

    .line 16537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Landroid/view/View;

    if-nez v0, :cond_0

    .line 16538
    return-void

    .line 16539
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Landroid/view/View;

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 16541
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ka;->A08:Lcom/facebook/ads/redexgen/X/XS;

    .line 16542
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XS;->A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/XR;

    move-result-object v2

    .line 16543
    .local v0, "supported":Lcom/facebook/ads/redexgen/X/XR;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 16544
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 16545
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0H()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XR;->A01:Z

    .line 16546
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A00(Z)V

    .line 16547
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A08:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 16548
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XR;->A00:Z

    if-eqz v0, :cond_2

    .line 16549
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/c1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/c1;-><init>(Lcom/facebook/ads/redexgen/X/6K;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16550
    :cond_1
    :goto_0
    return-void

    .line 16551
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16552
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Landroid/view/View;

    .line 16553
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1K(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/c2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/c2;-><init>(Lcom/facebook/ads/redexgen/X/6K;)V

    .line 16554
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private A05()V
    .locals 9

    .line 16555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16556
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 16557
    const/4 v5, 0x2

    new-array v2, v5, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 16558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A07:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0L(Landroid/view/View;)V

    .line 16559
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6K;->A02()V

    .line 16560
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdInfo()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    .line 16561
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/6K;->A02:Z

    .line 16562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A07:Lcom/facebook/ads/redexgen/X/Yb;

    if-eqz v0, :cond_1

    .line 16563
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A07:Lcom/facebook/ads/redexgen/X/Yb;

    .line 16564
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16565
    const/16 v5, 0x8

    .line 16566
    :cond_0
    invoke-virtual {v1, v5}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 16567
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A07:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressImmediate(F)V

    .line 16568
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/XO;

    .line 16569
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdInfo()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A00()J

    move-result-wide v0

    long-to-int v3, v0

    .line 16570
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/facebook/ads/redexgen/X/KY;

    invoke-direct {v8, p0}, Lcom/facebook/ads/redexgen/X/KY;-><init>(Lcom/facebook/ads/redexgen/X/6K;)V

    const/high16 v4, 0x41a00000    # 20.0f

    const-wide/16 v5, 0x14

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/XO;-><init>(IFJLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/XN;)V

    .line 16571
    .local v0, "endCardCountdownTimer":Lcom/facebook/ads/redexgen/X/XO;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    .line 16572
    .end local v0    # "endCardCountdownTimer":Lcom/facebook/ads/redexgen/X/XO;
    :cond_2
    return-void
.end method

.method public static A06()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6K;->A09:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x70t
        0x74t
        0x78t
        0x7et
        0x7ct
    .end array-data
.end method

.method private A07(I)V
    .locals 2

    .line 16573
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6K;->A08(I)V

    .line 16574
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Ka;->A1V(ILandroid/view/ViewGroup;Landroid/widget/RelativeLayout;)V

    .line 16575
    return-void
.end method

.method private A08(I)V
    .locals 7

    .line 16576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Landroid/view/View;

    if-nez v0, :cond_0

    .line 16577
    return-void

    .line 16578
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16579
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16580
    const/16 v4, 0xa

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16581
    const/16 v3, 0x9

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16582
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, -0x2

    if-ne p1, v2, :cond_1

    .line 16583
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16584
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16585
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16586
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A04:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16587
    return-void

    .line 16588
    :cond_1
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16589
    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16590
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A05(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16591
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16593
    .local v1, "containerLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A05:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16595
    .end local v1    # "containerLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 16596
    :cond_2
    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/6K;Z)Z
    .locals 0

    .line 16597
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/6K;->A02:Z

    return p1
.end method


# virtual methods
.method public final A0A()Z
    .locals 1

    .line 16598
    const/4 v0, 0x0

    return v0
.end method

.method public final A0B()Z
    .locals 1

    .line 16599
    const/4 v0, 0x0

    return v0
.end method

.method public final A1C()V
    .locals 2

    .line 16600
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A1C()V

    .line 16601
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A03:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16602
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->A0j()V

    .line 16603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Lcom/facebook/ads/redexgen/X/eS;

    if-eqz v0, :cond_0

    .line 16604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Lcom/facebook/ads/redexgen/X/eS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eS;->A0Y()V

    .line 16605
    :cond_0
    return-void
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0

    .line 16606
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ka;->A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 16607
    return-void
.end method

.method public final A1L(Z)V
    .locals 1

    .line 16608
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/c3;->A1L(Z)V

    .line 16609
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bF;->A0m(Z)V

    .line 16610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Lcom/facebook/ads/redexgen/X/eS;

    if-eqz v0, :cond_0

    .line 16611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Lcom/facebook/ads/redexgen/X/eS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/eS;->A0e(Z)V

    .line 16612
    :cond_0
    return-void
.end method

.method public final A1M()Z
    .locals 1

    .line 16613
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdInfo()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0V()Z

    move-result v0

    return v0
.end method

.method public final A1O()Z
    .locals 1

    .line 16614
    const/4 v0, 0x1

    return v0
.end method

.method public final A1P(Z)Z
    .locals 1

    .line 16615
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdInfo()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16616
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6K;->A05()V

    .line 16617
    const/4 v0, 0x1

    return v0

    .line 16618
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A1R(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/bF;
    .locals 16

    .line 16619
    move-object/from16 v2, p0

    .line 16620
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 16621
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0M(Ljava/lang/String;)F

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/6K;->A00:F

    .line 16622
    new-instance v0, Lcom/facebook/ads/redexgen/X/bs;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/6K;->A00:F

    .line 16623
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v3

    .line 16624
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/c3;->getColors()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v4

    .line 16625
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v5

    .line 16626
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v6

    .line 16627
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v7

    sget v8, Lcom/facebook/ads/redexgen/X/Ka;->A0G:I

    .line 16628
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A07()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v10

    .line 16629
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0F()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v11

    .line 16630
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0A()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v12

    .line 16631
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A0E()Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v13

    .line 16632
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/c7;->A08()Lcom/facebook/ads/redexgen/X/VI;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v15}, Lcom/facebook/ads/redexgen/X/bs;-><init>(FLjava/lang/String;Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Kr;IZLcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/VI;Z)V

    .line 16633
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bs;->A03()Lcom/facebook/ads/redexgen/X/LK;

    move-result-object v0

    .line 16634
    return-object v0
.end method

.method public final synthetic A1X(Landroid/view/View;)V
    .locals 4

    .line 16635
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6K;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    return-void
.end method

.method public getCloseButtonStyle()I
    .locals 1

    .line 16636
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A02:Z

    if-eqz v0, :cond_1

    .line 16637
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16638
    const/16 v0, 0x8

    return v0

    .line 16639
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 16640
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6K;->A1M()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16641
    const/4 v0, 0x1

    return v0

    .line 16642
    :cond_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 16643
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ka;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Lcom/facebook/ads/redexgen/X/eS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A09:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6K;->A01:Lcom/facebook/ads/redexgen/X/eS;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eS;->A0a(I)V

    .line 16646
    return-void

    .line 16647
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/6K;->A07(I)V

    .line 16648
    return-void
.end method
