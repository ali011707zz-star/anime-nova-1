.class public final Lcom/facebook/ads/redexgen/X/4x;
.super Lcom/facebook/ads/redexgen/X/Gj;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/c3;

.field public A01:Lcom/facebook/ads/redexgen/X/DZ;

.field public final A02:Landroid/widget/ImageView;

.field public final A03:Lcom/facebook/ads/redexgen/X/Rk;

.field public final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A06:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 353
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "opNTFb7MfNeLnBf1OFt8H8u3IMVbRu1d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IWQCWQwp5ID5RPcOdaIzYqbwlbVDrClG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KvkPuVSJhScWrt17epNc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "F0ODCmRg5uMMagWpVfR8fmvJ1OUGt5pq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "F5r"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wG3QjEZJL94bFBL8PiZK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "A8E1xGSXICDDUeWE8x490gS0hcqgXwJC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2T9PYA9x4VF1QbksNYikemvLXt0jGXOu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4x;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 3

    .line 12813
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Gj;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 12814
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Gc;-><init>(Lcom/facebook/ads/redexgen/X/4x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/Rk;

    .line 12815
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12816
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12817
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12818
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4x;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Landroid/widget/ImageView;

    .line 12819
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A04()I

    move-result v0

    if-lez v0, :cond_0

    .line 12820
    nop

    .line 12821
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A04()I

    move-result v0

    mul-int/lit16 v1, v0, 0x3e8

    new-instance v0, Lcom/facebook/ads/redexgen/X/DZ;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/DZ;-><init>(Lcom/facebook/ads/redexgen/X/gi;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/DZ;

    .line 12822
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 12823
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 12824
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 12825
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A00()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 12826
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A01()I

    move-result v0

    .line 12827
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A05(II)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Gb;-><init>(Lcom/facebook/ads/redexgen/X/4x;)V

    .line 12828
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 12829
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 12830
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/4x;)I
    .locals 0

    .line 12831
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->getCloseButtonStyle()I

    move-result p0

    return p0
.end method

.method private A01(I)Lcom/facebook/ads/redexgen/X/c3;
    .locals 10

    .line 12832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 12834
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/c6;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Gj;->A06:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0A:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Gj;->A0C:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Gj;->A08:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/c6;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/jd;Landroid/view/View;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    .line 12835
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A0J(I)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    .line 12836
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A0P(Lcom/facebook/ads/redexgen/X/Yb;)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v0

    .line 12837
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/c6;->A0I(I)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A07:Lcom/facebook/ads/redexgen/X/VI;

    .line 12838
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c6;->A0M(Lcom/facebook/ads/redexgen/X/VI;)Lcom/facebook/ads/redexgen/X/c6;

    move-result-object v3

    .line 12839
    .local v0, "paramsBuilder":Lcom/facebook/ads/redexgen/X/c6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/DZ;

    if-eqz v0, :cond_1

    .line 12840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/c6;->A0R(Lcom/facebook/ads/redexgen/X/DZ;)Lcom/facebook/ads/redexgen/X/c6;

    .line 12841
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Gj;->A06:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 12842
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A05()Ljava/lang/String;

    move-result-object v0

    .line 12843
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 12844
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v9

    .line 12845
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A03(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Mu;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    .line 12846
    .local v1, "adAction":Lcom/facebook/ads/redexgen/X/Mt;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/c6;->A0L(Lcom/facebook/ads/redexgen/X/Mt;)Lcom/facebook/ads/redexgen/X/c6;

    .line 12847
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/c6;->A0U()Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v2

    .line 12848
    .local v2, "params":Lcom/facebook/ads/redexgen/X/c7;
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c4;->A00(Lcom/facebook/ads/redexgen/X/c7;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/c3;
    .locals 0

    .line 12849
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4x;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/4x;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 12850
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4x;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/4x;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 12851
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/4x;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A06()V
    .locals 1

    .line 12852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12853
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0e()V

    .line 12854
    :cond_0
    return-void
.end method

.method public static A07()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4x;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x11t
        -0x19t
        -0x1bt
        -0x14t
    .end array-data
.end method

.method private A08(I)V
    .locals 7

    .line 12855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 12856
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4x;->A01(I)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    .line 12857
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Gd;-><init>(Lcom/facebook/ads/redexgen/X/4x;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/c3;->setAccidentalClickCappingListener(Lcom/facebook/ads/redexgen/X/Mr;)V

    .line 12858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->getColors()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v5

    .line 12859
    .local v0, "colors":Lcom/facebook/ads/redexgen/X/Na;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gj;->getBackgroundColorForToolbar()Ljava/lang/Integer;

    move-result-object v0

    .line 12860
    .local v1, "toolbarBackgroundColor":Ljava/lang/Integer;
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 12861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    .line 12862
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1O()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const-string v1, "fKHhGKaWmtnLqlWg01lC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "lG6mBbCbmu9ZuvMubYOS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    instance-of v0, v6, Lcom/facebook/ads/redexgen/X/Ka;

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 12863
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const-string v1, "OBMiQo8I4Ts7yjqshk6bkpwsmCqa0sTm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    goto :goto_2

    .line 12864
    :cond_4
    const/4 v0, 0x0

    .line 12865
    .local v4, "fullScreenColors":Z
    :goto_1
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Na;->A08(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 12866
    .end local v4    # "fullScreenColors":Z
    :goto_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const-string v1, "a7i0pPPxGgijq0ih0stJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "yYRdNfPwhLNXT50Mgldr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1O()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setFullscreen(Z)V

    .line 12867
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A05(Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0D(Lcom/facebook/ads/redexgen/X/Na;Z)V

    .line 12868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Gj;->A0j(Landroid/view/ViewGroup;)V

    .line 12869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A01:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 12870
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A01:Landroid/view/ViewGroup;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gj;->A0H:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/4x;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 12871
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1O()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Gj;->setUpFullscreenMode(Z)V

    .line 12872
    return-void

    .line 12873
    :cond_7
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/4x;)V
    .locals 0

    .line 12874
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A06()V

    return-void
.end method

.method private getCloseButtonStyle()I
    .locals 1

    .line 12930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->getCloseButtonStyle()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0c()Lcom/facebook/ads/redexgen/X/Yb;
    .locals 2

    .line 12875
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0c()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    .line 12876
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12877
    new-instance v0, Lcom/facebook/ads/redexgen/X/dn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dn;-><init>(Lcom/facebook/ads/redexgen/X/4x;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12878
    :cond_0
    return-object v1
.end method

.method public final A0g()V
    .locals 4

    .line 12879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    if-eqz v0, :cond_0

    .line 12880
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gj;->A07:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0Y:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 12881
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/c3;->A1B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v1

    .line 12882
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2N()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A06:Lcom/facebook/ads/redexgen/X/Mq;

    if-eq v1, v0, :cond_0

    .line 12883
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0f()V

    .line 12884
    .end local v0    # "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    :cond_0
    return-void
.end method

.method public final A0h()V
    .locals 5

    .line 12885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0L(Landroid/view/View;)V

    .line 12886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0L(Landroid/view/View;)V

    .line 12887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12888
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->A06()V

    .line 12889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A04()I

    move-result v3

    .line 12890
    .local v0, "unskippableSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A02()I

    move-result v2

    .line 12891
    .local v2, "secondsForNextCta":I
    if-lez v3, :cond_4

    .line 12892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    if-eqz v0, :cond_0

    .line 12893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1G()V

    .line 12894
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ga;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Ga;-><init>(Lcom/facebook/ads/redexgen/X/4x;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A01:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Gj;->A0i(ILcom/facebook/ads/redexgen/X/Wc;Lcom/facebook/ads/redexgen/X/DZ;)V

    .line 12895
    if-eqz v2, :cond_1

    if-lt v2, v3, :cond_3

    .line 12896
    :cond_1
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Gj;->A02:Z

    .line 12897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 12898
    :cond_2
    :goto_0
    return-void

    .line 12899
    :cond_3
    if-lez v2, :cond_2

    .line 12900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressSpinnerInvisible(Z)V

    .line 12901
    new-instance v1, Lcom/facebook/ads/redexgen/X/GZ;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/GZ;-><init>(Lcom/facebook/ads/redexgen/X/4x;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gj;->A0i(ILcom/facebook/ads/redexgen/X/Wc;Lcom/facebook/ads/redexgen/X/DZ;)V

    goto :goto_0

    .line 12902
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A06:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12903
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4x;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method public final A0k(Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 8

    .line 12904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A03:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A0A(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 12905
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 12906
    .local v0, "orientation":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4x;->A08(I)V

    .line 12907
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4x;->A0m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 12909
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4x;->A0m()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 12910
    const/4 v0, -0x2

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12911
    .local v1, "toolBarParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getRequestedMargins()Landroid/graphics/Rect;

    move-result-object v0

    .line 12912
    .local v2, "requestedMargins":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 12913
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0r:I

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 12914
    .restart local v1    # "toolBarParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {p0, v0, v7}, Lcom/facebook/ads/redexgen/X/4x;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 12916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 12917
    return-void

    .line 12918
    :cond_1
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const-string v1, "j24x2xTHwZJixq019qlFmxSWfXtsmamW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v7, v6, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 12919
    .end local v1    # "toolBarParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarHeight()I

    move-result v0

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public final A0l()Z
    .locals 5

    .line 12920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const-string v1, "kMg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/c3;->A1P(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public final A0m()Z
    .locals 1

    .line 12921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 12922
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1y()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 12923
    :goto_0
    return v0

    .line 12924
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic A0n()V
    .locals 0

    .line 12925
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Gj;->A0f()V

    return-void
.end method

.method public final AFA(Z)V
    .locals 1

    .line 12926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    if-eqz v0, :cond_0

    .line 12927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/c3;->A1L(Z)V

    .line 12928
    :cond_0
    return-void
.end method

.method public final AFi(Z)V
    .locals 0

    .line 12929
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 12931
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Gj;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0T()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4x;->A0m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12933
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4x;->A08(I)V

    .line 12934
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 12935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A02:Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/VM;->AKU(Landroid/view/View;)V

    .line 12937
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    if-eqz v0, :cond_2

    .line 12938
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4x;->A00:Lcom/facebook/ads/redexgen/X/c3;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4x;->A08:[Ljava/lang/String;

    const-string v1, "hIQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/c3;->A1C()V

    .line 12939
    :cond_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Gj;->onDestroy()V

    .line 12940
    return-void
.end method
