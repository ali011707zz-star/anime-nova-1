.class public final Lcom/facebook/ads/redexgen/X/Df;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eu;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A01:Landroid/graphics/Paint;

.field public final A02:Landroid/graphics/RectF;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/VI;

.field public final A05:Lcom/facebook/ads/redexgen/X/Dr;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 698
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aghB38UhEEJpk0kXnwVgQHJdsNEW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z42NiOwJIVHIw0Yvb2zaIIHOyWtQtdjq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3gFse8uXyFGORzgMyq8kaPi65dxCnZzv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Jw8apcEAXkOZ3AQdkmgk3jwFJH7gSyWz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3SkqDykKznuf11rk6OObVQ9S0DbCfrGf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LUP6WVZdZh28wzzt0Y5b2oxyslCE6YSF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "OrWA41O07SU0jmvClar47c0fhMdTsOQM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Df;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Df;->A06()V

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Df;->A09:I

    .line 699
    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Df;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;)V
    .locals 1

    .line 34150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Df;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;Z)V

    .line 34151
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;Z)V
    .locals 4

    .line 34152
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34153
    new-instance v0, Lcom/facebook/ads/redexgen/X/3W;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3W;-><init>(Lcom/facebook/ads/redexgen/X/Df;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/Dr;

    .line 34154
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/VI;

    .line 34155
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 34156
    if-eqz p3, :cond_0

    .line 34157
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:Landroid/graphics/RectF;

    .line 34158
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:Landroid/graphics/Paint;

    .line 34159
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34160
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->setColorFilter(I)V

    .line 34161
    sget v3, Lcom/facebook/ads/redexgen/X/Df;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/Df;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/Df;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Df;->A09:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->setPadding(IIII)V

    .line 34162
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34163
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A05()V

    .line 34164
    new-instance v0, Lcom/facebook/ads/redexgen/X/fB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fB;-><init>(Lcom/facebook/ads/redexgen/X/Df;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34165
    return-void

    .line 34166
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Df;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 34167
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Df;)Lcom/facebook/ads/redexgen/X/VI;
    .locals 0

    .line 34168
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/VI;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Df;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 34169
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A07:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A07:[Ljava/lang/String;

    const-string v1, "46k42TMmXNLOzm12QaWH4fref2fTAqwO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x49

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04()V
    .locals 1

    .line 34170
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A1A:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34171
    return-void
.end method

.method private A05()V
    .locals 1

    .line 34172
    sget-object v0, Lcom/facebook/ads/redexgen/X/YM;->A1B:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YN;->A01(Lcom/facebook/ads/redexgen/X/YM;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34173
    return-void
.end method

.method public static A06()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Df;->A06:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2ct
        0x14t
        0x15t
        0x4t
        0x41t
        0x20t
        0x5t
    .end array-data
.end method

.method private A07()Z
    .locals 2

    .line 34174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getVolume()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Df;)Z
    .locals 0

    .line 34175
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A07()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A09()V
    .locals 1

    .line 34176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-nez v0, :cond_0

    .line 34177
    return-void

    .line 34178
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34179
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A04()V

    .line 34180
    :goto_0
    return-void

    .line 34181
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A05()V

    goto :goto_0
.end method

.method public final AAv(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 2

    .line 34182
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_0

    .line 34184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A05(Lcom/facebook/ads/redexgen/X/UN;)Z

    .line 34185
    :cond_0
    return-void
.end method

.method public final AKV(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 2

    .line 34186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_0

    .line 34187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A06(Lcom/facebook/ads/redexgen/X/UN;)Z

    .line 34188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34189
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 34190
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->getWidth()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    .line 34191
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->getHeight()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 34192
    .local v1, "y":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 34193
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->getHeight()I

    move-result v0

    int-to-float v1, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 34194
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/Df;->A08:I

    int-to-float v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A07:[Ljava/lang/String;

    const-string v1, "zT7YbptMnSmKw0M5I4XTvaxbvvVXxWiN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "NI8lQWe2kpQIwBdYvxwMMOMmXOv2vWWW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Df;->A08:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 34195
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 34196
    return-void

    .line 34197
    :cond_0
    int-to-float v3, v4

    int-to-float v2, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setBackgroundPaintColor(I)V
    .locals 1

    .line 34198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34199
    return-void
.end method
