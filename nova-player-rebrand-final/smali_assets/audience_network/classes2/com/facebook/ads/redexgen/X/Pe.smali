.class public final Lcom/facebook/ads/redexgen/X/Pe;
.super Lcom/facebook/ads/redexgen/X/Yb;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Yg;,
        Lcom/facebook/ads/redexgen/X/Yf;,
        Lcom/facebook/ads/redexgen/X/Ye;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:Ljava/lang/Integer;

.field public static final A0E:Ljava/lang/Integer;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Yf;

.field public A02:F

.field public A03:Lcom/facebook/ads/redexgen/X/Ya;

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/gi;

.field public final A06:Lcom/facebook/ads/redexgen/X/Ye;

.field public final A07:Lcom/facebook/ads/redexgen/X/Yg;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1547
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fERBvMHNNnzy3nk4ZNYWfuNmaphricqR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "36dIUinCjWD1st1oFa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LXwDs8sQ22ml4TxQk7X9Yy2PND6TLebQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XXrP48rjLtmBZR3EppDVWeHK64Oiflqr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lJVaLdSDUZo8CZ4Z9dOQvPM3HMB2ksyr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0Ja0eNtF0Cq6bAhyEs6lkKXZN09pMEMJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OH638NDLRGGNEgbxKp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sf1pLwcEB21wXoeUmJKgsuWxlp0ZYlJT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Pe;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pe;->A07()V

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0C:I

    sput v0, Lcom/facebook/ads/redexgen/X/Pe;->A0A:I

    .line 1548
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0H:I

    sput v0, Lcom/facebook/ads/redexgen/X/Pe;->A0C:I

    .line 1549
    sget v0, Lcom/facebook/ads/redexgen/X/Pe;->A0C:I

    int-to-double v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/Pe;->A0B:I

    .line 1550
    const/high16 v0, 0x33000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A0D:Ljava/lang/Integer;

    .line 1551
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A0E:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yg;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/Yf;)V
    .locals 5

    .line 58029
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yb;-><init>(Landroid/content/Context;)V

    .line 58030
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:I

    .line 58031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A04:Z

    .line 58032
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 58033
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pe;->A07:Lcom/facebook/ads/redexgen/X/Yg;

    .line 58034
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Pe;->A01:Lcom/facebook/ads/redexgen/X/Yf;

    .line 58035
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Pe;->A04()V

    .line 58036
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pe;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A07:Lcom/facebook/ads/redexgen/X/Yg;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ye;

    invoke-direct {v0, v2, p3, v1, p4}, Lcom/facebook/ads/redexgen/X/Ye;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yg;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A06:Lcom/facebook/ads/redexgen/X/Ye;

    .line 58037
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58038
    .local v0, "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x30

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 58039
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pe;->A06:Lcom/facebook/ads/redexgen/X/Ye;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pe;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ye;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A06:Lcom/facebook/ads/redexgen/X/Ye;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yd;-><init>(Lcom/facebook/ads/redexgen/X/Pe;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A06:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Pe;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58042
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Pe;->A06()V

    .line 58043
    return-void
.end method

.method public static synthetic A00()I
    .locals 1

    .line 58044
    sget v0, Lcom/facebook/ads/redexgen/X/Pe;->A0B:I

    return v0
.end method

.method public static synthetic A01()Ljava/lang/Integer;
    .locals 1

    .line 58045
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A0D:Ljava/lang/Integer;

    return-object v0
.end method

.method public static synthetic A02()Ljava/lang/Integer;
    .locals 1

    .line 58046
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A0E:Ljava/lang/Integer;

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pe;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 4

    .line 58047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58048
    .local v0, "dummyView":Landroid/view/View;
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58049
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Pe;->addView(Landroid/view/View;)V

    .line 58050
    return-void
.end method

.method private A05()V
    .locals 2

    .line 58051
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Pe;->getRequestedMargins()Landroid/graphics/Rect;

    move-result-object v1

    .line 58052
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A01:Lcom/facebook/ads/redexgen/X/Yf;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 58053
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A01:Lcom/facebook/ads/redexgen/X/Yf;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Pe;->getToolbarHeight()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yf;->AEZ(I)V

    .line 58054
    :cond_0
    return-void
.end method

.method private A06()V
    .locals 2

    .line 58055
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt v1, v0, :cond_0

    .line 58056
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yc;-><init>(Lcom/facebook/ads/redexgen/X/Pe;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pe;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 58057
    :cond_0
    return-void
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A08:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Pe;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pe;->A09:[Ljava/lang/String;

    const-string v1, "7Gx7HJtPRSPh20N7Kw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "xYim5uVBO0YQkaepUH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :array_0
    .array-data 1
        0x6et
        0x41t
        0x42t
        0x5et
        0x48t
        0xdt
        0x6ct
        0x49t
    .end array-data
.end method

.method private setClickable(F)V
    .locals 4

    .line 58095
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 58096
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A19(Landroid/content/Context;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pe;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x51

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pe;->A09:[Ljava/lang/String;

    const-string v1, "CynGSFEo4busEIaNEzQQTo6NoR2HzSp3"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A04:Z

    .line 58097
    return-void

    .line 58098
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A09()V
    .locals 0

    .line 58058
    return-void
.end method

.method public final A0A()V
    .locals 0

    .line 58059
    return-void
.end method

.method public final A0B()V
    .locals 0

    .line 58060
    return-void
.end method

.method public final A0C(FI)V
    .locals 0

    .line 58061
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/Na;Z)V
    .locals 0

    .line 58062
    return-void
.end method

.method public final A0E()Z
    .locals 1

    .line 58063
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic A0F(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 58064
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 58065
    .local v0, "cutout":Landroid/view/DisplayCutout;
    if-eqz v0, :cond_0

    .line 58066
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 58067
    .local v1, "cutoutInsetTop":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:I

    if-eq v1, v0, :cond_0

    .line 58068
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:I

    .line 58069
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Pe;->A05()V

    .line 58070
    .end local v1    # "cutoutInsetTop":I
    :cond_0
    return-object p2
.end method

.method public final A0G()V
    .locals 4

    .line 58071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A03:Lcom/facebook/ads/redexgen/X/Ya;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A04:Z

    if-eqz v0, :cond_1

    .line 58072
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pe;->A03:Lcom/facebook/ads/redexgen/X/Ya;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pe;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x51

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Pe;->A09:[Ljava/lang/String;

    const-string v1, "Nz9FTwNSu9sKseNM42ZlibQZooapJX2m"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "gMFqMi1vQ9rk8jIPSWsyy3tPRxgAiTUd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3, p0}, Lcom/facebook/ads/redexgen/X/Ya;->ACl(Lcom/facebook/ads/redexgen/X/Yb;)V

    .line 58073
    :cond_1
    return-void
.end method

.method public getRequestedMargins()Landroid/graphics/Rect;
    .locals 4

    .line 58074
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Pe;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 58075
    .local v0, "orientation":I
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    .line 58076
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0u:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0c:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:I

    add-int/2addr v1, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 58077
    :cond_0
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0u:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getToolbarActionMode()I
    .locals 1

    .line 58078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A06:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ye;->A09()I

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 2

    .line 58079
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A07:Lcom/facebook/ads/redexgen/X/Yg;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Yg;->A08:Lcom/facebook/ads/redexgen/X/Yg;

    if-ne v1, v0, :cond_1

    .line 58080
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Pe;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 58081
    .local v0, "orientation":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 58082
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Pe;->A0C:I

    add-int/2addr v1, v0

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0c:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    return v1

    .line 58083
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Pe;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    return v1

    .line 58084
    .end local v0    # "orientation":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getToolbarListener()Lcom/facebook/ads/redexgen/X/Ya;
    .locals 1

    .line 58085
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 58086
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Yb;->onAttachedToWindow()V

    .line 58087
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Pe;->A05()V

    .line 58088
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 58089
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Yb;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58090
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Pe;->A05()V

    .line 58091
    return-void
.end method

.method public setAdReportingVisible(Z)V
    .locals 0

    .line 58092
    return-void
.end method

.method public setCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 58093
    return-void
.end method

.method public setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 0

    .line 58094
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    .line 58099
    return-void
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Ns;)V
    .locals 2

    .line 58100
    mul-int/lit16 v0, p3, 0x3e8

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:F

    .line 58101
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:F

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Pe;->setClickable(F)V

    .line 58102
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A06:Lcom/facebook/ads/redexgen/X/Ye;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ye;->A0A(F)V

    .line 58103
    return-void
.end method

.method public setPageDetailsVisible(Z)V
    .locals 0

    .line 58104
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 58105
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:F

    mul-float/2addr p1, v0

    .line 58106
    .local v0, "positionMs":F
    const/4 v1, 0x0

    .line 58107
    .local v1, "remainingMs":F
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:F

    sub-float/2addr v2, p1

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    .line 58108
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A02:F

    sub-float/2addr v1, p1

    .line 58109
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A06:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ye;->A0B(F)V

    .line 58110
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Pe;->setClickable(F)V

    .line 58111
    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 58112
    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 0

    .line 58113
    return-void
.end method

.method public setProgressImmediate(F)V
    .locals 0

    .line 58114
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 0

    .line 58115
    return-void
.end method

.method public setToolbarActionMessage(Ljava/lang/String;)V
    .locals 0

    .line 58116
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 1

    .line 58117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A06:Lcom/facebook/ads/redexgen/X/Ye;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ye;->A0C(I)V

    .line 58118
    if-nez p1, :cond_0

    .line 58119
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pe;->setProgress(F)V

    .line 58120
    :cond_0
    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/redexgen/X/Ya;)V
    .locals 0

    .line 58121
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A03:Lcom/facebook/ads/redexgen/X/Ya;

    .line 58122
    return-void
.end method
