.class public final Lcom/facebook/ads/redexgen/X/oL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9F;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9Q;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9Q;)V
    .locals 1

    .line 102240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102241
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9Q;->A00(Lcom/facebook/ads/redexgen/X/9Q;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A02:I

    .line 102242
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9Q;->A01(Lcom/facebook/ads/redexgen/X/9Q;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A01:I

    .line 102243
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9Q;->A02(Lcom/facebook/ads/redexgen/X/9Q;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A05:I

    .line 102244
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9Q;->A03(Lcom/facebook/ads/redexgen/X/9Q;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A04:I

    .line 102245
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9Q;->A04(Lcom/facebook/ads/redexgen/X/9Q;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A03:I

    .line 102246
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9Q;->A05(Lcom/facebook/ads/redexgen/X/9Q;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A00:I

    .line 102247
    return-void
.end method

.method public static A00(I)I
    .locals 0

    .line 102248
    packed-switch p0, :pswitch_data_0

    .line 102249
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 102250
    :pswitch_1
    const p0, 0xf906

    return p0

    .line 102251
    :pswitch_2
    const p0, 0x52080

    return p0

    .line 102252
    :pswitch_3
    const p0, 0x3e800

    return p0

    .line 102253
    :pswitch_4
    const/16 p0, 0x1f40

    return p0

    .line 102254
    :pswitch_5
    const p0, 0x2ebae4

    return p0

    .line 102255
    :pswitch_6
    const/16 p0, 0x1b58

    return p0

    .line 102256
    :pswitch_7
    const/16 p0, 0x3e80

    return p0

    .line 102257
    :pswitch_8
    const p0, 0x186a0

    return p0

    .line 102258
    :pswitch_9
    const p0, 0x9c40

    return p0

    .line 102259
    :pswitch_a
    const p0, 0x225510

    return p0

    .line 102260
    :pswitch_b
    const p0, 0x2ee00

    return p0

    .line 102261
    :pswitch_c
    const p0, 0xbb800

    return p0

    .line 102262
    :pswitch_d
    const p0, 0x13880

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final A01(I)I
    .locals 4

    .line 102263
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/oL;->A00(I)I

    move-result v1

    .line 102264
    .local v0, "maxByteRate":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A03:I

    int-to-long v2, v0

    int-to-long v0, v1

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/As;->A02(J)I

    move-result v0

    return v0
.end method

.method private final A02(II)I
    .locals 4

    .line 102265
    iget v2, p0, Lcom/facebook/ads/redexgen/X/oL;->A04:I

    .line 102266
    .local v0, "bufferSizeUs":I
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 102267
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A00:I

    mul-int/2addr v2, v0

    .line 102268
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 102269
    const/16 v1, 0x8

    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pr;->A00(IILjava/math/RoundingMode;)I

    move-result v0

    .line 102270
    .local v1, "byteRate":I
    :goto_0
    int-to-long v2, v2

    int-to-long v0, v0

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/As;->A02(J)I

    move-result v0

    return v0

    .line 102271
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/oL;->A00(I)I

    move-result v0

    goto :goto_0
.end method

.method public static A03(III)I
    .locals 3

    .line 102272
    int-to-long v2, p0

    int-to-long v0, p1

    mul-long/2addr v2, v0

    int-to-long v0, p2

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    invoke-static {v2, p0}, Lcom/facebook/ads/redexgen/X/As;->A02(J)I

    move-result v0

    return v0
.end method

.method private final A04(III)I
    .locals 3

    .line 102273
    iget v2, p0, Lcom/facebook/ads/redexgen/X/oL;->A05:I

    mul-int/2addr v2, p1

    .line 102274
    .local v0, "targetBufferSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A02:I

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/oL;->A03(III)I

    move-result v1

    .line 102275
    .local v1, "minAppBufferSize":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oL;->A01:I

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/oL;->A03(III)I

    move-result v0

    .line 102276
    .local v2, "maxAppBufferSize":I
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v0

    return v0
.end method

.method private final A05(IIIIII)I
    .locals 1

    .line 102277
    packed-switch p3, :pswitch_data_0

    .line 102278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 102279
    :pswitch_0
    invoke-direct {p0, p2, p6}, Lcom/facebook/ads/redexgen/X/oL;->A02(II)I

    move-result v0

    return v0

    .line 102280
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/oL;->A01(I)I

    move-result v0

    return v0

    .line 102281
    :pswitch_2
    invoke-direct {p0, p1, p5, p4}, Lcom/facebook/ads/redexgen/X/oL;->A04(III)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A75(IIIIIID)I
    .locals 3

    .line 102282
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/oL;->A05(IIIIII)I

    move-result v0

    .line 102283
    .local v0, "bufferSize":I
    int-to-double v1, v0

    mul-double/2addr v1, p7

    double-to-int v0, v1

    .line 102284
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 102285
    add-int/2addr v0, p4

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p4

    mul-int/2addr v0, p4

    return v0
.end method
