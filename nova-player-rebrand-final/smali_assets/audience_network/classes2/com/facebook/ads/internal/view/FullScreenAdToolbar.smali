.class public final Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
.super Lcom/facebook/ads/redexgen/X/Yb;
.source ""


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/YZ;

.field public A01:Lcom/facebook/ads/redexgen/X/Ya;

.field public A02:Lcom/facebook/ads/redexgen/X/Ya;

.field public A03:Lcom/facebook/ads/redexgen/X/ZC;

.field public A04:Z

.field public A05:Z

.field public final A06:Landroid/widget/RelativeLayout;

.field public final A07:Lcom/facebook/ads/redexgen/X/VI;

.field public final A08:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A09:Lcom/facebook/ads/redexgen/X/ZK;

.field public final A0A:Lcom/facebook/ads/redexgen/X/e4;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1539
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bFTGQZCDUsZohbmTeIVqSIHEteTzH9ln"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yXw5A2C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1AgOSkHO0Pb00RrFT9UOiqy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TxDFqDHdXRoHKl2DTNxbpTLqI26RISWJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CWbWmw8OaNX6ff1fhEYiHQW6wjCjGro9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "znIzyGoGhCcdAsXYdQkLlPNG9alZ5sNL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lf2qO9K"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XEgUxEHpppw1PxIgjlcxmDWHelwWu1Ow"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03()V

    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    .line 1540
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    .line 1541
    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    sub-int/2addr v1, v0

    sput v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    .line 1542
    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    mul-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    sub-int/2addr v1, v0

    sput v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0G:I

    .line 1543
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0E:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/VI;IIZ)V
    .locals 10

    .line 57722
    move-object v4, p0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yb;-><init>(Landroid/content/Context;)V

    .line 57723
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Ya;

    .line 57724
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Z

    .line 57725
    move/from16 v1, p6

    iput-boolean v1, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    .line 57726
    iput-object p2, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/Yh;

    .line 57727
    iput-object p3, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/VI;

    .line 57728
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setGravity(I)V

    .line 57729
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZK;

    invoke-direct {v0, p1, p4, v1}, Lcom/facebook/ads/redexgen/X/ZK;-><init>(Lcom/facebook/ads/redexgen/X/gi;IZ)V

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    .line 57730
    iget-object v3, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ZK;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57731
    iget-object v1, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yq;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Yq;-><init>(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZK;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    .line 57732
    iget-boolean v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    const/16 v1, 0x3ee

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, -0x2

    if-nez v0, :cond_1

    .line 57733
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57734
    .local v6, "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v8, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    sget v7, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    sget v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0G:I

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    invoke-virtual {v9, v8, v7, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 57735
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v4, v0, v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57736
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    .line 57737
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57738
    .local v8, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 57739
    new-instance v0, Lcom/facebook/ads/redexgen/X/e4;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/e4;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    .line 57740
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 57741
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57742
    .local v9, "pageDetailsParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 57743
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/e4;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57744
    iget-object v1, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 57745
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v2}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57746
    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    .line 57747
    invoke-virtual {v4, p1, p5}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0G(Lcom/facebook/ads/redexgen/X/gi;I)V

    .line 57748
    .end local v6    # "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "pageDetailsParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 57749
    :cond_1
    const/4 v0, -0x1

    if-eq p5, v0, :cond_2

    .line 57750
    invoke-virtual {v4, p1, p5}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0G(Lcom/facebook/ads/redexgen/X/gi;I)V

    .line 57751
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    .line 57752
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57753
    .local v6, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 57754
    new-instance v0, Lcom/facebook/ads/redexgen/X/e4;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/e4;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    .line 57755
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 57756
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57757
    .local v8, "pageDetailsParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 57758
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/e4;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57759
    iget-object v1, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 57760
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v2}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57761
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57762
    .local v9, "toolbarActionViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v2, v0, 0x2

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v5, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 57763
    iget-object v0, v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/Ya;
    .locals 0

    .line 57764
    iget-object p0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Ya;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/ZK;
    .locals 0

    .line 57765
    iget-object p0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x18

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:[Ljava/lang/String;

    const-string v1, "ATFpsL3dKIxr1CEZIKZeGPZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x71t
        -0x66t
        -0x63t
        -0x5ft
        -0x6dt
        0x4et
        0x6ft
        -0x6et
        -0x64t
        -0x51t
        -0x46t
        -0x47t
        -0x44t
        -0x42t
        0x6at
        -0x75t
        -0x52t
        -0x47t
        -0x4ct
        -0x4ct
        -0x4ft
        -0x59t
        -0x5at
        -0x49t
    .end array-data
.end method

.method private A04(Landroid/view/View;Z)V
    .locals 1

    .line 57766
    if-eqz p1, :cond_0

    .line 57767
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57768
    :cond_0
    return-void

    .line 57769
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setReportingViewColor(Landroid/view/View;)V
    .locals 3

    .line 57866
    if-eqz p1, :cond_0

    .line 57867
    const/high16 v2, -0x1000000

    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0E:I

    const/4 v0, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0S(Landroid/view/View;III)V

    .line 57868
    :cond_0
    return-void
.end method


# virtual methods
.method public final A08()V
    .locals 2

    .line 57770
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Yb;->A08()V

    .line 57771
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 57772
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/YZ;->setVisibility(I)V

    .line 57773
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    if-eqz v0, :cond_1

    .line 57774
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->setVisibility(I)V

    .line 57775
    :cond_1
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 57776
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZK;->A02()V

    .line 57777
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 57778
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Ya;

    if-eqz v0, :cond_0

    .line 57779
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Ya;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Ya;

    .line 57780
    :cond_0
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 57781
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->getToolbarListener()Lcom/facebook/ads/redexgen/X/Ya;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Ya;

    .line 57782
    return-void
.end method

.method public final A0C(FI)V
    .locals 1

    .line 57783
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZK;->A03(FI)V

    .line 57784
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/Na;Z)V
    .locals 6

    .line 57785
    iget-boolean v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Z

    .line 57786
    .local v0, "fullScreenEnabled":Z
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Na;->A05(Z)I

    move-result v5

    .line 57787
    .local v1, "accentColor":I
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Na;->A0B(Z)I

    move-result v0

    invoke-virtual {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/e4;->A02(II)V

    .line 57788
    iget-boolean v4, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    const/16 v2, 0x8

    const/16 v1, 0x9

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v1

    if-nez v4, :cond_3

    .line 57789
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    if-eqz v0, :cond_0

    .line 57790
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/YZ;->setIconColors(I)V

    .line 57791
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/YZ;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57792
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p1, v3, p2}, Lcom/facebook/ads/redexgen/X/ZK;->A04(Lcom/facebook/ads/redexgen/X/Na;ZZ)V

    .line 57793
    const/4 v1, 0x0

    if-eqz v3, :cond_2

    .line 57794
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v0, -0x6a000000

    filled-new-array {v0, v1}, [I

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 57795
    .local v2, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 57796
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0V(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 57797
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    :goto_1
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setReportingViewColor(Landroid/view/View;)V

    .line 57798
    .end local v2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    :goto_2
    return-void

    .line 57799
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    goto :goto_1

    .line 57800
    :cond_2
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    goto :goto_2

    .line 57801
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    if-eqz v0, :cond_0

    .line 57802
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/ZC;->setIconColors(I)V

    .line 57803
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final A0E()Z
    .locals 1

    .line 57804
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZK;->A05()Z

    move-result v0

    return v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;I)V
    .locals 3

    .line 57805
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/ZK;->setInitialUnskippableSeconds(I)V

    .line 57806
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    if-eqz v0, :cond_1

    .line 57807
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    if-eqz v0, :cond_0

    .line 57808
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->setAdDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 57809
    :cond_0
    :goto_0
    return-void

    .line 57810
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    if-eqz v0, :cond_0

    .line 57811
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/YZ;->setAdDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;)V

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/gi;I)V
    .locals 5

    .line 57812
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    if-eqz v0, :cond_0

    .line 57813
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 57814
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YZ;->removeAllViews()V

    .line 57815
    :cond_0
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57816
    .local v0, "adReportingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    if-nez v0, :cond_1

    .line 57817
    new-instance v0, Lcom/facebook/ads/redexgen/X/YZ;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/YZ;-><init>(Lcom/facebook/ads/redexgen/X/gi;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    .line 57818
    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v3, v0, 0x2

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v2, v0, 0x2

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0H:I

    div-int/lit8 v1, v0, 0x2

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 57819
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57820
    :goto_0
    return-void

    .line 57821
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZC;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/ZC;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    .line 57822
    sget v3, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    sget v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0G:I

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 57823
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getToolbarActionMode()I
    .locals 1

    .line 57824
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZK;->getToolbarActionMode()I

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 57825
    sget v0, Lcom/facebook/ads/redexgen/X/Yb;->A00:I

    return v0
.end method

.method public getToolbarListener()Lcom/facebook/ads/redexgen/X/Ya;
    .locals 1

    .line 57826
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Ya;

    return-object v0
.end method

.method public setAdReportingVisible(Z)V
    .locals 1

    .line 57827
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    .line 57828
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04(Landroid/view/View;Z)V

    .line 57829
    return-void

    .line 57830
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    goto :goto_0
.end method

.method public setCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 57831
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e4;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57832
    return-void
.end method

.method public setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 4

    .line 57833
    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    .line 57834
    const/16 v2, 0x11

    const/4 v1, 0x7

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/bu;->A03(Lcom/facebook/ads/redexgen/X/Kr;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    .line 57835
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/e4;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57836
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    .line 57837
    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Z

    .line 57838
    return-void
.end method

.method public setOnlyPageDetails(Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 1

    .line 57839
    if-eqz p1, :cond_0

    .line 57840
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e4;->setPageDetails(Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 57841
    :goto_0
    return-void

    .line 57842
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e4;->A01()V

    goto :goto_0
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Ns;)V
    .locals 3

    .line 57843
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/ZK;->setInitialUnskippableSeconds(I)V

    .line 57844
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e4;->setPageDetails(Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 57845
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Z

    if-eqz v0, :cond_1

    .line 57846
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    if-eqz v0, :cond_0

    .line 57847
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->setAdDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 57848
    :cond_0
    :goto_0
    return-void

    .line 57849
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    if-eqz v0, :cond_0

    .line 57850
    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/YZ;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/Yh;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/YZ;->setAdDetails(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yh;)V

    goto :goto_0
.end method

.method public setPageDetailsVisible(Z)V
    .locals 2

    .line 57851
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 57852
    if-eqz p1, :cond_0

    .line 57853
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:Lcom/facebook/ads/redexgen/X/e4;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 57854
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZK;->setToolbarMessageEnabled(Z)V

    .line 57855
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 57856
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZK;->setProgress(F)V

    .line 57857
    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 57858
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZK;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    .line 57859
    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/YM;)V
    .locals 1

    .line 57860
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZK;->setProgressImage(Lcom/facebook/ads/redexgen/X/YM;)V

    .line 57861
    return-void
.end method

.method public setProgressImmediate(F)V
    .locals 1

    .line 57862
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZK;->setProgressImmediate(F)V

    .line 57863
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 1

    .line 57864
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZK;->setProgressSpinnerInvisible(Z)V

    .line 57865
    return-void
.end method

.method public setToolbarActionMessage(Ljava/lang/String;)V
    .locals 1

    .line 57869
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZK;->setToolbarMessage(Ljava/lang/String;)V

    .line 57870
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 1

    .line 57871
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:Lcom/facebook/ads/redexgen/X/ZK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ZK;->setToolbarActionMode(I)V

    .line 57872
    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/redexgen/X/Ya;)V
    .locals 0

    .line 57873
    iput-object p1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Ya;

    .line 57874
    return-void
.end method
