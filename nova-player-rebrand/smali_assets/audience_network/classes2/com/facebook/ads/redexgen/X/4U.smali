.class public final Lcom/facebook/ads/redexgen/X/4U;
.super Lcom/facebook/ads/redexgen/X/PJ;
.source ""


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Fy;

.field public A01:Lcom/facebook/ads/redexgen/X/fo;

.field public final A02:Landroid/widget/RelativeLayout;

.field public final A03:Lcom/facebook/ads/redexgen/X/Sx;

.field public final A04:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A05:Lcom/facebook/ads/redexgen/X/1J;

.field public final A06:Lcom/facebook/ads/redexgen/X/bj;

.field public final A07:Lcom/facebook/ads/redexgen/X/fp;

.field public final A08:Ljava/lang/String;

.field public final A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 332
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HroiSjGkBhlygt0UHqritDnsLvuB4mll"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UPUcpMrNl24qq0HclW9U9iERj7I4qSt3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AR1kUYImMXSQek2fbhOL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "An1bOYQQ6mWkitzD6HneRzMou2TxbTlk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bk2AprBMZM1jRI7qHazMlP7Iu4yWRtui"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rxrENBx6Cu3lgzyCTlNUNM4zg8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bB4G8QrXsE48YFBGJh1Aken7ZdbC0Xcx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YDFainhA1ZmikU8Mw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4U;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4U;->A0H()V

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4U;->A0D:I

    .line 333
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sput v0, Lcom/facebook/ads/redexgen/X/4U;->A0E:I

    .line 334
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4U;->A0F:I

    .line 335
    const/high16 v1, 0x42600000    # 56.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4U;->A0H:I

    .line 336
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4U;->A0C:I

    .line 337
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/4U;->A0G:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 6

    .line 11670
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/ads/redexgen/X/PJ;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;)V

    .line 11671
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A04:Lcom/facebook/ads/redexgen/X/Y2;

    .line 11672
    instance-of v0, p5, Lcom/facebook/ads/redexgen/X/7l;

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 11673
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/PJ;->A09:Z

    .line 11674
    new-instance v2, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/MG;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 11675
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1G()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ea;

    invoke-direct {v0, p1, v2, v1, p4}, Lcom/facebook/ads/redexgen/X/ea;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Yh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A08:Lcom/facebook/ads/redexgen/X/ea;

    .line 11676
    :cond_0
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/4U;->A03:Lcom/facebook/ads/redexgen/X/Sx;

    .line 11677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A08:Ljava/lang/String;

    .line 11678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0m()I

    move-result v4

    .line 11679
    .local v0, "viewabilityInitialDelayMs":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4U;->A0C()Lcom/facebook/ads/redexgen/X/Fx;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A01:Lcom/facebook/ads/redexgen/X/fo;

    .line 11680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0n()I

    move-result v3

    .line 11681
    .local v2, "viewabilityIntervalMs":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A01:Lcom/facebook/ads/redexgen/X/fo;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fp;

    invoke-direct {v0, p0, v5, v2, v1}, Lcom/facebook/ads/redexgen/X/fp;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A07:Lcom/facebook/ads/redexgen/X/fp;

    .line 11682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2G()Ljava/util/List;

    move-result-object v1

    .line 11683
    .local v1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A07:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/fp;->A0W(I)V

    .line 11684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A07:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/fp;->A0X(I)V

    .line 11685
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A09:Ljava/util/List;

    .line 11686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A07:Lcom/facebook/ads/redexgen/X/NN;

    .line 11687
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4U;->A0G()V

    .line 11688
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A02:Landroid/widget/RelativeLayout;

    .line 11689
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/1J;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    .line 11690
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    const/4 v1, -0x2

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1J;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 11692
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A07:Lcom/facebook/ads/redexgen/X/NN;

    .line 11693
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bj;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/bj;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A06:Lcom/facebook/ads/redexgen/X/bj;

    .line 11694
    sget v0, Lcom/facebook/ads/redexgen/X/4U;->A0F:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11695
    .local v3, "positionDotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/4U;->A0G:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 11696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 11697
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 11698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A06:Lcom/facebook/ads/redexgen/X/bj;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/bj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11699
    return-void
.end method

.method private A00()I
    .locals 2

    .line 11700
    sget v1, Lcom/facebook/ads/redexgen/X/4U;->A0H:I

    sget v0, Lcom/facebook/ads/redexgen/X/4U;->A0D:I

    add-int/2addr v1, v0

    sget v0, Lcom/facebook/ads/redexgen/X/4U;->A0E:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    .line 11701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2Q()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/4U;->A0C:I

    :goto_0
    add-int/2addr v1, v0

    .line 11702
    return v1

    .line 11703
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/4U;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 0

    .line 11704
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4U;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object p0

    return-object p0
.end method

.method private A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 3

    .line 11705
    sget-object v2, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    .line 11706
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    if-nez v0, :cond_0

    .line 11707
    return-object v2

    .line 11708
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    .line 11709
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->getLayoutManager()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A25()I

    move-result v0

    .line 11710
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A1G(I)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/FY;

    .line 11711
    .local v1, "holder":Lcom/facebook/ads/redexgen/X/FY;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/FY;->A0p()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11712
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/FY;->A0p()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v2

    .line 11713
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/FY;->A0p()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getCtaActionHelper()Lcom/facebook/ads/redexgen/X/bV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bV;->A06()Lcom/facebook/ads/redexgen/X/Mr;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11714
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/FY;->A0p()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    .line 11715
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->getCtaActionHelper()Lcom/facebook/ads/redexgen/X/bV;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fw;-><init>(Lcom/facebook/ads/redexgen/X/4U;)V

    .line 11716
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bV;->A07(Lcom/facebook/ads/redexgen/X/Mr;)V

    .line 11717
    :cond_1
    return-object v2
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 11718
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 11719
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 11720
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 11721
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 11722
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 11723
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/VA;
    .locals 0

    .line 11724
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0F:Lcom/facebook/ads/redexgen/X/VA;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/Y2;
    .locals 0

    .line 11725
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4U;->A04:Lcom/facebook/ads/redexgen/X/Y2;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/bj;
    .locals 0

    .line 11726
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4U;->A06:Lcom/facebook/ads/redexgen/X/bj;

    return-object p0
.end method

.method private A0C()Lcom/facebook/ads/redexgen/X/Fx;
    .locals 1

    .line 11727
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fx;-><init>(Lcom/facebook/ads/redexgen/X/4U;)V

    return-object v0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/4U;)Lcom/facebook/ads/redexgen/X/fp;
    .locals 0

    .line 11728
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4U;->A07:Lcom/facebook/ads/redexgen/X/fp;

    return-object p0
.end method

.method public static A0E(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4U;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x35

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/4U;)Ljava/lang/String;
    .locals 0

    .line 11729
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4U;->A08:Ljava/lang/String;

    return-object p0
.end method

.method private A0G()V
    .locals 7

    .line 11730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 11731
    .local v0, "length":I
    const/4 v5, 0x0

    .line 11732
    .local v1, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/NR;

    .line 11733
    .local v3, "adInfoItem":Lcom/facebook/ads/redexgen/X/NR;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4U;->A09:Ljava/util/List;

    add-int/lit8 v1, v5, 0x1

    .end local v1    # "index":I
    .local v6, "index":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/e5;

    invoke-direct {v0, v5, v6, v3}, Lcom/facebook/ads/redexgen/X/e5;-><init>(IILcom/facebook/ads/redexgen/X/NR;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11734
    .end local v3    # "adInfoItem":Lcom/facebook/ads/redexgen/X/NR;
    move v5, v1

    goto :goto_0

    .line 11735
    .end local v6    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static A0H()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4U;->A0A:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4bt
        0x53t
        0x51t
        0x48t
    .end array-data
.end method

.method private final A0I()V
    .locals 1

    .line 11736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 11737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->removeAllViews()V

    .line 11738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1S()V

    .line 11739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A06:Lcom/facebook/ads/redexgen/X/bj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bj;->removeAllViews()V

    .line 11740
    return-void
.end method

.method private final A0J(ILandroid/os/Bundle;)V
    .locals 24

    .line 11741
    move-object/from16 v0, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11742
    .local v14, "width":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 11743
    .local v13, "height":I
    const/4 v1, 0x1

    move/from16 v5, p1

    if-ne v5, v1, :cond_3

    .line 11744
    sget v1, Lcom/facebook/ads/redexgen/X/4U;->A0E:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v2, v3, v1

    div-int/lit8 v1, v4, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 11745
    .local v1, "childWidth":I
    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    .line 11746
    .local v2, "childSpacing":I
    mul-int/lit8 v20, v3, 0x4

    .line 11747
    .local v3, "extraSpacing":I
    .end local v1    # "childWidth":I
    .end local v2    # "childSpacing":I
    .local v17, "childWidth":I
    .local v18, "childSpacing":I
    .local v19, "extraSpacing":I
    :goto_0
    new-instance v7, Lcom/facebook/ads/redexgen/X/Fy;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4U;->A09:Ljava/util/List;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4U;->A07:Lcom/facebook/ads/redexgen/X/fp;

    move-object v7, v7

    move-object v8, v6

    move v9, v5

    move-object v10, v2

    move-object v11, v1

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Fy;-><init>(Lcom/facebook/ads/redexgen/X/1J;ILjava/util/List;Lcom/facebook/ads/redexgen/X/fp;Landroid/os/Bundle;)V

    iput-object v7, v0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    .line 11748
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Fp;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/4U;->A09:Ljava/util/List;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0F:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/4U;->A03:Lcom/facebook/ads/redexgen/X/Sx;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/4U;->A07:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/4U;->A04:Lcom/facebook/ads/redexgen/X/Y2;

    .line 11749
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/PJ;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v16

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/4U;->A08:Ljava/lang/String;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    move-object v6, v8

    .end local v13    # "height":I
    .local v20, "height":I
    .end local v14    # "width":I
    .local v22, "width":I
    move-object/from16 v22, v1

    move-object/from16 v23, v0

    move/from16 v21, v5

    move/from16 v19, v3

    move/from16 v18, v4

    move-object/from16 v17, v7

    invoke-direct/range {v8 .. v23}, Lcom/facebook/ads/redexgen/X/Fp;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/List;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Yh;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/Fy;Lcom/facebook/ads/redexgen/X/Yb;)V

    .line 11750
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    .line 11751
    move-object/from16 v4, p0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->getOnScrollListener()Lcom/facebook/ads/redexgen/X/R7;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A1h(Lcom/facebook/ads/redexgen/X/R7;)V

    .line 11752
    const/4 v0, 0x1

    if-ne v5, v0, :cond_0

    .line 11753
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/4U;->A0K(Lcom/facebook/ads/redexgen/X/Fy;)V

    .line 11754
    :cond_0
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/4U;->A02:Landroid/widget/RelativeLayout;

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4U;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4U;->A0B:[Ljava/lang/String;

    const-string v1, "F7mqI2GIhyyFDyTzZV2pklBppM1xGubd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 11755
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4U;->A06:Lcom/facebook/ads/redexgen/X/bj;

    if-eqz v0, :cond_1

    .line 11756
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4U;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4U;->A06:Lcom/facebook/ads/redexgen/X/bj;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 11757
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 11758
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    .line 11759
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v2

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    .line 11760
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/VM;->AKn(Landroid/view/View;Ljava/lang/String;Z)V

    .line 11761
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4U;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/PJ;->A0f(Landroid/view/View;ZI)V

    .line 11762
    return-void

    .line 11763
    .end local v1
    .end local v2
    .end local v3    # "extraSpacing":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4U;->A00()I

    move-result v1

    sub-int/2addr v4, v1

    .line 11764
    .restart local v1    # "childWidth":I
    sget v3, Lcom/facebook/ads/redexgen/X/4U;->A0E:I

    .line 11765
    .restart local v2    # "childSpacing":I
    mul-int/lit8 v20, v3, 0x2

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 2

    .line 11766
    new-instance v1, Lcom/facebook/ads/redexgen/X/7N;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/7N;-><init>()V

    .line 11767
    .local v0, "mSnapHelper":Lcom/facebook/ads/redexgen/X/hU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hU;->A0G(Lcom/facebook/ads/redexgen/X/7M;)V

    .line 11768
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fv;-><init>(Lcom/facebook/ads/redexgen/X/4U;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0Y(Lcom/facebook/ads/redexgen/X/cp;)V

    .line 11769
    return-void
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/Y2;)V
    .locals 0

    .line 11770
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/PJ;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/Y2;)V

    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/4U;)Z
    .locals 0

    .line 11771
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0j()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/4U;)Z
    .locals 0

    .line 11772
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PJ;->A0k()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0b()Lcom/facebook/ads/redexgen/X/Yb;
    .locals 4

    .line 11773
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/PU;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;I)V

    return-object v0
.end method

.method public final A0d()V
    .locals 3

    .line 11774
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4U;->A0E(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4U;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v1

    .line 11775
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2N()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A06:Lcom/facebook/ads/redexgen/X/Mq;

    if-eq v1, v0, :cond_0

    .line 11776
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4U;->A0m()V

    .line 11777
    :cond_0
    return-void
.end method

.method public final A0l()Z
    .locals 1

    .line 11778
    const/4 v0, 0x0

    return v0
.end method

.method public final A0m()V
    .locals 2

    .line 11779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 11780
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 11781
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A2K(Z)V

    .line 11782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0M(I)V

    .line 11783
    return-void
.end method

.method public final AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 4

    .line 11784
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/PJ;->A0g(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 11785
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 11786
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/4U;->A0J(ILandroid/os/Bundle;)V

    .line 11787
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fu;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/Fu;-><init>(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/Re;)V

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Re;->A0A(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 11788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A04()I

    move-result v1

    .line 11789
    .local v0, "unskippableSec":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A09:Z

    if-eqz v0, :cond_0

    .line 11790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A03()I

    move-result v1

    .line 11791
    :cond_0
    if-lez v1, :cond_1

    .line 11792
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/PJ;->A0e(I)V

    .line 11793
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4U;->A0B:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x67

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4U;->A0B:[Ljava/lang/String;

    const-string v1, "xzqo3WeAICTwOfDq1ABGux21r55vxNP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A02()I

    move-result v0

    if-ltz v0, :cond_2

    .line 11794
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 11795
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0D:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2T()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11796
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    new-instance v0, Lcom/facebook/ads/redexgen/X/e6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/e6;-><init>(Lcom/facebook/ads/redexgen/X/4U;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11797
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFA(Z)V
    .locals 1

    .line 11798
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PJ;->AFA(Z)V

    .line 11799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    if-eqz v0, :cond_0

    .line 11800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0Q()V

    .line 11801
    :cond_0
    return-void
.end method

.method public final AFi(Z)V
    .locals 1

    .line 11802
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PJ;->AFi(Z)V

    .line 11803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    if-eqz v0, :cond_0

    .line 11804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0R()V

    .line 11805
    :cond_0
    return-void
.end method

.method public final AIv(Landroid/os/Bundle;)V
    .locals 1

    .line 11806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    if-eqz v0, :cond_0

    .line 11807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Fy;->A0W(Landroid/os/Bundle;)V

    .line 11808
    :cond_0
    return-void
.end method

.method public getCloseButtonStyle()I
    .locals 1

    .line 11809
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 11810
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11811
    .local v0, "savedInstanceState":Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4U;->AIv(Landroid/os/Bundle;)V

    .line 11812
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4U;->A0I()V

    .line 11813
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/4U;->A0J(ILandroid/os/Bundle;)V

    .line 11814
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PJ;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 11815
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 11816
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/PJ;->onDestroy()V

    .line 11817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4U;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4U;->A0B:[Ljava/lang/String;

    const-string v1, "QmrF4TvQsO2B2hMNxlVLyQwFLZRqn96s"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A05:Lcom/facebook/ads/redexgen/X/1J;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/VM;->AKU(Landroid/view/View;)V

    .line 11819
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A08:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11820
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0F:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4U;->A08:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A07:Lcom/facebook/ads/redexgen/X/fp;

    .line 11821
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A04:Lcom/facebook/ads/redexgen/X/Y2;

    .line 11822
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 11823
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v0

    .line 11824
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/VA;->AB7(Ljava/lang/String;Ljava/util/Map;)V

    .line 11825
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4U;->A0I()V

    .line 11826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4U;->A07:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 11827
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 11828
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4U;->A04:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PJ;->A0E:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Y2;->A06(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 11829
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/PJ;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
