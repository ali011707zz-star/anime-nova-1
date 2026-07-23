.class public final Lcom/facebook/ads/redexgen/X/bT;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:I


# instance fields
.field public A00:Landroid/animation/AnimatorSet;

.field public A01:Landroid/animation/AnimatorSet;

.field public A02:Landroid/animation/AnimatorSet;

.field public A03:Landroid/widget/LinearLayout;

.field public A04:Lcom/facebook/ads/redexgen/X/am;

.field public A05:Lcom/facebook/ads/redexgen/X/M3;

.field public final A06:I

.field public final A07:I

.field public final A08:Landroid/view/View;

.field public final A09:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Os;

.field public final A0B:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Kr;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2639
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZXfERob4xoBH3IcU8XCjlL1hD69lrIyA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mQeX6yhTUvQ4pK8ACBM6nUVZWHaQDR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "t18Mgh0fo46erZhvjKlVSbwf5heaPhmM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "S6rERx5ctFRQ2KVL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3Fwf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FlQfbFZAJ1ylax3KsERNgz88EmHf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VMbmryNa1vDSool6GPHICtScLmJABdX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KdX0dASRYEcEQR8bSkkNlsR1046Pig"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bT;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bT;->A08()V

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A02:I

    sput v0, Lcom/facebook/ads/redexgen/X/bT;->A0G:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yh;ILcom/facebook/ads/redexgen/X/Mt;Lcom/facebook/ads/redexgen/X/Kr;Landroid/view/View;)V
    .locals 2

    .line 77843
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77844
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 77845
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bT;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    .line 77846
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bT;->A09:Lcom/facebook/ads/redexgen/X/Mt;

    .line 77847
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/bT;->A0D:Lcom/facebook/ads/redexgen/X/Kr;

    .line 77848
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/bT;->A08:Landroid/view/View;

    .line 77849
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bT;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 77850
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A02:Landroid/animation/AnimatorSet;

    .line 77851
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A01:Landroid/animation/AnimatorSet;

    .line 77852
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A00:Landroid/animation/AnimatorSet;

    .line 77853
    :cond_0
    int-to-float v1, p3

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 77854
    iput v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A07:I

    .line 77855
    sget v0, Lcom/facebook/ads/redexgen/X/bT;->A0G:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A06:I

    .line 77856
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bT;->A02()Lcom/facebook/ads/redexgen/X/Os;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0A:Lcom/facebook/ads/redexgen/X/Os;

    .line 77857
    return-void
.end method

.method private A00()Landroid/widget/LinearLayout;
    .locals 4

    .line 77858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A03:Landroid/widget/LinearLayout;

    .line 77859
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A03:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77860
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A03:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bT;->A01()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77861
    new-instance v3, Lcom/facebook/ads/redexgen/X/Kt;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/Kt;-><init>(Lcom/facebook/ads/redexgen/X/bT;)V

    .line 77862
    .local v0, "browserListener":Lcom/facebook/ads/redexgen/X/aq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 77863
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uq;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 77864
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77865
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/M3;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/M3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aq;)V

    .line 77866
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/bT;->A05:Lcom/facebook/ads/redexgen/X/M3;

    .line 77867
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bT;->A03:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bT;->A05:Lcom/facebook/ads/redexgen/X/M3;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77868
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A05:Lcom/facebook/ads/redexgen/X/M3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A09:Lcom/facebook/ads/redexgen/X/Mt;

    check-cast v0, Lcom/facebook/ads/redexgen/X/85;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/85;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M3;->loadUrl(Ljava/lang/String;)V

    .line 77869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A03:Landroid/widget/LinearLayout;

    return-object v0

    .line 77870
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 77871
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/M3;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/M3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/aq;)V

    goto :goto_0
.end method

.method private A01()Landroid/widget/LinearLayout;
    .locals 8

    .line 77872
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/am;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/am;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A04:Lcom/facebook/ads/redexgen/X/am;

    .line 77873
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A04:Lcom/facebook/ads/redexgen/X/am;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/am;->setGravity(I)V

    .line 77874
    const/4 v7, -0x1

    const/4 v6, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77875
    .local v0, "titleViewParam":Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0G:I

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0G:I

    invoke-virtual {v3, v2, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 77876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A04:Lcom/facebook/ads/redexgen/X/am;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/am;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77878
    .local v3, "titleViewContainer":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A04:Lcom/facebook/ads/redexgen/X/am;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77879
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77880
    .local v1, "titleViewContainerParam":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 77881
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77882
    return-object v5
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/Os;
    .locals 4

    .line 77883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Os;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Os;-><init>(Landroid/content/Context;)V

    .line 77884
    .local v0, "browserPeekView":Lcom/facebook/ads/redexgen/X/Os;
    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Os;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77885
    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Os;->setRadius(F)V

    .line 77886
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bT;->A00()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Os;->addView(Landroid/view/View;)V

    .line 77887
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bT;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 77888
    .local v1, "screenHeight":I
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Os;->setTranslationY(F)V

    .line 77889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77890
    .local v3, "overlay":Landroid/view/View;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77891
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77892
    new-instance v0, Lcom/facebook/ads/redexgen/X/bS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bS;-><init>(Lcom/facebook/ads/redexgen/X/bT;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77893
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Os;->addView(Landroid/view/View;)V

    .line 77894
    return-object v3
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/bT;)Lcom/facebook/ads/redexgen/X/Yh;
    .locals 0

    .line 77895
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0C:Lcom/facebook/ads/redexgen/X/Yh;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/bT;)Lcom/facebook/ads/redexgen/X/am;
    .locals 0

    .line 77896
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bT;->A04:Lcom/facebook/ads/redexgen/X/am;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/bT;)Lcom/facebook/ads/redexgen/X/Kr;
    .locals 0

    .line 77897
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0D:Lcom/facebook/ads/redexgen/X/Kr;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bT;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A07()V
    .locals 2

    .line 77898
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A02:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A02:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 77900
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A02:Landroid/animation/AnimatorSet;

    .line 77901
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A01:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 77902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A01:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 77903
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A01:Landroid/animation/AnimatorSet;

    .line 77904
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A00:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 77905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A00:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 77906
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A00:Landroid/animation/AnimatorSet;

    .line 77907
    :cond_2
    return-void
.end method

.method public static A08()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bT;->A0E:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
    .end array-data
.end method

.method private final A09()V
    .locals 2

    .line 77908
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A08:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 77909
    return-void
.end method


# virtual methods
.method public final A0A()V
    .locals 11

    .line 77910
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bT;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 77911
    .local v0, "screenHeight":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/bT;->A0A:Lcom/facebook/ads/redexgen/X/Os;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A07:I

    sub-int v0, v8, v0

    int-to-float v0, v0

    const/4 v4, 0x1

    new-array v3, v4, [F

    const/4 v10, 0x0

    aput v0, v3, v10

    .line 77912
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bT;->A06(III)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 77913
    .local v1, "browserPeekUp":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x12c

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77914
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/bT;->A08:Landroid/view/View;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/bT;->A07:I

    neg-int v2, v2

    int-to-float v3, v2

    new-array v2, v4, [F

    aput v3, v2, v10

    .line 77915
    invoke-static {v5, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 77916
    .local v4, "adDetailsViewUp":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77917
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/bT;->A0A:Lcom/facebook/ads/redexgen/X/Os;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/bT;->A06:I

    sub-int/2addr v8, v2

    int-to-float v3, v8

    new-array v2, v4, [F

    aput v3, v2, v10

    .line 77918
    invoke-static {v5, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 77919
    .local v8, "browserPeekDown":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77920
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/bT;->A08:Landroid/view/View;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/bT;->A06:I

    neg-int v2, v2

    int-to-float v3, v2

    new-array v2, v4, [F

    aput v3, v2, v10

    .line 77921
    invoke-static {v8, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 77922
    .local v2, "adDetailsViewDown":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A02:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A01:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A00:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 77924
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A02:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77925
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A02:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v0, v3, [Landroid/animation/Animator;

    aput-object v7, v0, v10

    aput-object v6, v0, v4

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 77926
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A01:Landroid/animation/AnimatorSet;

    new-array v0, v3, [Landroid/animation/Animator;

    aput-object v5, v0, v10

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 77927
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bT;->A00:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A02:Landroid/animation/AnimatorSet;

    aput-object v0, v1, v10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A01:Landroid/animation/AnimatorSet;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 77928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A00:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 77929
    :cond_0
    return-void
.end method

.method public final A0B()V
    .locals 2

    .line 77930
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bT;->A07()V

    .line 77931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A05:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->destroy()V

    .line 77932
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A0A:Lcom/facebook/ads/redexgen/X/Os;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Os;->setVisibility(I)V

    .line 77933
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bT;->A09()V

    .line 77934
    return-void
.end method

.method public final A0C()V
    .locals 1

    .line 77935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A02:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 77936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A02:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 77937
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A01:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 77938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A01:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 77939
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A00:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 77940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A00:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 77941
    :cond_2
    return-void
.end method

.method public final A0D(I)V
    .locals 3

    .line 77942
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 77943
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A0A:Lcom/facebook/ads/redexgen/X/Os;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Os;->setVisibility(I)V

    .line 77944
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A08:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/bT;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 77945
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 77946
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bT;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 77947
    .local v0, "screenHeight":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A0A:Lcom/facebook/ads/redexgen/X/Os;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Os;->setVisibility(I)V

    .line 77948
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A0A:Lcom/facebook/ads/redexgen/X/Os;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A06:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Os;->setTranslationY(F)V

    .line 77949
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bT;->A08:Landroid/view/View;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A06:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 77950
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/bT;->A0F:[Ljava/lang/String;

    const-string v1, "0Dd01EimJB8SQQk0dQvdznLslJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bT;->A07()V

    .line 77951
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bT;->A09()V

    .line 77952
    .end local v0    # "screenHeight":I
    :cond_2
    :goto_0
    return-void
.end method

.method public getBrowserPeekView()Lcom/facebook/ads/redexgen/X/Os;
    .locals 1

    .line 77953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bT;->A0A:Lcom/facebook/ads/redexgen/X/Os;

    return-object v0
.end method
