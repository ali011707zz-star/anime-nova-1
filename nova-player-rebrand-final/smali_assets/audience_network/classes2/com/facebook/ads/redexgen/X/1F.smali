.class public abstract Lcom/facebook/ads/redexgen/X/1F;
.super Lcom/facebook/ads/redexgen/X/7M;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/e2;,
        Lcom/facebook/ads/internal/view/hscroll/SnapRecyclerView$Direction;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/hr;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/e2;

.field public A03:Z

.field public A04:Z

.field public A05:I

.field public final A06:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 75
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ySOBxSJ7y2GELC2cR9WRTK6hAhZYocJS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8dRmuXbfMCidMDGiSpjEcbCkPgx3mm8G"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "li61zS9WhZTBvI47lvKtLPcqAcNkij1S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lH5BfkXLxOyhi"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "q0Ccq4Fbg7VKO8sxkIKNcZgKtjQ1fZ14"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ep7ggC7RKpg7Ol5cXUmXF8JhcfOkgUip"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fpgtpMAGWAVh3a0xLZP1kWTjCGk3An57"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "s5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1F;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1F;->A0A()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 2

    .line 5039
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7M;-><init>(Landroid/content/Context;)V

    .line 5040
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1F;->A05:I

    .line 5041
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1F;->A00:I

    .line 5042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A03:Z

    .line 5043
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1F;->A04:Z

    .line 5044
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1F;->A05()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A06:I

    .line 5045
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/1F;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5046
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V
    .locals 2

    .line 5047
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7M;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5048
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1F;->A05:I

    .line 5049
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1F;->A00:I

    .line 5050
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A03:Z

    .line 5051
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1F;->A04:Z

    .line 5052
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1F;->A05()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A06:I

    .line 5053
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/1F;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5054
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 5055
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7M;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5056
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1F;->A05:I

    .line 5057
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1F;->A00:I

    .line 5058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A03:Z

    .line 5059
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1F;->A04:Z

    .line 5060
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1F;->A05()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A06:I

    .line 5061
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/1F;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5062
    return-void
.end method

.method private A05()I
    .locals 1

    .line 5063
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1F;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private A06(I)I
    .locals 5

    .line 5064
    iget v1, p0, Lcom/facebook/ads/redexgen/X/1F;->A00:I

    sub-int/2addr v1, p1

    .line 5065
    .local v0, "scrollX":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A02:Lcom/facebook/ads/redexgen/X/e2;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/e2;->A8o(I)I

    move-result v4

    .line 5066
    .local v1, "delta":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A06:I

    if-le v1, v0, :cond_0

    .line 5067
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A05:I

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/1F;->A08(II)I

    move-result v0

    return v0

    .line 5068
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A06:I

    neg-int v0, v0

    if-ge v1, v0, :cond_2

    .line 5069
    iget v3, p0, Lcom/facebook/ads/redexgen/X/1F;->A05:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/1F;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1F;->A08:[Ljava/lang/String;

    const-string v1, "Vh4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/1F;->A07(II)I

    move-result v0

    return v0

    .line 5070
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A05:I

    return v0
.end method

.method private A07(II)I
    .locals 1

    .line 5071
    sub-int/2addr p1, p2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private A08(II)I
    .locals 1

    .line 5072
    add-int/2addr p1, p2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1F;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1F;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1F;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x4t
        0x17t
        0xat
        0x19t
        -0x5t
        0xet
        0xct
        0x22t
        0xct
        0x15t
        0xet
        0x1bt
        -0x1t
        0x12t
        0xet
        0x20t
        -0x37t
        0x18t
        0x17t
        0x15t
        0x22t
        -0x37t
        0x1ct
        0x1et
        0x19t
        0x19t
        0x18t
        0x1bt
        0x1dt
        0x1ct
        -0x37t
        -0xbt
        0x12t
        0x17t
        0xet
        0xat
        0x1bt
        -0xbt
        0xat
        0x22t
        0x18t
        0x1et
        0x1dt
        -0xat
        0xat
        0x17t
        0xat
        0x10t
        0xet
        0x1bt
    .end array-data
.end method

.method private getItemCount()I
    .locals 1

    .line 5081
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7M;->getAdapter()Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7M;->getAdapter()Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public A20(IZ)V
    .locals 1

    .line 5073
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7M;->getAdapter()Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5074
    return-void

    .line 5075
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1F;->A05:I

    .line 5076
    if-eqz p2, :cond_1

    .line 5077
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7M;->A1Y(I)V

    .line 5078
    :goto_0
    return-void

    .line 5079
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/7M;->A1X(I)V

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 5080
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A05:I

    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 5082
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v5, v0

    .line 5083
    .local v0, "rawX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 5084
    .local v1, "action":I
    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eq v6, v3, :cond_0

    const/4 v0, 0x6

    if-eq v6, v0, :cond_0

    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v7, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1F;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/1F;->A08:[Ljava/lang/String;

    const-string v1, "tIjSEqZVzrzr7cEE0p57iZetopRejSVd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v6, v7, :cond_2

    .line 5085
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A04:Z

    if-eqz v0, :cond_1

    .line 5086
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/1F;->A06(I)I

    move-result v0

    .line 5087
    .local v4, "newPosition":I
    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/1F;->A20(IZ)V

    .line 5088
    .end local v4    # "newPosition":I
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/1F;->A03:Z

    .line 5089
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/1F;->A04:Z

    .line 5090
    return v3

    .line 5091
    :cond_2
    if-eqz v6, :cond_3

    const/4 v0, 0x5

    if-eq v6, v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A03:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne v6, v0, :cond_5

    .line 5092
    :cond_3
    iput v5, p0, Lcom/facebook/ads/redexgen/X/1F;->A00:I

    .line 5093
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1F;->A03:Z

    if-eqz v0, :cond_4

    .line 5094
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/1F;->A03:Z

    .line 5095
    :cond_4
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/1F;->A04:Z

    .line 5096
    :cond_5
    return v4

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setLayoutManager(Lcom/facebook/ads/redexgen/X/R2;)V
    .locals 3

    .line 5097
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/hr;

    if-eqz v0, :cond_0

    .line 5098
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/7M;->setLayoutManager(Lcom/facebook/ads/redexgen/X/R2;)V

    .line 5099
    check-cast p1, Lcom/facebook/ads/redexgen/X/hr;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1F;->A01:Lcom/facebook/ads/redexgen/X/hr;

    .line 5100
    return-void

    .line 5101
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1F;->A09(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSnapDelegate(Lcom/facebook/ads/redexgen/X/e2;)V
    .locals 0

    .line 5102
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1F;->A02:Lcom/facebook/ads/redexgen/X/e2;

    .line 5103
    return-void
.end method
