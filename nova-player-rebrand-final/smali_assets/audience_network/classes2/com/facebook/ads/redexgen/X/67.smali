.class public abstract Lcom/facebook/ads/redexgen/X/67;
.super Lcom/facebook/ads/redexgen/X/Jg;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XQ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jf;
    }
.end annotation


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;

.field public static final A0N:I

.field public static final A0O:I

.field public static final A0P:I


# instance fields
.field public A00:Landroid/widget/RelativeLayout;

.field public A01:Lcom/facebook/ads/redexgen/X/ZI;

.field public A02:Lcom/facebook/ads/redexgen/X/cq;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Fy;

.field public A04:Lcom/facebook/ads/redexgen/X/e8;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/graphics/Paint;

.field public final A09:Landroid/graphics/Path;

.field public final A0A:Landroid/graphics/RectF;

.field public final A0B:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0C:Lcom/facebook/ads/redexgen/X/XS;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0E:Lcom/facebook/ads/redexgen/X/c7;

.field public final A0F:Lcom/facebook/ads/redexgen/X/EA;

.field public final A0G:Lcom/facebook/ads/redexgen/X/E4;

.field public final A0H:Lcom/facebook/ads/redexgen/X/E2;

.field public final A0I:Lcom/facebook/ads/redexgen/X/E0;

.field public final A0J:Lcom/facebook/ads/redexgen/X/Dr;

.field public final A0K:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 412
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XgHadHW09EVAxZ9Csjyh8Iwd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cGY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0gnHO0byxZtUV0t5q6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nitlVKI6s75UlUdu4qHy2TBluRJ6Vnqb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dqu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "CAnKNEP5j3LNWAO1IgUwk41cBq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Gj8h5dX0pUMTu0Q6FRM85YsFx7LjGw4a"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ydUjPQqek3X4wwrCfoz9Rz5n"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/67;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/67;->A03()V

    const/high16 v1, 0x3f800000    # 1.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/67;->A0O:I

    .line 413
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/67;->A0P:I

    .line 414
    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/67;->A0N:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 4

    .line 15754
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jg;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 15755
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A09:Landroid/graphics/Path;

    .line 15756
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0A:Landroid/graphics/RectF;

    .line 15757
    new-instance v0, Lcom/facebook/ads/redexgen/X/6C;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6C;-><init>(Lcom/facebook/ads/redexgen/X/67;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0J:Lcom/facebook/ads/redexgen/X/Dr;

    .line 15758
    new-instance v0, Lcom/facebook/ads/redexgen/X/6B;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6B;-><init>(Lcom/facebook/ads/redexgen/X/67;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0F:Lcom/facebook/ads/redexgen/X/EA;

    .line 15759
    new-instance v0, Lcom/facebook/ads/redexgen/X/6A;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6A;-><init>(Lcom/facebook/ads/redexgen/X/67;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0H:Lcom/facebook/ads/redexgen/X/E2;

    .line 15760
    new-instance v0, Lcom/facebook/ads/redexgen/X/69;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/69;-><init>(Lcom/facebook/ads/redexgen/X/67;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0G:Lcom/facebook/ads/redexgen/X/E4;

    .line 15761
    new-instance v0, Lcom/facebook/ads/redexgen/X/68;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/68;-><init>(Lcom/facebook/ads/redexgen/X/67;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0I:Lcom/facebook/ads/redexgen/X/E0;

    .line 15762
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0D:Lcom/facebook/ads/redexgen/X/Yh;

    .line 15763
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/67;->A0E:Lcom/facebook/ads/redexgen/X/c7;

    .line 15764
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/67;->A03:Lcom/facebook/ads/redexgen/X/Fy;

    .line 15765
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/67;->A0K:Ljava/lang/String;

    .line 15766
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 15767
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    .line 15768
    invoke-static {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/XS;->A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/XQ;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0C:Lcom/facebook/ads/redexgen/X/XS;

    .line 15769
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/67;->setGravity(I)V

    .line 15770
    sget v3, Lcom/facebook/ads/redexgen/X/67;->A0O:I

    sget v2, Lcom/facebook/ads/redexgen/X/67;->A0O:I

    sget v1, Lcom/facebook/ads/redexgen/X/67;->A0O:I

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/67;->setPadding(IIII)V

    .line 15771
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    .line 15772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/67;->setUpView(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 15773
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A08:Landroid/graphics/Paint;

    .line 15774
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A08:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15775
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A08:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A08:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 15777
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A08:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15778
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/67;)Lcom/facebook/ads/redexgen/X/Fy;
    .locals 0

    .line 15779
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/67;->A03:Lcom/facebook/ads/redexgen/X/Fy;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/67;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/67;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/67;->A0M:[Ljava/lang/String;

    const-string v1, "5LW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "hlZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xb

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 1

    .line 15780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A02:Lcom/facebook/ads/redexgen/X/cq;

    if-nez v0, :cond_0

    .line 15781
    return-void

    .line 15782
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->A1V()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/67;->A07:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->A1V()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/67;->A06:Z

    if-eqz v0, :cond_3

    .line 15783
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A02:Lcom/facebook/ads/redexgen/X/cq;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cq;->ACz()V

    .line 15784
    :cond_3
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/67;->A0L:[B

    return-void

    :array_0
    .array-data 1
        0x44t
        0x46t
        0x55t
        0x48t
        0x52t
        0x54t
        0x42t
        0x4bt
        0x78t
        0x44t
        0x46t
        0x55t
        0x43t
    .end array-data
.end method

.method private A04(Landroid/view/View;)V
    .locals 3

    .line 15785
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15786
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 15787
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/67;)V
    .locals 0

    .line 15788
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/67;->A02()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/67;Z)Z
    .locals 0

    .line 15789
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/67;->A07:Z

    return p1
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/67;Z)Z
    .locals 0

    .line 15790
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/67;->A06:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 2

    .line 15871
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/67;->setUpImageView(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 15872
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/67;->setUpVideoView(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 15873
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/67;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 15874
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A01:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 15875
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 15876
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/67;->A1X(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 15877
    return-void
.end method


# virtual methods
.method public A0A()Z
    .locals 1

    .line 15791
    const/4 v0, 0x0

    return v0
.end method

.method public final A1C()V
    .locals 1

    .line 15792
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->A1C()V

    .line 15793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0C:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XS;->A03()V

    .line 15794
    return-void
.end method

.method public final A1O()Z
    .locals 1

    .line 15795
    const/4 v0, 0x0

    return v0
.end method

.method public final A1R()V
    .locals 1

    .line 15796
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->A01()V

    .line 15798
    :cond_0
    return-void
.end method

.method public final A1S()V
    .locals 5

    .line 15799
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15800
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->A1T()V

    .line 15801
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    sget-object v3, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    sget-object v1, Lcom/facebook/ads/redexgen/X/67;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/67;->A0M:[Ljava/lang/String;

    const-string v1, "GrzUS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/e8;->A05(Lcom/facebook/ads/redexgen/X/et;)V

    .line 15802
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1T()V
    .locals 5

    .line 15803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A03:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0P()Lcom/facebook/ads/redexgen/X/ct;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ct;->getVolume()F

    move-result v4

    .line 15804
    .local v0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->getVolume()F

    move-result v0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_0

    .line 15805
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    sget-object v1, Lcom/facebook/ads/redexgen/X/67;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/67;->A0M:[Ljava/lang/String;

    const-string v1, "cdp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "iOc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/e8;->setVolume(F)V

    .line 15806
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1U()Z
    .locals 4

    .line 15807
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->A06()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/67;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/67;->A0M:[Ljava/lang/String;

    const-string v1, "SbvNib3Q04NWLkmSI4CaBbpy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1V()Z
    .locals 1

    .line 15808
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/67;->A05:Z

    return v0
.end method

.method public final synthetic A1W(Landroid/view/View;)V
    .locals 4

    .line 15809
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/67;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    return-void
.end method

.method public abstract A1X(Lcom/facebook/ads/redexgen/X/gi;)V
.end method

.method public final A1Y(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15810
    .local p1, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->A02()V

    .line 15811
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15812
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0K:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/e8;->A04(Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Ljava/util/Map;)V

    .line 15813
    :cond_0
    return-void
.end method

.method public final getMediaContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .line 15814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A00:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/e8;
    .locals 1

    .line 15815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 15816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A09:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 15817
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/67;->A0A:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15818
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/67;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/67;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/67;->A0N:I

    int-to-float v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/67;->A0N:I

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 15819
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A09:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A08:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 15820
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/67;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/67;->A0O:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/67;->A0O:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/67;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/67;->A0O:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15821
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/67;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/67;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/67;->A0P:I

    int-to-float v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/67;->A0P:I

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 15822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A09:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 15823
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Jg;->onDraw(Landroid/graphics/Canvas;)V

    .line 15824
    return-void
.end method

.method public setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 15825
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/bq;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/bq;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 15826
    return-void
.end method

.method public setCTAInfo(Lcom/facebook/ads/redexgen/X/Nc;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Nc;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15827
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0K:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;)V

    .line 15828
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 15829
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A01:Lcom/facebook/ads/redexgen/X/ZI;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->setVisibility(I)V

    .line 15830
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->setVisibility(I)V

    .line 15831
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/67;->A01:Lcom/facebook/ads/redexgen/X/ZI;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/LM;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/gi;)V

    .line 15832
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LM;->A04()Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jf;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Jf;-><init>(Lcom/facebook/ads/redexgen/X/67;Lcom/facebook/ads/redexgen/X/6C;)V

    .line 15833
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/LM;->A06(Lcom/facebook/ads/redexgen/X/b8;)Lcom/facebook/ads/redexgen/X/LM;

    move-result-object v0

    .line 15834
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/LM;->A07(Ljava/lang/String;)V

    .line 15835
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 15836
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/67;->A05:Z

    .line 15837
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/cq;)V
    .locals 0

    .line 15838
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/67;->A02:Lcom/facebook/ads/redexgen/X/cq;

    .line 15839
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 3

    .line 15840
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZI;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/ZI;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A01:Lcom/facebook/ads/redexgen/X/ZI;

    .line 15841
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15842
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/67;->A01:Lcom/facebook/ads/redexgen/X/ZI;

    .line 15843
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1K(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cw;-><init>(Lcom/facebook/ads/redexgen/X/67;)V

    .line 15844
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 15845
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A01:Lcom/facebook/ads/redexgen/X/ZI;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/67;->A04(Landroid/view/View;)V

    .line 15846
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 3

    .line 15847
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A00:Landroid/widget/RelativeLayout;

    .line 15848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A00:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/67;->A04(Landroid/view/View;)V

    .line 15849
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A0C:Lcom/facebook/ads/redexgen/X/XS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0E:Lcom/facebook/ads/redexgen/X/c7;

    .line 15850
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XS;->A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/XR;

    move-result-object v2

    .line 15851
    .local v0, "supported":Lcom/facebook/ads/redexgen/X/XR;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0E:Lcom/facebook/ads/redexgen/X/c7;

    .line 15852
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 15853
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0H()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XR;->A01:Z

    .line 15854
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A00(Z)V

    .line 15855
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0C:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 15856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0E:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 15857
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A00:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cv;-><init>(Lcom/facebook/ads/redexgen/X/67;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15859
    :cond_0
    :goto_0
    return-void

    .line 15860
    :cond_1
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/XR;->A00:Z

    if-eqz v0, :cond_0

    .line 15861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A00:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cu;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cu;-><init>(Lcom/facebook/ads/redexgen/X/67;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 3

    .line 15862
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/67;->A0K:Ljava/lang/String;

    .line 15863
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 15864
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    new-instance v0, Lcom/facebook/ads/redexgen/X/e8;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/e8;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    .line 15865
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15866
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    .line 15867
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A1M(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cx;-><init>(Lcom/facebook/ads/redexgen/X/67;)V

    .line 15868
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 15869
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/67;->A04(Landroid/view/View;)V

    .line 15870
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 15878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e8;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 15879
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 2

    .line 15880
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A01:Lcom/facebook/ads/redexgen/X/ZI;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->setVisibility(I)V

    .line 15881
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->setVisibility(I)V

    .line 15882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/e8;->setVideoURI(Ljava/lang/String;)V

    .line 15883
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0J:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A03(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 15884
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0F:Lcom/facebook/ads/redexgen/X/EA;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A03(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 15885
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0H:Lcom/facebook/ads/redexgen/X/E2;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A03(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 15886
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0G:Lcom/facebook/ads/redexgen/X/E4;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A03(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 15887
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/67;->A04:Lcom/facebook/ads/redexgen/X/e8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/67;->A0I:Lcom/facebook/ads/redexgen/X/E0;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/e8;->A03(Lcom/facebook/ads/redexgen/X/UN;)V

    .line 15888
    return-void
.end method
