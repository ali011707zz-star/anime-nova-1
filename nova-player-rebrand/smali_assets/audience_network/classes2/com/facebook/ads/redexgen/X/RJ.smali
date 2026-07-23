.class public final Lcom/facebook/ads/redexgen/X/RJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFlinger"
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/animation/Interpolator;

.field public A01:Landroid/widget/OverScroller;

.field public A02:I

.field public A03:I

.field public A04:Z

.field public A05:Z

.field public final synthetic A06:Lcom/facebook/ads/redexgen/X/7M;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1608
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YAUr0vF6CX8YQIb3U2BTwiKsPx4egdml"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mCzYZBoaiKXOzjUHkKBQEDESozpM1xd6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "icS38dGHdjVFjizVfUSTymHnsbTrfSoO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cz24QPO5JMZmQB4F0QhCndjSq8meDVtx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FtYcbE5Uq8HUJyIzKb3J4QjvmALEd3tS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OczTw8YbFDCs0vVm57WwAmFlfg0gTpir"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "toWNn3QT1tQgvY3MKWHjSENw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YozzgSFsuZbL3IkC1bDOEp8MFgumFV8x"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RJ;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61812
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61813
    sget-object v0, Lcom/facebook/ads/redexgen/X/7M;->A1A:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Landroid/view/animation/Interpolator;

    .line 61814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A04:Z

    .line 61815
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A05:Z

    .line 61816
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7M;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7M;->A1A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A01:Landroid/widget/OverScroller;

    .line 61817
    return-void
.end method

.method private A00(F)F
    .locals 3

    .line 61818
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 61819
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 61820
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    return v0
.end method

.method private A01(IIII)I
    .locals 10

    .line 61821
    move-object v4, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 61822
    .local v1, "absDx":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 61823
    .local v2, "absDy":I
    if-le v6, v5, :cond_3

    const/4 v9, 0x1

    .line 61824
    .local v3, "horizontal":Z
    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 61825
    .local v4, "velocity":I
    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 61826
    .local v5, "delta":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getWidth()I

    move-result v8

    .line 61827
    .local v6, "containerSize":I
    :goto_1
    div-int/lit8 v4, v8, 0x2

    .line 61828
    .local v7, "halfContainerSize":I
    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    int-to-float v0, v8

    div-float/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 61829
    .local v8, "distanceRatio":F
    int-to-float v2, v4

    int-to-float v1, v4

    .line 61830
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/RJ;->A00(F)F

    move-result v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    .line 61831
    .local p0, "distance":F
    if-lez v7, :cond_0

    .line 61832
    int-to-float v0, v7

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 61833
    .local v9, "duration":I
    .end local p1    # null:I
    .restart local v9    # "duration":I
    :goto_2
    const/16 v0, 0x7d0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61834
    .end local v9    # "duration":I
    :cond_0
    if-eqz v9, :cond_1

    :goto_3
    int-to-float v1, v6

    .line 61835
    .local p1, "absDelta":F
    int-to-float v0, v8

    div-float/2addr v1, v0

    add-float/2addr v1, v3

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_2

    .line 61836
    :cond_1
    move v6, v5

    goto :goto_3

    .line 61837
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getHeight()I

    move-result v8

    goto :goto_1

    .line 61838
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v1, "0orcdyFTKXkoGK9yWPRw9CMcRo5SNB9j"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "sq5WBRFpbSiYOu42pzh1wsqhDGiHcevd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/RJ;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v1, "lXzWc938MQZaj6BgS1Y9BEfSDAuAR6qF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "B8zmNNge3ag7Hwi7A1PWi4fqxiL6HNqU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x7b

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x9

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v1, "TeOjcoFpg61NRcWtZ7RqEgvJb0vCzhPX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "wzSzDJFWC0w6xe3VuPJPH24U0YXOvF2u"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/RJ;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x44t
        0xet
        0x41t
        0x51t
        0x60t
        0x5dt
        0x5at
        0x5at
    .end array-data
.end method

.method private final A04()V
    .locals 1

    .line 61839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A05:Z

    .line 61840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A04:Z

    .line 61841
    return-void
.end method

.method private final A05()V
    .locals 1

    .line 61842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A04:Z

    .line 61843
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A05:Z

    if-eqz v0, :cond_0

    .line 61844
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RJ;->A07()V

    .line 61845
    :cond_0
    return-void
.end method

.method private final A06(IIII)V
    .locals 1

    .line 61846
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/RJ;->A01(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/RJ;->A0B(III)V

    .line 61847
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 61848
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A04:Z

    if-eqz v0, :cond_0

    .line 61849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A05:Z

    .line 61850
    :goto_0
    return-void

    .line 61851
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/7M;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 61852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Ph;->A0D(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final A08()V
    .locals 1

    .line 61853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/7M;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 61854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A01:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 61855
    return-void
.end method

.method public final A09(II)V
    .locals 9

    .line 61856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->setScrollState(I)V

    .line 61857
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A02:I

    .line 61858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A01:Landroid/widget/OverScroller;

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v4, p2

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 61859
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RJ;->A07()V

    .line 61860
    return-void
.end method

.method public final A0A(II)V
    .locals 1

    .line 61861
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/RJ;->A06(IIII)V

    .line 61862
    return-void
.end method

.method public final A0B(III)V
    .locals 1

    .line 61863
    sget-object v0, Lcom/facebook/ads/redexgen/X/7M;->A1A:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/RJ;->A0C(IIILandroid/view/animation/Interpolator;)V

    .line 61864
    return-void
.end method

.method public final A0C(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .line 61865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 61866
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RJ;->A00:Landroid/view/animation/Interpolator;

    .line 61867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A01:Landroid/widget/OverScroller;

    .line 61868
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->setScrollState(I)V

    .line 61869
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A02:I

    .line 61870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RJ;->A01:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, p3

    move v4, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 61871
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_2

    .line 61872
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RJ;->A01:Landroid/widget/OverScroller;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v1, "88zIldbbkktihn9hTQ4sgRWvKPoy0Har"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "wazVAycqzf9kUc8ZZnvbPZ6jaLgaodB2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 61873
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RJ;->A07()V

    .line 61874
    return-void
.end method

.method public final A0D(IILandroid/view/animation/Interpolator;)V
    .locals 3

    .line 61875
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/RJ;->A01(IIII)I

    move-result v0

    .line 61876
    if-nez p3, :cond_0

    sget-object p3, Lcom/facebook/ads/redexgen/X/7M;->A1A:Landroid/view/animation/Interpolator;

    .line 61877
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/RJ;->A0C(IIILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    .line 61878
    sget-object v2, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v1, "4ylqCkbib8Hqjgb9G4JU7JWl2ANwoVnp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final run()V
    .locals 21

    .line 61879
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    if-nez v0, :cond_0

    .line 61880
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/RJ;->A08()V

    .line 61881
    return-void

    .line 61882
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/RJ;->A04()V

    .line 61883
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1K()V

    .line 61884
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A01:Landroid/widget/OverScroller;

    move-object/from16 v20, v0

    .line 61885
    .local v1, "scroller":Landroid/widget/OverScroller;
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/R2;->A02:Lcom/facebook/ads/redexgen/X/RF;

    .line 61886
    .local v2, "smoothScroller":Lcom/facebook/ads/redexgen/X/RF;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_1b

    .line 61887
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1A(Lcom/facebook/ads/redexgen/X/7M;)[I

    move-result-object v14

    .line 61888
    .local v3, "scrollConsumed":[I
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v7

    .line 61889
    .local v11, "x":I
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    .line 61890
    .local v12, "y":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A02:I

    sub-int v5, v7, v0

    .line 61891
    .local v13, "dx":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A03:I

    sub-int v4, v6, v0

    .line 61892
    .local v14, "dy":I
    const/4 v3, 0x0

    .line 61893
    .local v15, "hresult":I
    const/4 v2, 0x0

    .line 61894
    .local v16, "vresult":I
    iput v7, v8, Lcom/facebook/ads/redexgen/X/RJ;->A02:I

    .line 61895
    iput v6, v8, Lcom/facebook/ads/redexgen/X/RJ;->A03:I

    .line 61896
    const/4 v1, 0x0

    .local v17, "overscrollX":I
    const/4 v0, 0x0

    .line 61897
    .local v18, "overscrollY":I
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v11, v11

    move v12, v5

    move v13, v4

    invoke-virtual/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/7M;->A1w(II[I[II)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_1

    .line 61898
    aget v11, v14, v10

    sub-int/2addr v5, v11

    .line 61899
    aget v11, v14, v12

    sub-int/2addr v4, v11

    .line 61900
    :cond_1
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v11, v11, Lcom/facebook/ads/redexgen/X/7M;->A04:Lcom/facebook/ads/redexgen/X/Qq;

    if-eqz v11, :cond_5

    .line 61901
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/7M;->A1L()V

    .line 61902
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/7M;->A1M()V

    .line 61903
    const/4 v13, 0x0

    const/16 v12, 0x9

    const/16 v11, 0x73

    invoke-static {v13, v12, v11}, Lcom/facebook/ads/redexgen/X/RJ;->A02(III)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/P4;->A01(Ljava/lang/String;)V

    .line 61904
    iget-object v14, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v13, v11, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    sget-object v15, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v11, 0x7

    aget-object v12, v15, v11

    const/4 v11, 0x0

    aget-object v15, v15, v11

    const/4 v11, 0x6

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v15, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v12, v11, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v15, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v12, "nozOsXlmQMzJhvkopjwZaheFFVNTeY58"

    const/4 v11, 0x1

    aput-object v12, v15, v11

    const-string v12, "LtzfvJebeScyRtmgs1USyUey2pVvSmq5"

    const/4 v11, 0x5

    aput-object v12, v15, v11

    invoke-virtual {v14, v13}, Lcom/facebook/ads/redexgen/X/7M;->A1j(Lcom/facebook/ads/redexgen/X/RH;)V

    .line 61905
    if-eqz v5, :cond_3

    .line 61906
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v12, v1, Lcom/facebook/ads/redexgen/X/7M;->A0r:Lcom/facebook/ads/redexgen/X/RA;

    iget-object v14, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    sget-object v3, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v3, v3, v1

    const/16 v1, 0x13

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v1, 0x39

    if-eq v3, v1, :cond_b

    sget-object v11, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v3, "aF9lT9JucYAVgVWisB0rNkK4be7J2iGb"

    const/4 v1, 0x4

    aput-object v3, v11, v1

    iget-object v1, v14, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v13, v5, v12, v1}, Lcom/facebook/ads/redexgen/X/R2;->A1f(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v3

    .line 61907
    sub-int v1, v5, v3

    .line 61908
    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    .line 61909
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7M;->A0r:Lcom/facebook/ads/redexgen/X/RA;

    sget-object v12, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v12, v12, v0

    const/16 v0, 0x13

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v0, 0x39

    if-eq v12, v0, :cond_a

    sget-object v13, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v12, "UcFH7yF8zZNprQitZtXhkmlCMHIdnioP"

    const/4 v0, 0x7

    aput-object v12, v13, v0

    const-string v12, "hCBROqFKcvdbLIHuO2wEis8Nwj1iktft"

    const/4 v0, 0x0

    aput-object v12, v13, v0

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v11, v4, v2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1g(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v2

    .line 61910
    sub-int v0, v4, v2

    .line 61911
    :cond_4
    :goto_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/P4;->A00()V

    .line 61912
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/7M;->A1Q()V

    .line 61913
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/7M;->A1N()V

    .line 61914
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v11, v10}, Lcom/facebook/ads/redexgen/X/7M;->A1p(Z)V

    .line 61915
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/RF;->A0E()Z

    move-result v10

    if-nez v10, :cond_5

    .line 61916
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/RF;->A0F()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 61917
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v10, v10, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/RH;->A03()I

    move-result v11

    .line 61918
    .local v5, "adapterSize":I
    if-nez v11, :cond_7

    .line 61919
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/RF;->A09()V

    .line 61920
    .end local v16    # "vresult":I
    .end local v17    # "overscrollX":I
    .end local v18    # "overscrollY":I
    .local v5, "vresult":I
    .local v7, "overscrollX":I
    .local v8, "overscrollY":I
    :cond_5
    :goto_2
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v10, v10, Lcom/facebook/ads/redexgen/X/7M;->A0v:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 61921
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/7M;->invalidate()V

    .line 61922
    :cond_6
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/7M;->getOverScrollMode()I

    move-result v10

    const/4 v12, 0x2

    if-eq v10, v12, :cond_d

    .line 61923
    iget-object v14, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    sget-object v13, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v10, 0x7

    aget-object v11, v13, v10

    const/4 v10, 0x0

    aget-object v13, v13, v10

    const/4 v10, 0x6

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v11, v10, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61924
    :cond_7
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/RF;->A07()I

    move-result v10

    if-lt v10, v11, :cond_8

    .line 61925
    add-int/lit8 v10, v11, -0x1

    invoke-virtual {v9, v10}, Lcom/facebook/ads/redexgen/X/RF;->A0A(I)V

    .line 61926
    sub-int v11, v5, v1

    sub-int v10, v4, v0

    invoke-static {v9, v11, v10}, Lcom/facebook/ads/redexgen/X/RF;->A05(Lcom/facebook/ads/redexgen/X/RF;II)V

    goto :goto_2

    .line 61927
    :cond_8
    sub-int v12, v5, v1

    sget-object v11, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v11, v11, v10

    const/16 v10, 0x13

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v10, 0x39

    if-eq v11, v10, :cond_9

    sget-object v13, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v11, "2vzJUgZGYJyf60lr7OoRSSfYHAbPRQwN"

    const/4 v10, 0x1

    aput-object v11, v13, v10

    const-string v11, "FZzkKBCO3vggmWhfitA4hZZwekV7eOzC"

    const/4 v10, 0x5

    aput-object v11, v13, v10

    sub-int v10, v4, v0

    invoke-static {v9, v12, v10}, Lcom/facebook/ads/redexgen/X/RF;->A05(Lcom/facebook/ads/redexgen/X/RF;II)V

    goto :goto_2

    :cond_9
    sub-int v10, v4, v0

    invoke-static {v9, v12, v10}, Lcom/facebook/ads/redexgen/X/RF;->A05(Lcom/facebook/ads/redexgen/X/RF;II)V

    goto :goto_2

    :cond_a
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v11, v4, v2, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1g(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v2

    .line 61928
    sub-int v0, v4, v2

    goto/16 :goto_1

    :cond_b
    iget-object v1, v14, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    invoke-virtual {v13, v5, v12, v1}, Lcom/facebook/ads/redexgen/X/R2;->A1f(ILcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/RH;)I

    move-result v3

    .line 61929
    sub-int v1, v5, v3

    goto/16 :goto_0

    :cond_c
    sget-object v13, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v11, "k"

    const/4 v10, 0x6

    aput-object v11, v13, v10

    invoke-virtual {v14, v5, v4}, Lcom/facebook/ads/redexgen/X/7M;->A1b(II)V

    .line 61930
    :cond_d
    iget-object v13, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v16, v1

    move/from16 v17, v0

    move v14, v3

    move v15, v2

    invoke-virtual/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/7M;->A1v(IIII[II)Z

    move-result v10

    if-nez v10, :cond_13

    if-nez v1, :cond_e

    if-eqz v0, :cond_13

    .line 61931
    :cond_e
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v10

    float-to-int v11, v10

    .line 61932
    .local v9, "vel":I
    const/4 v13, 0x0

    .line 61933
    .local v16, "velX":I
    if-eq v1, v7, :cond_f

    .line 61934
    if-gez v1, :cond_26

    neg-int v13, v11

    .line 61935
    .end local v16    # "velX":I
    .local v4, "velX":I
    :cond_f
    :goto_3
    const/4 v10, 0x0

    .line 61936
    .local v16, "velY":I
    if-eq v0, v6, :cond_25

    .line 61937
    if-gez v0, :cond_23

    neg-int v11, v11

    .line 61938
    .end local v16    # "velY":I
    .local v6, "velY":I
    .end local v3    # "scrollConsumed":[I
    .local v16, "scrollConsumed":[I
    :goto_4
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/7M;->getOverScrollMode()I

    move-result v10

    if-eq v10, v12, :cond_10

    .line 61939
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v10, v13, v11}, Lcom/facebook/ads/redexgen/X/7M;->A1a(II)V

    .line 61940
    :cond_10
    if-nez v13, :cond_11

    if-eq v1, v7, :cond_11

    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    if-nez v11, :cond_12

    if-eq v0, v6, :cond_12

    .line 61941
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-nez v0, :cond_13

    .line 61942
    :cond_12
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 61943
    .end local v3
    .restart local v16    # "scrollConsumed":[I
    :cond_13
    if-nez v3, :cond_14

    if-eqz v2, :cond_15

    .line 61944
    :cond_14
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    sget-object v1, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_22

    sget-object v6, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v1, "MhQkdHLAPY6K0mrvY0I8ZqPtgRA1J8Gx"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    invoke-virtual {v7, v3, v2}, Lcom/facebook/ads/redexgen/X/7M;->A1d(II)V

    .line 61945
    :cond_15
    :goto_5
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7M;->A19(Lcom/facebook/ads/redexgen/X/7M;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 61946
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->invalidate()V

    .line 61947
    :cond_16
    if-eqz v4, :cond_21

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A23()Z

    move-result v0

    if-eqz v0, :cond_21

    if-ne v2, v4, :cond_21

    const/4 v1, 0x1

    .line 61948
    .local v3, "fullyConsumedVertical":Z
    :goto_6
    if-eqz v5, :cond_20

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/R2;->A22()Z

    move-result v0

    if-eqz v0, :cond_20

    if-ne v3, v5, :cond_20

    const/4 v0, 0x1

    .line 61949
    .local v4, "fullyConsumedHorizontal":Z
    :goto_7
    if-nez v5, :cond_17

    if-eqz v4, :cond_18

    :cond_17
    if-nez v0, :cond_18

    if-eqz v1, :cond_1f

    :cond_18
    const/4 v1, 0x1

    .line 61950
    .local v6, "fullyConsumedAny":Z
    :goto_8
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_19

    if-nez v1, :cond_1e

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    .line 61951
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A1t(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 61952
    :cond_19
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->setScrollState(I)V

    .line 61953
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7M;->A10()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 61954
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A02:Lcom/facebook/ads/redexgen/X/hs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hs;->A02()V

    .line 61955
    :cond_1a
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A1Z(I)V

    .line 61956
    .end local v3    # "fullyConsumedVertical":Z
    .end local v4    # "fullyConsumedHorizontal":Z
    .end local v5    # "vresult":I
    .end local v6    # "fullyConsumedAny":Z
    .end local v7    # "overscrollX":I
    .end local v8    # "overscrollY":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    .end local v15    # "hresult":I
    .end local v16    # "scrollConsumed":[I
    :cond_1b
    :goto_9
    if-eqz v9, :cond_1d

    .line 61957
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/RF;->A0E()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 61958
    const/4 v0, 0x0

    invoke-static {v9, v0, v0}, Lcom/facebook/ads/redexgen/X/RF;->A05(Lcom/facebook/ads/redexgen/X/RF;II)V

    .line 61959
    :cond_1c
    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A05:Z

    if-nez v0, :cond_1d

    .line 61960
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/RF;->A09()V

    .line 61961
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/RJ;->A05()V

    .line 61962
    return-void

    .line 61963
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/RJ;->A07()V

    .line 61964
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A03:Lcom/facebook/ads/redexgen/X/Qd;

    if-eqz v0, :cond_1b

    .line 61965
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A03:Lcom/facebook/ads/redexgen/X/Qd;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/RJ;->A06:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v1, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/Qd;->A0B(Lcom/facebook/ads/redexgen/X/7M;II)V

    goto :goto_9

    .line 61966
    :cond_1f
    const/4 v1, 0x0

    goto :goto_8

    .line 61967
    :cond_20
    const/4 v0, 0x0

    goto :goto_7

    .line 61968
    :cond_21
    const/4 v1, 0x0

    goto :goto_6

    :cond_22
    sget-object v6, Lcom/facebook/ads/redexgen/X/RJ;->A08:[Ljava/lang/String;

    const-string v1, "5ZFiatMajPEhKsDar8BqfzNMKoQTJ"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    invoke-virtual {v7, v3, v2}, Lcom/facebook/ads/redexgen/X/7M;->A1d(II)V

    goto/16 :goto_5

    .line 61969
    :cond_23
    if-lez v0, :cond_24

    goto/16 :goto_4

    :cond_24
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 61970
    :cond_25
    move v11, v10

    goto/16 :goto_4

    .line 61971
    :cond_26
    if-lez v1, :cond_27

    move v13, v11

    goto/16 :goto_3

    :cond_27
    const/4 v13, 0x0

    goto/16 :goto_3
.end method
