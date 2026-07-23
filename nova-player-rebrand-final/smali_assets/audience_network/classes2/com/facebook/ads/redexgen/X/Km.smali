.class public final Lcom/facebook/ads/redexgen/X/Km;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebvttCueInfoBuilder"
.end annotation


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:J

.field public A09:J

.field public A0A:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 935
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ESJRmhDLc7NikCaEyh1Vifm1kcZyUfVZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aTTKw54KgCsdTiacoM6Uao"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AQffeXGY9UF2RO1KJqJs07qSuLvLibNX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JzQF5qJPeleZtBxAVP8FFhosbzcygG6f"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tbObE2uaMy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gF7iYmzQc0u"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ooQgCGRV3OuZUQB0e4AvfnYfn3EwO6qP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bBgaV4vqzz2b3sIikkn4irzAIlEySbAE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Km;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Km;->A06()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A09:J

    .line 48315
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A08:J

    .line 48316
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A06:I

    .line 48317
    const v1, -0x800001

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Km;->A00:F

    .line 48318
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A04:I

    .line 48319
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A03:I

    .line 48320
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Km;->A01:F

    .line 48321
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Km;->A05:I

    .line 48322
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A02:F

    .line 48323
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Km;->A07:I

    .line 48324
    return-void
.end method

.method public static A00(FI)F
    .locals 6

    .line 48325
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, -0x800001

    cmpl-float v0, p0, v4

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1

    cmpl-float v3, p0, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Km;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Km;->A0C:[Ljava/lang/String;

    const-string v1, "J0IfntZMkxbbx68hLNly1u3Pfrgy9oGS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jp12lwau8SNu8MLcYdTF5jN7geoyKRFi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-lez v3, :cond_2

    .line 48326
    :cond_1
    return v5

    .line 48327
    :cond_2
    cmpl-float v0, p0, v4

    if-eqz v0, :cond_3

    .line 48328
    return p0

    .line 48329
    :cond_3
    if-nez p1, :cond_4

    .line 48330
    return v5

    .line 48331
    :cond_4
    return v4
.end method

.method public static A01(I)F
    .locals 3

    .line 48332
    packed-switch p0, :pswitch_data_0

    .line 48333
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 48334
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 48335
    :pswitch_1
    const/4 p0, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Km;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Km;->A0C:[Ljava/lang/String;

    const-string v1, "U5kipMMfYsvpFebUOrNnvm9fZvEH8TF4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "e8XmGXiYxdTIRsHNKLkkAuRQRzEuxsB2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A02(IF)F
    .locals 3

    .line 48336
    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    .line 48337
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48338
    :pswitch_0
    return p1

    .line 48339
    :pswitch_1
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 48340
    mul-float/2addr v1, p1

    return v1

    .line 48341
    :cond_0
    sub-float/2addr v2, p1

    mul-float/2addr v2, v1

    return v2

    .line 48342
    :pswitch_2
    sub-float/2addr v2, p1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A03(I)I
    .locals 0

    .line 48343
    packed-switch p0, :pswitch_data_0

    .line 48344
    :pswitch_0
    const/4 p0, 0x1

    return p0

    .line 48345
    :pswitch_1
    const/4 p0, 0x2

    return p0

    .line 48346
    :pswitch_2
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static A04(I)Landroid/text/Layout$Alignment;
    .locals 4

    .line 48347
    packed-switch p0, :pswitch_data_0

    .line 48348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Km;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xf

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Km;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 48349
    const/4 v0, 0x0

    return-object v0

    .line 48350
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    .line 48351
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    .line 48352
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Km;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Km;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x23t
        0x18t
        0x1dt
        0x18t
        0x19t
        0x1t
        0x18t
        0x56t
        0x2t
        0x13t
        0xet
        0x2t
        0x37t
        0x1at
        0x1ft
        0x11t
        0x18t
        0x1bt
        0x13t
        0x18t
        0x2t
        0x4ct
        0x56t
        0x14t
        0x26t
        0x21t
        0x35t
        0x37t
        0x37t
        0x0t
        0x36t
        0x26t
        0x13t
        0x22t
        0x31t
        0x30t
        0x26t
        0x31t
    .end array-data
.end method


# virtual methods
.method public final A07()Lcom/facebook/ads/redexgen/X/3o;
    .locals 5

    .line 48353
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Km;->A01:F

    const v0, -0x800001

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Km;->A01:F

    .line 48354
    .local v0, "position":F
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Km;->A05:I

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_1

    .line 48355
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Km;->A05:I

    .line 48356
    .local v1, "positionAnchor":I
    :goto_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/3o;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/3o;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A06:I

    .line 48357
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Km;->A04(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0F(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Km;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A04:I

    .line 48358
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Km;->A00(FI)F

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A04:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A07(FI)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A03:I

    .line 48359
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A09(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 48360
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3o;->A04(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    .line 48361
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/3o;->A0A(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Km;->A02:F

    .line 48362
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/Km;->A02(IF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/3o;->A06(F)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A07:I

    .line 48363
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0B(I)Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v1

    .line 48364
    .local v2, "cueBuilder":Lcom/facebook/ads/redexgen/X/3o;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A0A:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 48365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A0A:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3o;->A0G(Ljava/lang/CharSequence;)Lcom/facebook/ads/redexgen/X/3o;

    .line 48366
    :cond_0
    return-object v1

    .line 48367
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A06:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Km;->A03(I)I

    move-result v4

    goto :goto_1

    .line 48368
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Km;->A06:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Km;->A01(I)F

    move-result v3

    goto :goto_0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/Kf;
    .locals 7

    .line 48369
    new-instance v1, Lcom/facebook/ads/redexgen/X/Kf;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Km;->A07()Lcom/facebook/ads/redexgen/X/3o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3o;->A0H()Lcom/facebook/ads/redexgen/X/pT;

    move-result-object v2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Km;->A09:J

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Km;->A08:J

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Kf;-><init>(Lcom/facebook/ads/redexgen/X/pT;JJ)V

    return-object v1
.end method
