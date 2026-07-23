.class public final Lcom/facebook/ads/redexgen/X/K2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jv;,
        Lcom/facebook/ads/redexgen/X/Ju;,
        Lcom/facebook/ads/redexgen/X/K1;,
        Lcom/facebook/ads/redexgen/X/Jx;,
        Lcom/facebook/ads/redexgen/X/Jy;,
        Lcom/facebook/ads/redexgen/X/Jz;,
        Lcom/facebook/ads/redexgen/X/K0;,
        Lcom/facebook/ads/redexgen/X/Jw;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:[B

.field public static final A0A:[B

.field public static final A0B:[B


# instance fields
.field public A00:Landroid/graphics/Bitmap;

.field public final A01:Landroid/graphics/Canvas;

.field public final A02:Landroid/graphics/Paint;

.field public final A03:Landroid/graphics/Paint;

.field public final A04:Lcom/facebook/ads/redexgen/X/Ju;

.field public final A05:Lcom/facebook/ads/redexgen/X/Jv;

.field public final A06:Lcom/facebook/ads/redexgen/X/K1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 852
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kwH2IgvZBGVpLaminurwcFHn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "J6e0tkh1Ff6tZSOwzR7AwbvIu8fVWeGQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bmiWbLOqDwiyYFUNe9As1QTlUgH4xYog"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dMXPCdyZdj7A6mfCnV5k3qiAvM2EcvhL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "upBvpVjUbbd4tW9uVknw3ChYtDg3XaKB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lx9xVZ51GyjZV5dkAVxa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4OpeXOwoxJhsdURDQeyl4TBKgN5cofiY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "16zjJfNWedSO35u1fMpvBODfGSUbEH9B"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/K2;->A0A()V

    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/K2;->A09:[B

    .line 853
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/K2;->A0A:[B

    .line 854
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/K2;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 44491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44492
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A02:Landroid/graphics/Paint;

    .line 44493
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/K2;->A02:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44494
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/K2;->A02:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A02:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 44496
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A03:Landroid/graphics/Paint;

    .line 44497
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/K2;->A03:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44498
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/K2;->A03:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A03:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 44500
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A01:Landroid/graphics/Canvas;

    .line 44501
    new-instance v1, Lcom/facebook/ads/redexgen/X/Jv;

    const/4 v6, 0x0

    const/16 v7, 0x23f

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Jv;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/K2;->A05:Lcom/facebook/ads/redexgen/X/Jv;

    .line 44502
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K2;->A0F()[I

    move-result-object v3

    .line 44503
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K2;->A0G()[I

    move-result-object v2

    .line 44504
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K2;->A0H()[I

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ju;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ju;-><init>(I[I[I[I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A04:Lcom/facebook/ads/redexgen/X/Ju;

    .line 44505
    new-instance v0, Lcom/facebook/ads/redexgen/X/K1;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/K1;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    .line 44506
    return-void
.end method

.method public static A00(IIII)I
    .locals 1

    .line 44507
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr p0, v0

    shl-int/lit8 v0, p2, 0x8

    or-int/2addr p0, v0

    or-int/2addr p0, p3

    return p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/4u;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 12

    .line 44508
    const/4 v5, 0x0

    .line 44509
    .end local p5    # null:Landroid/graphics/Paint;
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :cond_0
    const/4 v1, 0x0

    .line 44510
    .local v3, "runLength":I
    const/4 v2, 0x0

    .line 44511
    .local v4, "clutIndex":I
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 44512
    .local v10, "peek":I
    if-eqz v0, :cond_3

    .line 44513
    const/4 v1, 0x1

    .line 44514
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .local v11, "endOfPixelCodeString":Z
    .local p0, "runLength":I
    .local p1, "clutIndex":I
    :goto_0
    if-eqz v1, :cond_2

    move-object/from16 v2, p5

    if-eqz v2, :cond_2

    .line 44515
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44516
    int-to-float v7, p3

    move/from16 v3, p4

    int-to-float v8, v3

    add-int v0, p3, v1

    int-to-float v9, v0

    add-int/lit8 v0, v3, 0x1

    int-to-float v10, v0

    move-object v11, v2

    move-object/from16 v6, p6

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 44517
    :cond_2
    add-int/2addr p3, v1

    .line 44518
    .end local v10    # "peek":I
    .end local p0    # "runLength":I
    .end local p1    # "clutIndex":I
    if-eqz v5, :cond_0

    .line 44519
    return p3

    .line 44520
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44521
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    .line 44522
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    goto :goto_0

    .line 44523
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44524
    const/4 v1, 0x1

    move v0, v2

    goto :goto_0

    .line 44525
    :cond_5
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    goto :goto_0

    .line 44526
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1d

    .line 44527
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    goto :goto_0

    .line 44528
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "PWQusWjmzTX1R8w37TeIuijcGSqhz46U"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v1, v3, 0xc

    .line 44529
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 44530
    goto :goto_0

    .line 44531
    :pswitch_2
    const/4 v1, 0x2

    .line 44532
    move v0, v2

    goto :goto_0

    .line 44533
    :pswitch_3
    const/4 v5, 0x1

    .line 44534
    move v0, v2

    goto :goto_0

    .line 44535
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4u;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14

    .line 44536
    move/from16 v3, p3

    const/4 v7, 0x0

    .line 44537
    .end local p3    # null:I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :cond_0
    const/4 v6, 0x0

    .line 44538
    .local v3, "runLength":I
    const/4 v5, 0x0

    .line 44539
    .local v4, "clutIndex":I
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 44540
    .local v6, "peek":I
    if-eqz v0, :cond_3

    .line 44541
    const/4 v6, 0x1

    .line 44542
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .end local v6    # "peek":I
    .local v10, "endOfPixelCodeString":Z
    .local v11, "runLength":I
    .local v12, "clutIndex":I
    .local v13, "peek":I
    :goto_0
    if-eqz v6, :cond_2

    move-object/from16 v4, p5

    if-eqz v4, :cond_2

    .line 44543
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44544
    int-to-float v9, v3

    move/from16 v5, p4

    int-to-float v10, v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "7zyAW2neZYMKALasLQ64ygc21beBnsUa"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "CykdyJVKnOvIvZ1RH2gJr9pO2NNGsRyJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int v0, v3, v6

    int-to-float v11, v0

    add-int/lit8 v0, v5, 0x1

    int-to-float v12, v0

    move-object v13, v4

    move-object/from16 v8, p6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 44545
    :cond_2
    add-int/2addr v3, v6

    .line 44546
    .end local v11    # "runLength":I
    .end local v12    # "clutIndex":I
    .end local v13    # "peek":I
    if-eqz v7, :cond_0

    .line 44547
    return v3

    .line 44548
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-nez v0, :cond_6

    .line 44549
    const/4 v4, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "Jb849HVzYsbrcyVvorQRSzDXgxwzOwbS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 44550
    if-eqz v0, :cond_5

    .line 44551
    :goto_1
    add-int/lit8 v6, v0, 0x2

    .line 44552
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "lCytI93sja9tcovqvw8Z3JcTVPPUQzad"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 44553
    if-eqz v0, :cond_5

    goto :goto_1

    .line 44554
    :cond_5
    const/4 v7, 0x1

    move v0, v5

    goto :goto_0

    .line 44555
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v1

    const/4 v0, 0x2

    if-nez v1, :cond_7

    .line 44556
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x4

    .line 44557
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    goto/16 :goto_0

    .line 44558
    :cond_7
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v5

    goto/16 :goto_0

    .line 44559
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x19

    .line 44560
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    goto/16 :goto_0

    .line 44561
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x9

    .line 44562
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 44563
    goto/16 :goto_0

    .line 44564
    :pswitch_2
    const/4 v6, 0x2

    .line 44565
    move v0, v5

    goto/16 :goto_0

    .line 44566
    :pswitch_3
    const/4 v6, 0x1

    .line 44567
    move v0, v5

    goto/16 :goto_0

    .line 44568
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4u;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 14

    .line 44569
    move/from16 v4, p3

    const/4 v7, 0x0

    .line 44570
    .end local p3    # null:I
    .local v2, "endOfPixelCodeString":Z
    .local v9, "column":I
    :cond_0
    const/4 v6, 0x0

    .line 44571
    .local v3, "runLength":I
    const/4 v5, 0x0

    .line 44572
    .local v4, "clutIndex":I
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 44573
    .local v6, "peek":I
    if-eqz v0, :cond_4

    .line 44574
    const/4 v3, 0x1

    .line 44575
    .end local v2    # "endOfPixelCodeString":Z
    .end local v3    # "runLength":I
    .end local v4    # "clutIndex":I
    .end local v6    # "peek":I
    .local v10, "endOfPixelCodeString":Z
    .local v11, "runLength":I
    .local v12, "clutIndex":I
    .local v13, "peek":I
    :goto_0
    if-eqz v3, :cond_3

    move-object/from16 v5, p5

    if-eqz v5, :cond_3

    .line 44576
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 44577
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "mqxvpcZRbZaRJOXRSA703vBu0XWYN9Vd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    int-to-float v9, v4

    move/from16 v1, p4

    int-to-float v10, v1

    add-int v0, v4, v3

    int-to-float v11, v0

    add-int/lit8 v0, v1, 0x1

    int-to-float v12, v0

    move-object v13, v5

    move-object/from16 v8, p6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 44578
    :cond_3
    add-int/2addr v4, v3

    .line 44579
    .end local v11    # "runLength":I
    .end local v12    # "clutIndex":I
    .end local v13    # "peek":I
    if-eqz v7, :cond_0

    .line 44580
    return v4

    .line 44581
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v1

    const/4 v0, 0x7

    if-nez v1, :cond_6

    .line 44582
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 44583
    if-eqz v3, :cond_5

    .line 44584
    const/4 v0, 0x0

    goto :goto_0

    .line 44585
    :cond_5
    const/4 v7, 0x1

    move v3, v6

    move v0, v5

    goto :goto_0

    .line 44586
    :cond_6
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 44587
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    goto :goto_0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4u;I)Lcom/facebook/ads/redexgen/X/Ju;
    .locals 17

    .line 44588
    const/16 v3, 0x8

    move-object/from16 v8, p0

    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v11

    .line 44589
    .local v2, "clutId":I
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44590
    add-int/lit8 v16, p1, -0x2

    .line 44591
    .local v3, "remainingLength":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K2;->A0F()[I

    move-result-object v10

    .line 44592
    .local v4, "clutEntries2Bit":[I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K2;->A0G()[I

    move-result-object v7

    .line 44593
    .local v5, "clutEntries4Bit":[I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/K2;->A0H()[I

    move-result-object v6

    .line 44594
    .local v6, "clutEntries8Bit":[I
    :goto_0
    if-lez v16, :cond_6

    .line 44595
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result p1

    .line 44596
    .local v7, "entryId":I
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 44597
    .local v8, "entryFlags":I
    add-int/lit8 v5, v16, -0x2

    .line 44598
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_3

    .line 44599
    move-object/from16 p0, v10

    .line 44600
    .local v9, "clutEntries":[I
    .restart local v9    # "clutEntries":[I
    :goto_1
    and-int/lit8 v4, v1, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "yhDNrhcDigDR24Kxe5BS389mQBs2ZM2v"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 44601
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v9

    .line 44602
    .local v10, "y":I
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v13

    .line 44603
    .local v11, "cr":I
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v12

    .line 44604
    .local v12, "cb":I
    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 44605
    .local v13, "t":I
    add-int/lit8 v16, v5, -0x4

    .line 44606
    .end local v14
    .local v10, "y":I
    .local v11, "cr":I
    .restart local v12    # "cb":I
    .local v13, "t":I
    :goto_2
    if-nez v9, :cond_1

    .line 44607
    const/4 v13, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 44608
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "NRFOfVblegIP33K9RsgAL0VferudmJOb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v12, 0x0

    .line 44609
    const/16 v0, 0xff

    .line 44610
    :cond_1
    and-int/lit16 v0, v0, 0xff

    rsub-int v5, v0, 0xff

    .line 44611
    .local v14, "a":I
    .end local v2    # "clutId":I
    .local v16, "clutId":I
    int-to-double v0, v9

    add-int/lit8 v2, v13, -0x80

    .end local v3    # "remainingLength":I
    .end local v4    # "clutEntries2Bit":[I
    .local p0, "clutEntries2Bit":[I
    .local p1, "remainingLength":I
    int-to-double v2, v2

    const-wide v14, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v2, v14

    add-double/2addr v0, v2

    double-to-int v4, v0

    .line 44612
    .local v1, "r":I
    int-to-double v2, v9

    add-int/lit8 v0, v12, -0x80

    .end local v5    # "clutEntries4Bit":[I
    .local v15, "clutEntries4Bit":[I
    int-to-double v0, v0

    const-wide v14, 0x3fd60663c74fb54aL    # 0.34414

    mul-double/2addr v0, v14

    sub-double/2addr v2, v0

    add-int/lit8 v0, v13, -0x80

    int-to-double v0, v0

    const-wide v13, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double/2addr v0, v13

    sub-double/2addr v2, v0

    double-to-int v13, v2

    .line 44613
    .local v2, "g":I
    int-to-double v2, v9

    add-int/lit8 v0, v12, -0x80

    .end local v10    # "y":I
    .end local v11    # "cr":I
    .local p2, "y":I
    .local p3, "cr":I
    int-to-double v0, v0

    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v0, v14

    add-double/2addr v2, v0

    double-to-int v9, v2

    .line 44614
    .local v3, "b":I
    const/4 v3, 0x0

    const/16 v0, 0xff

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v2

    .line 44615
    invoke-static {v13, v3, v0}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v1

    .line 44616
    invoke-static {v9, v3, v0}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v0

    .line 44617
    invoke-static {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K2;->A00(IIII)I

    move-result v0

    aput v0, p0, p1

    .line 44618
    .end local v1    # "r":I
    .end local v2    # "g":I
    .end local v3    # "b":I
    .end local v7    # "entryId":I
    .end local v8    # "entryFlags":I
    .end local v9    # "clutEntries":[I
    .end local v12    # "cb":I
    .end local v13    # "t":I
    .end local v14    # "a":I
    .end local p2
    .end local p3
    const/16 v3, 0x8

    goto/16 :goto_0

    .line 44619
    .end local v10
    .end local v11
    .end local v12
    .end local v13
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v9

    const/4 v1, 0x2

    shl-int/2addr v9, v1

    .line 44620
    .local v11, "y":I
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v13

    shl-int/2addr v13, v0

    .line 44621
    .local v14, "cr":I
    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    shl-int/lit8 v12, v0, 0x4

    .line 44622
    .local v13, "cb":I
    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    .line 44623
    .local v10, "t":I
    add-int/lit8 v16, v5, -0x2

    goto/16 :goto_2

    .line 44624
    .end local v9
    :cond_3
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_4

    .line 44625
    move-object/from16 p0, v7

    .restart local v9    # "clutEntries":[I
    goto/16 :goto_1

    .line 44626
    .end local v9    # "clutEntries":[I
    :cond_4
    move-object/from16 p0, v6

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 44627
    .end local v15    # "clutEntries4Bit":[I
    .end local v16    # "clutId":I
    .end local p0    # "clutEntries2Bit":[I
    .end local p1    # "remainingLength":I
    .local v2, "clutId":I
    .local v3, "remainingLength":I
    .restart local v4    # "clutEntries2Bit":[I
    .restart local v5    # "clutEntries4Bit":[I
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ju;

    invoke-direct {v0, v11, v10, v7, v6}, Lcom/facebook/ads/redexgen/X/Ju;-><init>(I[I[I[I)V

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4u;)Lcom/facebook/ads/redexgen/X/Jv;
    .locals 7

    .line 44628
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44629
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v1

    .line 44630
    .local v0, "displayWindowFlag":Z
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44631
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 44632
    .local p2, "width":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 44633
    .local p3, "height":I
    if-eqz v1, :cond_0

    .line 44634
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v4

    .line 44635
    .local v2, "horizontalPositionMinimum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v5

    .line 44636
    .local v3, "horizontalPositionMaximum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v6

    .line 44637
    .local v4, "verticalPositionMinimum":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result p0

    .line 44638
    .local v1, "verticalPositionMaximum":I
    .end local v2    # "horizontalPositionMinimum":I
    .end local v3    # "horizontalPositionMaximum":I
    .end local v4    # "verticalPositionMinimum":I
    .restart local v1    # "verticalPositionMaximum":I
    .local p4, "horizontalPositionMinimum":I
    .local p5, "horizontalPositionMaximum":I
    .local p6, "verticalPositionMinimum":I
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Jv;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Jv;-><init>(IIIIII)V

    return-object v1

    .line 44639
    .end local v1    # "verticalPositionMaximum":I
    .end local v2
    .end local v3
    .end local v4
    :cond_0
    const/4 v4, 0x0

    .line 44640
    .restart local v2    # "horizontalPositionMinimum":I
    .restart local v3    # "horizontalPositionMaximum":I
    const/4 v6, 0x0

    .line 44641
    .restart local v4    # "verticalPositionMinimum":I
    move p0, v3

    move v5, v2

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4u;)Lcom/facebook/ads/redexgen/X/Jw;
    .locals 9

    .line 44642
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v8

    .line 44643
    .local v1, "objectId":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44644
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 44645
    .local v2, "objectCodingMethod":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v7

    .line 44646
    .local v3, "nonModifyingColorFlag":Z
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44647
    sget-object v6, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    .line 44648
    .local v5, "topFieldData":[B
    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    .line 44649
    .local v6, "bottomFieldData":[B
    if-ne v2, v0, :cond_1

    .line 44650
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 44651
    .local v0, "numberOfCodes":I
    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44652
    .end local v0    # "numberOfCodes":I
    :cond_0
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jw;

    invoke-direct {v0, v8, v7, v6, v1}, Lcom/facebook/ads/redexgen/X/Jw;-><init>(IZ[B[B)V

    return-object v0

    .line 44653
    :cond_1
    if-nez v2, :cond_0

    .line 44654
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v5

    .line 44655
    .local v4, "topFieldDataLength":I
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v4

    .line 44656
    .local v0, "bottomFieldDataLength":I
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "H05iJqDXaQUoFjCcOPsdhLa69PYGJoEl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-lez v5, :cond_3

    .line 44657
    new-array v6, v5, [B

    .line 44658
    invoke-virtual {p0, v6, v3, v5}, Lcom/facebook/ads/redexgen/X/4u;->A0G([BII)V

    .line 44659
    :cond_3
    if-lez v4, :cond_4

    .line 44660
    new-array v1, v4, [B

    .line 44661
    invoke-virtual {p0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/4u;->A0G([BII)V

    goto :goto_0

    .line 44662
    :cond_4
    move-object v1, v6

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/4u;I)Lcom/facebook/ads/redexgen/X/Jx;
    .locals 10

    .line 44663
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v8

    .line 44664
    .local v1, "timeoutSecs":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v7

    .line 44665
    .local v2, "version":I
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v6

    .line 44666
    .local v4, "state":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44667
    add-int/lit8 v5, p1, -0x2

    .line 44668
    .local v3, "remainingLength":I
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 44669
    .local v5, "regions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    :goto_0
    if-lez v5, :cond_0

    .line 44670
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 44671
    .local v6, "regionId":I
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44672
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 44673
    .local v8, "regionHorizontalAddress":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 44674
    .local v7, "regionVerticalAddress":I
    add-int/lit8 v5, v5, -0x6

    .line 44675
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jy;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jy;-><init>(II)V

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44676
    .end local v6    # "regionId":I
    .end local v7    # "regionVerticalAddress":I
    .end local v8    # "regionHorizontalAddress":I
    goto :goto_0

    .line 44677
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jx;

    invoke-direct {v0, v8, v7, v6, v4}, Lcom/facebook/ads/redexgen/X/Jx;-><init>(IIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4u;I)Lcom/facebook/ads/redexgen/X/Jz;
    .locals 25

    .line 44678
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v10

    .line 44679
    .local v14, "id":I
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44680
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v11

    .line 44681
    .local v15, "fillFlag":Z
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44682
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v12

    .line 44683
    .local v16, "width":I
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v13

    .line 44684
    .local v17, "height":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v14

    .line 44685
    .local v18, "levelOfCompatibility":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v15

    .line 44686
    .local v19, "depth":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44687
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v16

    .line 44688
    .local v20, "clutId":I
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v17

    .line 44689
    .local v21, "pixelCode8Bit":I
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v18

    .line 44690
    .local v22, "pixelCode4Bit":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v19

    .line 44691
    .local v23, "pixelCode2Bit":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44692
    add-int/lit8 v9, p1, -0xa

    .line 44693
    .local v5, "remainingLength":I
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 44694
    .end local v5    # "remainingLength":I
    .local v13, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .local v24, "remainingLength":I
    :goto_0
    if-lez v9, :cond_2

    .line 44695
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v7

    .line 44696
    .local v5, "objectId":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v6

    .line 44697
    .local v12, "objectType":I
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v22

    .line 44698
    .local p0, "objectProvider":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v23

    .line 44699
    .local p1, "objectHorizontalPosition":I
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44700
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v24

    .line 44701
    .local p2, "objectVerticalPosition":I
    add-int/lit8 v9, v9, -0x6

    .line 44702
    const/16 p0, 0x0

    .line 44703
    .local v6, "foregroundPixelCode":I
    const/16 p1, 0x0

    .line 44704
    .local v7, "backgroundPixelCode":I
    const/4 v5, 0x1

    if-eq v6, v5, :cond_0

    if-ne v6, v2, :cond_1

    .line 44705
    :cond_0
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result p0

    .line 44706
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result p1

    .line 44707
    add-int/lit8 v9, v9, -0x2

    .line 44708
    .end local v6    # "foregroundPixelCode":I
    .end local v7    # "backgroundPixelCode":I
    .local v24, "foregroundPixelCode":I
    .local p3, "backgroundPixelCode":I
    .local p4, "remainingLength":I
    :cond_1
    new-instance v20, Lcom/facebook/ads/redexgen/X/K0;

    move-object/from16 v1, v20

    .end local v12    # "objectType":I
    .local p5, "objectType":I
    move/from16 v21, v6

    invoke-direct/range {v20 .. v26}, Lcom/facebook/ads/redexgen/X/K0;-><init>(IIIIII)V

    invoke-virtual {v8, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44709
    .end local v5    # "objectId":I
    .end local v24    # "foregroundPixelCode":I
    .end local p0    # "objectProvider":I
    .end local p1    # "objectHorizontalPosition":I
    .end local p2
    .end local p3
    .end local p5
    const/16 v1, 0x8

    goto :goto_0

    .line 44710
    .end local p4
    .local v24, "remainingLength":I
    :cond_2
    new-instance v9, Lcom/facebook/ads/redexgen/X/Jz;

    .end local v13    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .local p0, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    move-object/from16 v20, v8

    invoke-direct/range {v9 .. v20}, Lcom/facebook/ads/redexgen/X/Jz;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v9
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x16

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

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/K2;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x3ft
        0x1at
        0xft
        0x1at
        0x5bt
        0x1dt
        0x12t
        0x1et
        0x17t
        0x1ft
        0x5bt
        0x17t
        0x1et
        0x15t
        0x1ct
        0xft
        0x13t
        0x5bt
        0x1et
        0x3t
        0x18t
        0x1et
        0x1et
        0x1ft
        0x8t
        0x5bt
        0x17t
        0x12t
        0x16t
        0x12t
        0xft
        0x62t
        0x50t
        0x44t
        0x76t
        0x47t
        0x54t
        0x55t
        0x43t
        0x54t
    .end array-data
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/K1;)V
    .locals 7

    .line 44711
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 44712
    .local v0, "segmentType":I
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v6

    .line 44713
    .local v2, "pageId":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v5

    .line 44714
    .local v1, "dataFieldLength":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A02()I

    move-result v3

    add-int/2addr v3, v5

    .line 44715
    .local v3, "dataFieldLimit":I
    mul-int/lit8 v1, v5, 0x8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A01()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 44716
    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K2;->A09(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K2;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 44717
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A01()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 44718
    return-void

    .line 44719
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 44720
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4u;->A02()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4u;->A0A(I)V

    .line 44721
    return-void

    .line 44722
    :pswitch_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/K1;->A03:I

    if-ne v6, v0, :cond_1

    .line 44723
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K2;->A05(Lcom/facebook/ads/redexgen/X/4u;)Lcom/facebook/ads/redexgen/X/Jv;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/K1;->A00:Lcom/facebook/ads/redexgen/X/Jv;

    goto :goto_0

    .line 44724
    :pswitch_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/K1;->A03:I

    if-ne v6, v0, :cond_2

    .line 44725
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K2;->A06(Lcom/facebook/ads/redexgen/X/4u;)Lcom/facebook/ads/redexgen/X/Jw;

    move-result-object v2

    .line 44726
    .local v4, "objectData":Lcom/facebook/ads/redexgen/X/Jw;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/K1;->A07:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Jw;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "objectData":Lcom/facebook/ads/redexgen/X/Jw;
    goto :goto_0

    .line 44727
    :cond_2
    iget v0, p1, Lcom/facebook/ads/redexgen/X/K1;->A02:I

    if-ne v6, v0, :cond_1

    .line 44728
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K2;->A06(Lcom/facebook/ads/redexgen/X/4u;)Lcom/facebook/ads/redexgen/X/Jw;

    move-result-object v6

    .line 44729
    .restart local v4    # "objectData":Lcom/facebook/ads/redexgen/X/Jw;
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/K1;->A05:Landroid/util/SparseArray;

    iget v4, v6, Lcom/facebook/ads/redexgen/X/Jw;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "cNAVN6CCWtYeoU1m0uPi3L7jVIjjgAwx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44730
    .end local v4    # "objectData":Lcom/facebook/ads/redexgen/X/Jw;
    goto :goto_0

    .line 44731
    :pswitch_2
    iget v0, p1, Lcom/facebook/ads/redexgen/X/K1;->A03:I

    if-ne v6, v0, :cond_4

    .line 44732
    invoke-static {p0, v5}, Lcom/facebook/ads/redexgen/X/K2;->A04(Lcom/facebook/ads/redexgen/X/4u;I)Lcom/facebook/ads/redexgen/X/Ju;

    move-result-object v2

    .line 44733
    .local v4, "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/K1;->A06:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Ju;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v4    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    goto :goto_0

    .line 44734
    :cond_4
    iget v0, p1, Lcom/facebook/ads/redexgen/X/K1;->A02:I

    if-ne v6, v0, :cond_1

    .line 44735
    invoke-static {p0, v5}, Lcom/facebook/ads/redexgen/X/K2;->A04(Lcom/facebook/ads/redexgen/X/4u;I)Lcom/facebook/ads/redexgen/X/Ju;

    move-result-object v2

    .line 44736
    .restart local v4    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/K1;->A04:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Ju;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44737
    .end local v4    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    goto :goto_0

    .line 44738
    :pswitch_3
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/K1;->A01:Lcom/facebook/ads/redexgen/X/Jx;

    .line 44739
    .local v4, "pageComposition":Lcom/facebook/ads/redexgen/X/Jx;
    iget v0, p1, Lcom/facebook/ads/redexgen/X/K1;->A03:I

    if-ne v6, v0, :cond_1

    if-eqz v1, :cond_1

    .line 44740
    invoke-static {p0, v5}, Lcom/facebook/ads/redexgen/X/K2;->A08(Lcom/facebook/ads/redexgen/X/4u;I)Lcom/facebook/ads/redexgen/X/Jz;

    move-result-object v4

    .line 44741
    .local v5, "regionComposition":Lcom/facebook/ads/redexgen/X/Jz;
    iget v5, v1, Lcom/facebook/ads/redexgen/X/Jx;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "Zbq5EbbYoVc51AepmzNMcu8RWeX9tFKS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "SzpXTRUgh7e1fMrIr1mTDXGfSUuiig9T"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v5, :cond_5

    .line 44742
    :goto_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/K1;->A08:Landroid/util/SparseArray;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Jz;->A03:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jz;

    .line 44743
    .local v6, "existingRegionComposition":Lcom/facebook/ads/redexgen/X/Jz;
    if-eqz v0, :cond_5

    .line 44744
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A00(Lcom/facebook/ads/redexgen/X/Jz;)V

    .line 44745
    .end local v6    # "existingRegionComposition":Lcom/facebook/ads/redexgen/X/Jz;
    :cond_5
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/K1;->A08:Landroid/util/SparseArray;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Jz;->A03:I

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44746
    .end local v5    # "regionComposition":Lcom/facebook/ads/redexgen/X/Jz;
    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "ijH7h91dhg9QFNoxZPsrwXGu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v5, :cond_5

    goto :goto_1

    .line 44747
    .end local v4    # "pageComposition":Lcom/facebook/ads/redexgen/X/Jx;
    :pswitch_4
    iget v4, p1, Lcom/facebook/ads/redexgen/X/K1;->A03:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "Hq1l6D9egrnTUyhluyir9I8C"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v6, v4, :cond_1

    .line 44748
    :goto_2
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/K1;->A01:Lcom/facebook/ads/redexgen/X/Jx;

    .line 44749
    .local v4, "current":Lcom/facebook/ads/redexgen/X/Jx;
    invoke-static {p0, v5}, Lcom/facebook/ads/redexgen/X/K2;->A07(Lcom/facebook/ads/redexgen/X/4u;I)Lcom/facebook/ads/redexgen/X/Jx;

    move-result-object v2

    .line 44750
    .local v5, "pageComposition":Lcom/facebook/ads/redexgen/X/Jx;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Jx;->A00:I

    if-eqz v0, :cond_8

    .line 44751
    iput-object v2, p1, Lcom/facebook/ads/redexgen/X/K1;->A01:Lcom/facebook/ads/redexgen/X/Jx;

    .line 44752
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/K1;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 44753
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/K1;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 44754
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/K1;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "8IE5rQcmaz5UZt5DB4HgynTP0JDS9G2L"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0jBafq8KrrfMTCoyXHA3EFrvXh6eCdvZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v6, v4, :cond_1

    goto :goto_2

    .line 44755
    :cond_8
    if-eqz v1, :cond_1

    iget v1, v1, Lcom/facebook/ads/redexgen/X/Jx;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Jx;->A02:I

    if-eq v1, v0, :cond_1

    .line 44756
    iput-object v2, p1, Lcom/facebook/ads/redexgen/X/K1;->A01:Lcom/facebook/ads/redexgen/X/Jx;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Jw;Lcom/facebook/ads/redexgen/X/Ju;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    .line 44757
    const/4 v0, 0x3

    move v2, p2

    if-ne v2, v0, :cond_0

    .line 44758
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Ju;->A03:[I

    .line 44759
    .local v0, "clutEntries":[I
    .restart local v0    # "clutEntries":[I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A03:[B

    move-object v6, p6

    move-object v5, p5

    move v4, p4

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/K2;->A0D([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 44760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A02:[B

    add-int/lit8 v4, v4, 0x1

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/K2;->A0D([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 44761
    return-void

    .line 44762
    .end local v0    # "clutEntries":[I
    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    .line 44763
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Ju;->A02:[I

    .restart local v0    # "clutEntries":[I
    goto :goto_0

    .line 44764
    .end local v0    # "clutEntries":[I
    :cond_1
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Ju;->A01:[I

    goto :goto_0
.end method

.method public static A0D([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 14

    .line 44765
    move/from16 v12, p4

    new-instance v8, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v8, p0}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    .line 44766
    .local v1, "data":Lcom/facebook/ads/redexgen/X/4u;
    .local v3, "column":I
    .local v4, "line":I
    const/4 v6, 0x0

    .line 44767
    .local v5, "clutMapTable2To4":[B
    const/4 v5, 0x0

    .line 44768
    .local v6, "clutMapTable2To8":[B
    const/4 v4, 0x0

    move/from16 v11, p3

    .line 44769
    .end local v3    # "column":I
    .end local v4    # "line":I
    .end local v5    # "clutMapTable2To4":[B
    .end local v6    # "clutMapTable2To8":[B
    .local v10, "column":I
    .local v11, "line":I
    .local v12, "clutMapTable2To4":[B
    .local v13, "clutMapTable2To8":[B
    .local p0, "clutMapTable4To8":[B
    :goto_0
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4u;->A01()I

    move-result v0

    if-eqz v0, :cond_6

    .line 44770
    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 44771
    .local p1, "dataType":I
    const/4 v1, 0x3

    const/4 v0, 0x4

    move-object/from16 v13, p5

    move/from16 v7, p2

    move-object/from16 p0, p6

    move-object v9, p1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 44772
    .end local v10    # "column":I
    .restart local v3    # "column":I
    :sswitch_0
    add-int/lit8 v12, v12, 0x2

    .line 44773
    move/from16 v11, p3

    goto :goto_0

    .line 44774
    .end local v3    # "column":I
    .restart local v10    # "column":I
    :sswitch_1
    const/16 v0, 0x10

    invoke-static {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/K2;->A0E(IILcom/facebook/ads/redexgen/X/4u;)[B

    move-result-object v4

    .line 44775
    .end local p0    # "clutMapTable4To8":[B
    .local v3, "clutMapTable4To8":[B
    goto :goto_0

    .line 44776
    .end local v3    # "clutMapTable4To8":[B
    .restart local p0    # "clutMapTable4To8":[B
    :sswitch_2
    invoke-static {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/K2;->A0E(IILcom/facebook/ads/redexgen/X/4u;)[B

    move-result-object v5

    .line 44777
    .end local v13    # "clutMapTable2To8":[B
    .local v3, "clutMapTable2To8":[B
    goto :goto_0

    .line 44778
    .end local v3    # "clutMapTable2To8":[B
    .restart local v13    # "clutMapTable2To8":[B
    :sswitch_3
    invoke-static {v0, v0, v8}, Lcom/facebook/ads/redexgen/X/K2;->A0E(IILcom/facebook/ads/redexgen/X/4u;)[B

    move-result-object v6

    .line 44779
    .end local v12    # "clutMapTable2To4":[B
    .local v3, "clutMapTable2To4":[B
    goto :goto_0

    .line 44780
    .end local v3    # "clutMapTable2To4":[B
    .restart local v12    # "clutMapTable2To4":[B
    :sswitch_4
    const/4 v10, 0x0

    invoke-static/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/K2;->A03(Lcom/facebook/ads/redexgen/X/4u;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v11

    .line 44781
    .end local v10    # "column":I
    .local v3, "column":I
    goto :goto_0

    .line 44782
    .end local v3    # "column":I
    .restart local v10    # "column":I
    :sswitch_5
    if-ne v7, v1, :cond_1

    .line 44783
    if-nez v4, :cond_0

    sget-object v10, Lcom/facebook/ads/redexgen/X/K2;->A0B:[B

    .line 44784
    .local p2, "clutMapTable4ToX":[B
    :goto_1
    invoke-static/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/K2;->A02(Lcom/facebook/ads/redexgen/X/4u;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v11

    .line 44785
    .end local v10    # "column":I
    .local v3, "column":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4u;->A06()V

    .line 44786
    goto :goto_0

    .line 44787
    :cond_0
    move-object v10, v4

    goto :goto_1

    .line 44788
    .end local v3    # "column":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 44789
    .end local v3
    .end local p2    # "clutMapTable4ToX":[B
    .restart local v10    # "column":I
    :sswitch_6
    if-ne v7, v1, :cond_3

    .line 44790
    if-nez v5, :cond_2

    sget-object v10, Lcom/facebook/ads/redexgen/X/K2;->A0A:[B

    .line 44791
    .local p2, "clutMapTable2ToX":[B
    :goto_2
    invoke-static/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/K2;->A01(Lcom/facebook/ads/redexgen/X/4u;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v11

    .line 44792
    .end local v10    # "column":I
    .local v3, "column":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4u;->A06()V

    .line 44793
    goto :goto_0

    .line 44794
    :cond_2
    move-object v10, v5

    goto :goto_2

    .line 44795
    .end local v3    # "column":I
    :cond_3
    const/4 v0, 0x2

    if-ne v7, v0, :cond_5

    .line 44796
    if-nez v6, :cond_4

    sget-object v10, Lcom/facebook/ads/redexgen/X/K2;->A09:[B

    goto :goto_2

    :cond_4
    move-object v10, v6

    goto :goto_2

    .line 44797
    .end local v3
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 44798
    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x20 -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A0E(IILcom/facebook/ads/redexgen/X/4u;)[B
    .locals 3

    .line 44799
    new-array v2, p0, [B

    .line 44800
    .local v0, "clutMapTable":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 44801
    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    .line 44802
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44803
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A0F()[I
    .locals 4

    .line 44804
    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 44805
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v3, v0

    .line 44806
    const/4 v1, 0x1

    const/4 v0, -0x1

    aput v0, v3, v1

    .line 44807
    const/4 v1, 0x2

    const/high16 v0, -0x1000000

    aput v0, v3, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    .line 44808
    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "Jw8cEdbjQQjFC79Gk6sPH9AUdvvWBQg4"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v1, 0x3

    const v0, -0x808081

    aput v0, v3, v1

    .line 44809
    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0G()[I
    .locals 10

    .line 44810
    const/16 v0, 0x10

    new-array v8, v0, [I

    .line 44811
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v8, v0

    .line 44812
    const/4 v7, 0x1

    .local v2, "i":I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_8

    .line 44813
    const/16 v0, 0x8

    const/16 v9, 0xff

    if-ge v7, v0, :cond_3

    .line 44814
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0xff

    .line 44815
    :goto_1
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    .line 44816
    :goto_2
    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    .line 44817
    :goto_3
    invoke-static {v9, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/K2;->A00(IIII)I

    move-result v0

    aput v0, v8, v7

    .line 44818
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 44819
    :cond_0
    const/4 v0, 0x0

    goto :goto_3

    .line 44820
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 44821
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 44822
    :cond_3
    and-int/lit8 v0, v7, 0x1

    const/16 v6, 0x7f

    if-eqz v0, :cond_5

    const/16 v5, 0x7f

    .line 44823
    :goto_5
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_4

    const/16 v4, 0x7f

    .line 44824
    :goto_6
    and-int/lit8 v3, v7, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 44825
    :cond_4
    const/4 v4, 0x0

    goto :goto_6

    .line 44826
    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "UrHD9QQTZDyJKzMppguU3aPtXoZ0irSR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_7

    .line 44827
    :goto_7
    invoke-static {v9, v5, v4, v6}, Lcom/facebook/ads/redexgen/X/K2;->A00(IIII)I

    move-result v0

    aput v0, v8, v7

    goto :goto_4

    .line 44828
    :cond_7
    const/4 v6, 0x0

    goto :goto_7

    .line 44829
    .end local v2    # "i":I
    :cond_8
    return-object v8
.end method

.method public static A0H()[I
    .locals 11

    .line 44830
    const/16 v0, 0x100

    new-array v4, v0, [I

    .line 44831
    .local v0, "entries":[I
    const/4 v0, 0x0

    aput v0, v4, v0

    .line 44832
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    array-length v0, v4

    if-ge v3, v0, :cond_1e

    .line 44833
    const/16 v0, 0x8

    const/16 v6, 0xff

    if-ge v3, v0, :cond_3

    .line 44834
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2

    const/16 v2, 0xff

    .line 44835
    :goto_1
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    .line 44836
    :goto_2
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_0

    .line 44837
    :goto_3
    const/16 v0, 0x3f

    invoke-static {v0, v2, v1, v6}, Lcom/facebook/ads/redexgen/X/K2;->A00(IIII)I

    move-result v0

    aput v0, v4, v3

    .line 44838
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44839
    :cond_0
    const/4 v6, 0x0

    goto :goto_3

    .line 44840
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 44841
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 44842
    :cond_3
    and-int/lit16 v0, v3, 0x88

    const/16 v7, 0x7f

    const/16 v9, 0xaa

    const/16 v10, 0x2b

    const/16 v5, 0x55

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    .line 44843
    :sswitch_0
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_9

    const/16 v2, 0x2b

    :goto_5
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_8

    const/16 v0, 0x55

    :goto_6
    add-int/2addr v2, v0

    .line 44844
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_7

    const/16 v1, 0x2b

    :goto_7
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_6

    const/16 v0, 0x55

    :goto_8
    add-int/2addr v1, v0

    .line 44845
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_5

    :goto_9
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_4

    :goto_a
    add-int/2addr v10, v5

    .line 44846
    invoke-static {v6, v2, v1, v10}, Lcom/facebook/ads/redexgen/X/K2;->A00(IIII)I

    move-result v0

    aput v0, v4, v3

    goto :goto_4

    .line 44847
    :cond_4
    const/4 v5, 0x0

    goto :goto_a

    :cond_5
    const/4 v10, 0x0

    goto :goto_9

    .line 44848
    :cond_6
    const/4 v0, 0x0

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    goto :goto_7

    .line 44849
    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 44850
    :sswitch_1
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_f

    const/16 v9, 0x2b

    :goto_b
    add-int/2addr v9, v7

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_e

    const/16 v0, 0x55

    :goto_c
    add-int/2addr v9, v0

    .line 44851
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_d

    const/16 v8, 0x2b

    :goto_d
    add-int/2addr v8, v7

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_c

    const/16 v0, 0x55

    :goto_e
    add-int/2addr v8, v0

    .line 44852
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_b

    :goto_f
    add-int/2addr v10, v7

    and-int/lit8 v7, v3, 0x40

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_1d

    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "e63e4cS46GPtzp0vrxC333RpnvVdNaZZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_a

    :goto_10
    add-int/2addr v10, v5

    .line 44853
    invoke-static {v6, v9, v8, v10}, Lcom/facebook/ads/redexgen/X/K2;->A00(IIII)I

    move-result v0

    aput v0, v4, v3

    .line 44854
    goto/16 :goto_4

    .line 44855
    :cond_a
    const/4 v5, 0x0

    goto :goto_10

    :cond_b
    const/4 v10, 0x0

    goto :goto_f

    .line 44856
    :cond_c
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    const/4 v8, 0x0

    goto :goto_d

    .line 44857
    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :cond_f
    const/4 v9, 0x0

    goto :goto_b

    .line 44858
    :sswitch_2
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_16

    const/16 v6, 0x55

    :goto_11
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_15

    const/16 v0, 0xaa

    :goto_12
    add-int/2addr v6, v0

    .line 44859
    and-int/lit8 v8, v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_13

    if-eqz v8, :cond_14

    :goto_13
    const/16 v1, 0x55

    :goto_14
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_12

    const/16 v0, 0xaa

    :goto_15
    add-int/2addr v1, v0

    .line 44860
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_11

    :goto_16
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_10

    :goto_17
    add-int/2addr v5, v9

    .line 44861
    invoke-static {v7, v6, v1, v5}, Lcom/facebook/ads/redexgen/X/K2;->A00(IIII)I

    move-result v0

    aput v0, v4, v3

    .line 44862
    goto/16 :goto_4

    .line 44863
    :cond_10
    const/4 v9, 0x0

    goto :goto_17

    :cond_11
    const/4 v5, 0x0

    goto :goto_16

    .line 44864
    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_13
    sget-object v2, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v1, "s2RCWxPvpwpJ3GpvuxZigl51"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v8, :cond_14

    goto :goto_13

    :cond_14
    const/4 v1, 0x0

    goto :goto_14

    .line 44865
    :cond_15
    const/4 v0, 0x0

    goto :goto_12

    :cond_16
    const/4 v6, 0x0

    goto :goto_11

    .line 44866
    :sswitch_3
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_1c

    const/16 v2, 0x55

    :goto_18
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_1b

    const/16 v0, 0xaa

    :goto_19
    add-int/2addr v2, v0

    .line 44867
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1a

    const/16 v1, 0x55

    :goto_1a
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_19

    const/16 v0, 0xaa

    :goto_1b
    add-int/2addr v1, v0

    .line 44868
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_18

    :goto_1c
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_17

    :goto_1d
    add-int/2addr v5, v9

    .line 44869
    invoke-static {v6, v2, v1, v5}, Lcom/facebook/ads/redexgen/X/K2;->A00(IIII)I

    move-result v0

    aput v0, v4, v3

    .line 44870
    goto/16 :goto_4

    .line 44871
    :cond_17
    const/4 v9, 0x0

    goto :goto_1d

    :cond_18
    const/4 v5, 0x0

    goto :goto_1c

    .line 44872
    :cond_19
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1a

    .line 44873
    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    :cond_1c
    const/4 v2, 0x0

    goto :goto_18

    .line 44874
    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 44875
    .end local v2    # "i":I
    :cond_1e
    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_2
        0x80 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final A0I([BI)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 44876
    move-object/from16 v4, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/4u;

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4u;-><init>([BI)V

    .line 44877
    .local v1, "dataBitArray":Lcom/facebook/ads/redexgen/X/4u;
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4u;->A01()I

    move-result v1

    const/16 v0, 0x30

    if-lt v1, v0, :cond_0

    .line 44878
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    const/16 v0, 0xf

    if-ne v1, v0, :cond_0

    .line 44879
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/K2;->A0B(Lcom/facebook/ads/redexgen/X/4u;Lcom/facebook/ads/redexgen/X/K1;)V

    goto :goto_0

    .line 44880
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/K1;->A01:Lcom/facebook/ads/redexgen/X/Jx;

    .line 44881
    .local v4, "pageComposition":Lcom/facebook/ads/redexgen/X/Jx;
    if-nez v5, :cond_1

    .line 44882
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 44883
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/K1;->A00:Lcom/facebook/ads/redexgen/X/Jv;

    if-eqz v0, :cond_d

    .line 44884
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/K1;->A00:Lcom/facebook/ads/redexgen/X/Jv;

    .line 44885
    .local v5, "displayDefinition":Lcom/facebook/ads/redexgen/X/Jv;
    :goto_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A00:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jv;->A05:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A00:Landroid/graphics/Bitmap;

    .line 44886
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v1, v0, :cond_2

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jv;->A00:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A00:Landroid/graphics/Bitmap;

    .line 44887
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 44888
    :cond_2
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jv;->A05:I

    add-int/lit8 v2, v0, 0x1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jv;->A00:I

    add-int/lit8 v1, v0, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 44889
    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A00:Landroid/graphics/Bitmap;

    .line 44890
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/K2;->A01:Landroid/graphics/Canvas;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A00:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 44891
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 44892
    .local v6, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/Jx;->A03:Landroid/util/SparseArray;

    .line 44893
    .local v7, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    const/4 v5, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_e

    .line 44894
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A01:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 44895
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/ads/redexgen/X/Jy;

    .line 44896
    .local v9, "pageRegion":Lcom/facebook/ads/redexgen/X/Jy;
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 44897
    .local v10, "regionId":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/K1;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Jz;

    .line 44898
    .local v11, "regionComposition":Lcom/facebook/ads/redexgen/X/Jz;
    iget v1, v8, Lcom/facebook/ads/redexgen/X/Jy;->A00:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jv;->A02:I

    add-int/2addr v1, v0

    .line 44899
    .local v12, "baseHorizontalAddress":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Jy;->A01:I

    iget v8, v3, Lcom/facebook/ads/redexgen/X/Jv;->A04:I

    add-int/2addr v0, v8

    .line 44900
    .local v13, "baseVerticalAddress":I
    iget v9, v2, Lcom/facebook/ads/redexgen/X/Jz;->A08:I

    add-int/2addr v9, v1

    iget v8, v3, Lcom/facebook/ads/redexgen/X/Jv;->A01:I

    .line 44901
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 44902
    .local v14, "clipRight":I
    iget v9, v2, Lcom/facebook/ads/redexgen/X/Jz;->A02:I

    add-int/2addr v9, v0

    .end local v1    # "dataBitArray":Lcom/facebook/ads/redexgen/X/4u;
    .local v16, "dataBitArray":Lcom/facebook/ads/redexgen/X/4u;
    iget v8, v3, Lcom/facebook/ads/redexgen/X/Jv;->A03:I

    .line 44903
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 44904
    .local v1, "clipBottom":I
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/K2;->A01:Landroid/graphics/Canvas;

    invoke-virtual {v8, v1, v0, v10, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 44905
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/K1;->A06:Landroid/util/SparseArray;

    .end local v1    # "clipBottom":I
    .local v17, "clipBottom":I
    iget v8, v2, Lcom/facebook/ads/redexgen/X/Jz;->A00:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/redexgen/X/Ju;

    .line 44906
    .local v1, "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    if-nez v14, :cond_4

    .line 44907
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/K1;->A04:Landroid/util/SparseArray;

    .end local v1    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    .local v18, "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    iget v8, v2, Lcom/facebook/ads/redexgen/X/Jz;->A00:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/redexgen/X/Ju;

    .line 44908
    .end local v18    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    .restart local v1    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    if-nez v14, :cond_4

    .line 44909
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/K2;->A04:Lcom/facebook/ads/redexgen/X/Ju;

    .line 44910
    :cond_4
    iget-object v10, v2, Lcom/facebook/ads/redexgen/X/Jz;->A09:Landroid/util/SparseArray;

    .line 44911
    .local v15, "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    const/4 v9, 0x0

    .local v2, "j":I
    :goto_3
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v9, v8, :cond_8

    .line 44912
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 44913
    .local v3, "objectId":I
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    .end local v4    # "pageComposition":Lcom/facebook/ads/redexgen/X/Jx;
    .local p5, "pageComposition":Lcom/facebook/ads/redexgen/X/Jx;
    check-cast v11, Lcom/facebook/ads/redexgen/X/K0;

    .line 44914
    .local v4, "regionObject":Lcom/facebook/ads/redexgen/X/K0;
    .end local v7    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    .local p6, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    iget-object v8, v8, Lcom/facebook/ads/redexgen/X/K1;->A07:Landroid/util/SparseArray;

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/ads/redexgen/X/Jw;

    .line 44915
    .local v7, "objectData":Lcom/facebook/ads/redexgen/X/Jw;
    if-nez v13, :cond_5

    .line 44916
    .end local v7    # "objectData":Lcom/facebook/ads/redexgen/X/Jw;
    .local v18, "objectData":Lcom/facebook/ads/redexgen/X/Jw;
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    iget-object v8, v8, Lcom/facebook/ads/redexgen/X/K1;->A05:Landroid/util/SparseArray;

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/ads/redexgen/X/Jw;

    .line 44917
    .end local v18    # "objectData":Lcom/facebook/ads/redexgen/X/Jw;
    .restart local v7    # "objectData":Lcom/facebook/ads/redexgen/X/Jw;
    :cond_5
    if-eqz v13, :cond_6

    .line 44918
    .end local v3    # "objectId":I
    .local p7, "objectId":I
    iget-boolean v8, v13, Lcom/facebook/ads/redexgen/X/Jw;->A01:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    .line 44919
    .local p3, "paint":Landroid/graphics/Paint;
    :goto_4
    iget v15, v2, Lcom/facebook/ads/redexgen/X/Jz;->A01:I

    .end local v9    # "pageRegion":Lcom/facebook/ads/redexgen/X/Jy;
    .local p8, "pageRegion":Lcom/facebook/ads/redexgen/X/Jy;
    iget v12, v11, Lcom/facebook/ads/redexgen/X/K0;->A02:I

    add-int v16, v1, v12

    iget v11, v11, Lcom/facebook/ads/redexgen/X/K0;->A05:I

    add-int v17, v0, v11

    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/K2;->A01:Landroid/graphics/Canvas;

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    invoke-static/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/K2;->A0C(Lcom/facebook/ads/redexgen/X/Jw;Lcom/facebook/ads/redexgen/X/Ju;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 44920
    .end local v3
    .end local v4    # "regionObject":Lcom/facebook/ads/redexgen/X/K0;
    .end local v7    # "objectData":Lcom/facebook/ads/redexgen/X/Jw;
    .end local v9
    .restart local p8
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 44921
    :cond_7
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/K2;->A02:Landroid/graphics/Paint;

    goto :goto_4

    .line 44922
    .end local p5
    .end local p6
    .end local p8
    .local v4, "pageComposition":Lcom/facebook/ads/redexgen/X/Jx;
    .local v7, "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    .restart local v9    # "pageRegion":Lcom/facebook/ads/redexgen/X/Jy;
    :cond_8
    sget-object v9, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v9, v9, v8

    const/16 v8, 0xe

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v8, 0x39

    if-eq v9, v8, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 44923
    .end local v2    # "j":I
    .end local v4    # "pageComposition":Lcom/facebook/ads/redexgen/X/Jx;
    .end local v7    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    .end local v9    # "pageRegion":Lcom/facebook/ads/redexgen/X/Jy;
    .restart local p5
    .restart local p6
    .restart local p8
    :cond_9
    sget-object v10, Lcom/facebook/ads/redexgen/X/K2;->A08:[Ljava/lang/String;

    const-string v9, "Y9Cu9eZ8R7HUBmBBCZ1DilUT"

    const/4 v8, 0x0

    aput-object v9, v10, v8

    iget-boolean v8, v2, Lcom/facebook/ads/redexgen/X/Jz;->A0A:Z

    if-eqz v8, :cond_a

    .line 44924
    iget v9, v2, Lcom/facebook/ads/redexgen/X/Jz;->A01:I

    const/4 v8, 0x3

    if-ne v9, v8, :cond_b

    .line 44925
    iget-object v9, v14, Lcom/facebook/ads/redexgen/X/Ju;->A03:[I

    iget v8, v2, Lcom/facebook/ads/redexgen/X/Jz;->A07:I

    aget v9, v9, v8

    .line 44926
    .local v2, "color":I
    .restart local v2    # "color":I
    :goto_5
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/K2;->A03:Landroid/graphics/Paint;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 44927
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/K2;->A01:Landroid/graphics/Canvas;

    int-to-float v10, v1

    int-to-float v11, v0

    iget v8, v2, Lcom/facebook/ads/redexgen/X/Jz;->A08:I

    add-int/2addr v8, v1

    int-to-float v12, v8

    .end local v1    # "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    .local p4, "clutDefinition":Lcom/facebook/ads/redexgen/X/Ju;
    iget v8, v2, Lcom/facebook/ads/redexgen/X/Jz;->A02:I

    add-int/2addr v8, v0

    int-to-float v13, v8

    .end local v2    # "color":I
    .local p7, "color":I
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/K2;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 44928
    .end local v1
    .restart local p4
    :cond_a
    new-instance v11, Lcom/facebook/ads/redexgen/X/3o;

    invoke-direct {v11}, Lcom/facebook/ads/redexgen/X/3o;-><init>()V

    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/K2;->A00:Landroid/graphics/Bitmap;

    iget v9, v2, Lcom/facebook/ads/redexgen/X/Jz;->A08:I

    iget v8, v2, Lcom/facebook/ads/redexgen/X/Jz;->A02:I

    .line 44929
    invoke-static {v10, v1, v0, v9, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 44930
    invoke-virtual {v11, v8}, Lcom/facebook/ads/redexgen/X/3o;->A0D(Landroid/graphics/Bitmap;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v9

    int-to-float v8, v1

    iget v1, v3, Lcom/facebook/ads/redexgen/X/Jv;->A05:I

    int-to-float v1, v1

    div-float/2addr v8, v1

    .line 44931
    invoke-virtual {v9, v8}, Lcom/facebook/ads/redexgen/X/3o;->A04(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    .line 44932
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/facebook/ads/redexgen/X/3o;->A0A(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v9

    int-to-float v1, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jv;->A00:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 44933
    invoke-virtual {v9, v1, v8}, Lcom/facebook/ads/redexgen/X/3o;->A07(FI)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 44934
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/3o;->A09(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v9

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Jz;->A08:I

    int-to-float v1, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jv;->A05:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 44935
    invoke-virtual {v9, v1}, Lcom/facebook/ads/redexgen/X/3o;->A06(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v9

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Jz;->A02:I

    int-to-float v1, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Jv;->A00:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 44936
    invoke-virtual {v9, v1}, Lcom/facebook/ads/redexgen/X/3o;->A03(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 44937
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v0

    .line 44938
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44939
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/K2;->A01:Landroid/graphics/Canvas;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 44940
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/K2;->A01:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 44941
    .end local v10    # "regionId":I
    .end local v11    # "regionComposition":Lcom/facebook/ads/redexgen/X/Jz;
    .end local v12    # "baseHorizontalAddress":I
    .end local v13    # "baseVerticalAddress":I
    .end local v14    # "clipRight":I
    .end local v15    # "regionObjects":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$RegionObject;>;"
    .end local v17    # "clipBottom":I
    .end local p4
    .end local p8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 44942
    .end local v2
    :cond_b
    iget v9, v2, Lcom/facebook/ads/redexgen/X/Jz;->A01:I

    const/4 v8, 0x2

    if-ne v9, v8, :cond_c

    .line 44943
    iget-object v9, v14, Lcom/facebook/ads/redexgen/X/Ju;->A02:[I

    iget v8, v2, Lcom/facebook/ads/redexgen/X/Jz;->A06:I

    aget v9, v9, v8

    .restart local v2    # "color":I
    goto :goto_5

    .line 44944
    .end local v2    # "color":I
    :cond_c
    iget-object v9, v14, Lcom/facebook/ads/redexgen/X/Ju;->A01:[I

    iget v8, v2, Lcom/facebook/ads/redexgen/X/Jz;->A05:I

    aget v9, v9, v8

    goto/16 :goto_5

    .line 44945
    :cond_d
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/K2;->A05:Lcom/facebook/ads/redexgen/X/Jv;

    goto/16 :goto_1

    .line 44946
    .end local v16    # "dataBitArray":Lcom/facebook/ads/redexgen/X/4u;
    .end local p5
    .end local p6
    .local v1, "dataBitArray":Lcom/facebook/ads/redexgen/X/4u;
    .restart local v4    # "pageComposition":Lcom/facebook/ads/redexgen/X/Jx;
    .restart local v7    # "pageRegions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/extractor/text/dvb/DvbParser$PageRegion;>;"
    .end local v1    # "dataBitArray":Lcom/facebook/ads/redexgen/X/4u;
    .end local v8    # "i":I
    .restart local v16    # "dataBitArray":Lcom/facebook/ads/redexgen/X/4u;
    :cond_e
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A0J()V
    .locals 1

    .line 44947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A06:Lcom/facebook/ads/redexgen/X/K1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K1;->A00()V

    .line 44948
    return-void
.end method
