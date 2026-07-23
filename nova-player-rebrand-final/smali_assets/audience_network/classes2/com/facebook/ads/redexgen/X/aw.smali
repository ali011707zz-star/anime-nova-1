.class public final Lcom/facebook/ads/redexgen/X/aw;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static A05:Lcom/facebook/ads/redexgen/X/Yh;

.field public static A06:[B

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/hU;

.field public A01:Lcom/facebook/ads/redexgen/X/gi;

.field public A02:Lcom/facebook/ads/redexgen/X/0w;

.field public A03:Lcom/facebook/ads/redexgen/X/M1;

.field public A04:Lcom/facebook/ads/redexgen/X/bj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2617
    invoke-static {}, Lcom/facebook/ads/redexgen/X/aw;->A02()V

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sput v0, Lcom/facebook/ads/redexgen/X/aw;->A08:I

    .line 2618
    sget v0, Lcom/facebook/ads/redexgen/X/aw;->A08:I

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lcom/facebook/ads/redexgen/X/aw;->A07:I

    .line 2619
    const/high16 v1, 0x41700000    # 15.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/aw;->A09:I

    .line 2620
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lv;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/aw;->A05:Lcom/facebook/ads/redexgen/X/Yh;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 2

    .line 77054
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77055
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 77056
    new-instance v0, Lcom/facebook/ads/redexgen/X/0w;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/0w;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    .line 77057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 77058
    new-instance v0, Lcom/facebook/ads/redexgen/X/7N;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7N;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A00:Lcom/facebook/ads/redexgen/X/hU;

    .line 77059
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aw;->A00:Lcom/facebook/ads/redexgen/X/hU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hU;->A0G(Lcom/facebook/ads/redexgen/X/7M;)V

    .line 77060
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77061
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/aw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77063
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aw;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/jd;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/jd;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;"
        }
    .end annotation

    .line 77064
    if-nez p1, :cond_0

    .line 77065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 77066
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A2G()Ljava/util/List;

    move-result-object v5

    .line 77067
    .local v0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 77068
    .local v1, "mCarouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 77069
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/NR;

    .line 77070
    .local v3, "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/e5;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/e5;-><init>(IILcom/facebook/ads/redexgen/X/NR;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77071
    .end local v3    # "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77072
    .end local v2    # "i":I
    :cond_1
    return-object v4
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aw;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x2t
        0x20t
        0x33t
        0x2et
        0x34t
        0x32t
        0x24t
        0x2dt
        0x61t
        0xft
        0x20t
        0x35t
        0x28t
        0x37t
        0x24t
        0x61t
        0x37t
        0x28t
        0x24t
        0x36t
        0x61t
        0x20t
        0x25t
        0x24t
        0x31t
        0x35t
        0x24t
        0x33t
        0x61t
        0x28t
        0x32t
        0x2ft
        0x66t
        0x35t
        0x61t
        0x22t
        0x33t
        0x24t
        0x20t
        0x35t
        0x24t
        0x25t
        0x61t
        0x31t
        0x33t
        0x2et
        0x31t
        0x24t
        0x33t
        0x2dt
        0x38t
        0x43t
        0x41t
        0x4at
        0x41t
        0x56t
        0x4dt
        0x47t
    .end array-data
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/aw;I)V
    .locals 0

    .line 77073
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/aw;->setUpLayoutForCardAtIndex(I)V

    return-void
.end method

.method public static getDummyListener()Lcom/facebook/ads/redexgen/X/Yh;
    .locals 1

    .line 77097
    sget-object v0, Lcom/facebook/ads/redexgen/X/aw;->A05:Lcom/facebook/ads/redexgen/X/Yh;

    return-object v0
.end method

.method private setUpLayoutForCardAtIndex(I)V
    .locals 1

    .line 77103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A04:Lcom/facebook/ads/redexgen/X/bj;

    if-eqz v0, :cond_0

    .line 77104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A04:Lcom/facebook/ads/redexgen/X/bj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bj;->A00(I)V

    .line 77105
    :cond_0
    return-void
.end method

.method private setupDotsLayout(Lcom/facebook/ads/redexgen/X/UK;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/UK;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/e5;",
            ">;)V"
        }
    .end annotation

    .line 77106
    .local p2, "carouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    .line 77107
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0w;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/6X;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ls;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ls;-><init>(Lcom/facebook/ads/redexgen/X/aw;)V

    .line 77108
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0Y(Lcom/facebook/ads/redexgen/X/cp;)V

    .line 77109
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 77110
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v2

    .line 77111
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bj;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/bj;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Na;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A04:Lcom/facebook/ads/redexgen/X/bj;

    .line 77112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A04:Lcom/facebook/ads/redexgen/X/bj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 77113
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77114
    .local v0, "positionDotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0w;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 77115
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/aw;->A09:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 77116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A04:Lcom/facebook/ads/redexgen/X/bj;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/aw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77117
    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 2

    .line 77074
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    .line 77075
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/UK;I)V
    .locals 11

    .line 77076
    move-object v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aw;->A01(Lcom/facebook/ads/redexgen/X/jd;)Ljava/util/ArrayList;

    move-result-object v3

    .line 77077
    .local v0, "carouselCardInfo":Ljava/util/ArrayList;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/0w;->setCardsInfo(Ljava/util/ArrayList;)V

    .line 77078
    new-instance v1, Lcom/facebook/ads/redexgen/X/M1;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 77079
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 77080
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v5

    sget-object v7, Lcom/facebook/ads/redexgen/X/aw;->A05:Lcom/facebook/ads/redexgen/X/Yh;

    .line 77081
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/UK;->A13()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    .line 77082
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0w;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/6X;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/M1;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/List;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/Yh;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6X;Lcom/facebook/ads/redexgen/X/DZ;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/aw;->A03:Lcom/facebook/ads/redexgen/X/M1;

    .line 77083
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A03:Lcom/facebook/ads/redexgen/X/M1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->setAdapter(Lcom/facebook/ads/redexgen/X/Qq;)V

    .line 77084
    if-eqz p2, :cond_0

    :goto_0
    sget v0, Lcom/facebook/ads/redexgen/X/aw;->A07:I

    sub-int/2addr p2, v0

    .line 77085
    .local v1, "childWidth":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aw;->A03:Lcom/facebook/ads/redexgen/X/M1;

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-virtual {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/M1;->A0O(III)V

    .line 77086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A03:Lcom/facebook/ads/redexgen/X/M1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0G()V

    .line 77087
    invoke-direct {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/aw;->setupDotsLayout(Lcom/facebook/ads/redexgen/X/UK;Ljava/util/ArrayList;)V

    .line 77088
    return-void

    .line 77089
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A04:Landroid/util/DisplayMetrics;

    iget p2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/fp;)V
    .locals 6

    .line 77090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A03:Lcom/facebook/ads/redexgen/X/M1;

    if-eqz v0, :cond_0

    .line 77091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A03:Lcom/facebook/ads/redexgen/X/M1;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M1;->A0P(Lcom/facebook/ads/redexgen/X/fp;)V

    .line 77092
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A02:Lcom/facebook/ads/redexgen/X/0w;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0w;->A20(Lcom/facebook/ads/redexgen/X/fp;)V

    .line 77093
    return-void

    .line 77094
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A01:Lcom/facebook/ads/redexgen/X/gi;

    .line 77095
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1v:I

    const/4 v2, 0x0

    const/16 v1, 0x33

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aw;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 77096
    const/16 v2, 0x33

    const/4 v1, 0x7

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aw;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_0
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 77098
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A03:Lcom/facebook/ads/redexgen/X/M1;

    if-eqz v0, :cond_0

    .line 77099
    sub-int v3, p4, p2

    sget v0, Lcom/facebook/ads/redexgen/X/aw;->A07:I

    sub-int/2addr v3, v0

    .line 77100
    .local v0, "childWidth":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aw;->A03:Lcom/facebook/ads/redexgen/X/M1;

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/M1;->A0O(III)V

    .line 77101
    .end local v0    # "childWidth":I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 77102
    return-void
.end method
