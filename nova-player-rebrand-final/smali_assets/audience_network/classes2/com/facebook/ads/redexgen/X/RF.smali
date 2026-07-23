.class public abstract Lcom/facebook/ads/redexgen/X/RF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/RD;,
        Lcom/facebook/ads/redexgen/X/RE;
    }
.end annotation


# static fields
.field public static A07:[B


# instance fields
.field public A00:I

.field public A01:Landroid/view/View;

.field public A02:Lcom/facebook/ads/redexgen/X/R2;

.field public A03:Lcom/facebook/ads/redexgen/X/7M;

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/RD;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RF;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61714
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:I

    .line 61715
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/RD;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/RD;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A06:Lcom/facebook/ads/redexgen/X/RD;

    .line 61716
    return-void
.end method

.method private final A00(Landroid/view/View;)I
    .locals 1

    .line 61717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A03:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->A1B(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private final A01(I)Landroid/view/View;
    .locals 1

    .line 61718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/R2;->A1o(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RF;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x14

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
    .locals 1

    const/16 v0, 0x56

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RF;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x6at
        0x4dt
        0x55t
        0x42t
        0x4ft
        0x4at
        0x47t
        0x3t
        0x57t
        0x42t
        0x51t
        0x44t
        0x46t
        0x57t
        0x3t
        0x53t
        0x4ct
        0x50t
        0x4at
        0x57t
        0x4at
        0x4ct
        0x4dt
        0x5t
        0x34t
        0x26t
        0x26t
        0x30t
        0x31t
        0x75t
        0x3at
        0x23t
        0x30t
        0x27t
        0x75t
        0x21t
        0x34t
        0x27t
        0x32t
        0x30t
        0x21t
        0x75t
        0x25t
        0x3at
        0x26t
        0x3ct
        0x21t
        0x3ct
        0x3at
        0x3bt
        0x75t
        0x22t
        0x3dt
        0x3ct
        0x39t
        0x30t
        0x75t
        0x26t
        0x38t
        0x3at
        0x3at
        0x21t
        0x3dt
        0x75t
        0x26t
        0x36t
        0x27t
        0x3at
        0x39t
        0x39t
        0x3ct
        0x3bt
        0x32t
        0x7bt
        0x7bt
        0x4ct
        0x4at
        0x50t
        0x4at
        0x45t
        0x4ct
        0x5bt
        0x7ft
        0x40t
        0x4ct
        0x5et
    .end array-data
.end method

.method private A04(II)V
    .locals 5

    .line 61719
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RF;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 61720
    .local v0, "recyclerView":Lcom/facebook/ads/redexgen/X/7M;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A05:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    if-nez v4, :cond_1

    .line 61721
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RF;->A09()V

    .line 61722
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A04:Z

    .line 61723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A01:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 61724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A01:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/RF;->A00(Landroid/view/View;)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:I

    if-ne v1, v0, :cond_5

    .line 61725
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RF;->A01:Landroid/view/View;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A06:Lcom/facebook/ads/redexgen/X/RD;

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RF;->A0I(Landroid/view/View;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RD;)V

    .line 61726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A06:Lcom/facebook/ads/redexgen/X/RD;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/RD;->A05(Lcom/facebook/ads/redexgen/X/7M;)V

    .line 61727
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RF;->A09()V

    .line 61728
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A05:Z

    if-eqz v0, :cond_3

    .line 61729
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A06:Lcom/facebook/ads/redexgen/X/RD;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/RF;->A0H(IILcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RD;)V

    .line 61730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A06:Lcom/facebook/ads/redexgen/X/RD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RD;->A06()Z

    move-result v1

    .line 61731
    .local v1, "hadJumpTarget":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A06:Lcom/facebook/ads/redexgen/X/RD;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/RD;->A05(Lcom/facebook/ads/redexgen/X/7M;)V

    .line 61732
    if-eqz v1, :cond_3

    .line 61733
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A05:Z

    if-eqz v0, :cond_4

    .line 61734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A04:Z

    .line 61735
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/7M;->A08:Lcom/facebook/ads/redexgen/X/RJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RJ;->A07()V

    .line 61736
    .end local v1    # "hadJumpTarget":Z
    :cond_3
    :goto_1
    return-void

    .line 61737
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RF;->A09()V

    goto :goto_1

    .line 61738
    :cond_5
    const/16 v2, 0x4a

    const/16 v1, 0xc

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RF;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0x33

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RF;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A01:Landroid/view/View;

    goto :goto_0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/RF;II)V
    .locals 0

    .line 61740
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RF;->A04(II)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 61741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A0Y()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 1

    .line 61742
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:I

    return v0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/R2;
    .locals 1

    .line 61743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A02:Lcom/facebook/ads/redexgen/X/R2;

    return-object v0
.end method

.method public final A09()V
    .locals 2

    .line 61744
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A05:Z

    if-nez v0, :cond_0

    .line 61745
    return-void

    .line 61746
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RF;->A0G()V

    .line 61747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A00(Lcom/facebook/ads/redexgen/X/RH;I)I

    .line 61748
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/RF;->A01:Landroid/view/View;

    .line 61749
    iput v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:I

    .line 61750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A04:Z

    .line 61751
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A05:Z

    .line 61752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A02:Lcom/facebook/ads/redexgen/X/R2;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/R2;->A0K(Lcom/facebook/ads/redexgen/X/R2;Lcom/facebook/ads/redexgen/X/RF;)V

    .line 61753
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/RF;->A02:Lcom/facebook/ads/redexgen/X/R2;

    .line 61754
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/RF;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 61755
    return-void
.end method

.method public final A0A(I)V
    .locals 0

    .line 61756
    iput p1, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:I

    .line 61757
    return-void
.end method

.method public final A0B(Landroid/graphics/PointF;)V
    .locals 4

    .line 61758
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 61759
    .local v0, "magnitude":F
    iget v0, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 61760
    iget v0, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 61761
    return-void
.end method

.method public final A0C(Landroid/view/View;)V
    .locals 2

    .line 61762
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RF;->A00(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RF;->A07()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 61763
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RF;->A01:Landroid/view/View;

    .line 61764
    :cond_0
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/7M;Lcom/facebook/ads/redexgen/X/R2;)V
    .locals 3

    .line 61765
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RF;->A03:Lcom/facebook/ads/redexgen/X/7M;

    .line 61766
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RF;->A02:Lcom/facebook/ads/redexgen/X/R2;

    .line 61767
    iget v1, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 61768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A00(Lcom/facebook/ads/redexgen/X/RH;I)I

    .line 61769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A05:Z

    .line 61770
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A04:Z

    .line 61771
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RF;->A07()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/RF;->A01(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A01:Landroid/view/View;

    .line 61772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A03:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A08:Lcom/facebook/ads/redexgen/X/RJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RJ;->A07()V

    .line 61773
    return-void

    .line 61774
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RF;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0E()Z
    .locals 1

    .line 61775
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A04:Z

    return v0
.end method

.method public final A0F()Z
    .locals 1

    .line 61776
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RF;->A05:Z

    return v0
.end method

.method public abstract A0G()V
.end method

.method public abstract A0H(IILcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RD;)V
.end method

.method public abstract A0I(Landroid/view/View;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/RD;)V
.end method
