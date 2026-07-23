.class public Lcom/facebook/ads/redexgen/X/EF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ek;,
        Lcom/facebook/ads/redexgen/X/ei;,
        Lcom/facebook/ads/redexgen/X/ej;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/internal/util/common/Stateful<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/ej;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/iE;

.field public final A0D:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0E:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0F:Lcom/facebook/ads/redexgen/X/ei;

.field public final A0G:Lcom/facebook/ads/redexgen/X/er;

.field public final A0H:Lcom/facebook/ads/redexgen/X/es;

.field public final A0I:Ljava/lang/Object;

.field public final A0J:Ljava/lang/String;

.field public final A0K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 705
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pLRRT7xfKKmC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sDjB9WgW1E6gHf8gwZURHsTrfoUrQz1T"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uiJP8xmaVv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5XKoBHy1xynVgVvyT837PyBbXD1HwArb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BpJCepaU8WbBulVTB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9USxYKvyty1bKFarGQoBTCJfC9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "y9X2NkRV2raN2WQBQaXrllWfrJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7FHQr1tSmfn5NF7ZWaBxZ9Q6x0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EF;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EF;->A0O()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/ei;Ljava/lang/String;ZIIZLandroid/os/Bundle;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/er;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/gi;",
            "Lcom/facebook/ads/redexgen/X/VA;",
            "Lcom/facebook/ads/redexgen/X/ei;",
            "Ljava/lang/String;",
            "ZIIZ",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/er;",
            ")V"
        }
    .end annotation

    .line 34487
    .local p23, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34488
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0I:Ljava/lang/Object;

    .line 34489
    const/4 v1, 0x0

    iput v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    .line 34490
    iput v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    .line 34491
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A05:Z

    .line 34492
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0B:Z

    .line 34493
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    .line 34494
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    .line 34495
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A09:Z

    .line 34496
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0A:Z

    .line 34497
    iput v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A00:I

    .line 34498
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A04:Ljava/lang/String;

    .line 34499
    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    .line 34500
    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/EF;->A0E:Lcom/facebook/ads/redexgen/X/VA;

    .line 34501
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/EF;->A0F:Lcom/facebook/ads/redexgen/X/ei;

    .line 34502
    move-object v1, p4

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0J:Ljava/lang/String;

    .line 34503
    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0K:Ljava/util/Map;

    .line 34504
    move/from16 v1, p5

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A08:Z

    .line 34505
    move/from16 v1, p8

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    .line 34506
    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0G:Lcom/facebook/ads/redexgen/X/er;

    .line 34507
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34508
    .local v5, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/EH;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v10, 0x1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v3, p0

    move-object v2, v2

    .end local v5    # "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    .local p12, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/EH;-><init>(Lcom/facebook/ads/redexgen/X/EF;DDDZ)V

    .end local p12
    .local v8, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34509
    new-instance v2, Lcom/facebook/ads/redexgen/X/EG;

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    const/4 v10, 0x0

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .end local v8    # "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    .local p1, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/EG;-><init>(Lcom/facebook/ads/redexgen/X/EF;DDDZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34510
    move-object/from16 v5, p9

    if-eqz v5, :cond_0

    .line 34511
    const/4 v4, 0x6

    const/16 v3, 0x10

    const/16 v2, 0x39

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/EF;->A0G:Lcom/facebook/ads/redexgen/X/er;

    new-instance v2, Lcom/facebook/ads/redexgen/X/iE;

    invoke-direct {v2, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/iE;-><init>(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/er;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    .line 34512
    const/16 v3, 0x61

    const/16 v2, 0x12

    const/16 v1, 0x4a

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    .line 34513
    const/16 v3, 0x4f

    const/16 v2, 0x12

    const/16 v1, 0x6c

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    .line 34514
    const/16 v3, 0x92

    const/16 v2, 0xa

    const/16 v1, 0x61

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    .line 34515
    const/16 v3, 0xab

    const/16 v2, 0x14

    const/16 v1, 0x47

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0A:Z

    .line 34516
    const/16 v3, 0x9c

    const/16 v2, 0xf

    const/16 v1, 0x3b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A09:Z

    .line 34517
    :goto_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Up;->A2W(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A05:Z

    .line 34518
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Up;->A2a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0B:Z

    .line 34519
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/es;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/es;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/EF;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/EF;->A0H:Lcom/facebook/ads/redexgen/X/es;

    .line 34520
    return-void

    .line 34521
    :cond_0
    move/from16 v2, p6

    iput v2, v0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    .line 34522
    move/from16 v2, p7

    iput v2, v0, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    .line 34523
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/EF;->A0G:Lcom/facebook/ads/redexgen/X/er;

    new-instance v2, Lcom/facebook/ads/redexgen/X/iE;

    invoke-direct {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/iE;-><init>(Ljava/util/List;Lcom/facebook/ads/redexgen/X/er;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    goto :goto_0
.end method

.method private final A0F()F
    .locals 2

    .line 34524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y7;->A00(Landroid/content/Context;)F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0F:Lcom/facebook/ads/redexgen/X/ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ei;->getVolume()F

    move-result v0

    mul-float/2addr v1, v0

    return v1
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/EF;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 34525
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static A0H(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/EF;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/EF;)Ljava/lang/String;
    .locals 0

    .line 34526
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0J:Ljava/lang/String;

    return-object p0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/ek;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/ek;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0F:Lcom/facebook/ads/redexgen/X/ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ei;->getCurrentPositionInMillis()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0K(Lcom/facebook/ads/redexgen/X/ek;II)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/ek;II)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/ek;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34528
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 34529
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0F:Lcom/facebook/ads/redexgen/X/ei;

    .line 34530
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ei;->getVideoStartReason()Lcom/facebook/ads/redexgen/X/et;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0F:Lcom/facebook/ads/redexgen/X/ei;

    .line 34531
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ei;->AAV()Z

    move-result v0

    .line 34532
    xor-int/2addr v0, v2

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Y7;->A03(Ljava/util/Map;ZZ)V

    .line 34533
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/EF;->A0U(Ljava/util/Map;)V

    .line 34534
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/EF;->A0S(Ljava/util/Map;)V

    .line 34535
    invoke-direct {p0, v4, p2}, Lcom/facebook/ads/redexgen/X/EF;->A0W(Ljava/util/Map;I)V

    .line 34536
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/EF;->A0V(Ljava/util/Map;)V

    .line 34537
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/EF;->A0T(Ljava/util/Map;)V

    .line 34538
    invoke-virtual {p0, p1, v4}, Lcom/facebook/ads/redexgen/X/EF;->A0n(Lcom/facebook/ads/redexgen/X/ek;Ljava/util/Map;)V

    .line 34539
    iget v0, p1, Lcom/facebook/ads/redexgen/X/ek;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34540
    const/16 v2, 0x3b

    const/16 v1, 0xb

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34541
    return-object v4

    .line 34542
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/EF;Lcom/facebook/ads/redexgen/X/ek;)Ljava/util/Map;
    .locals 0

    .line 34543
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EF;->A0J(Lcom/facebook/ads/redexgen/X/ek;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private A0M()V
    .locals 2

    .line 34544
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    if-eqz v0, :cond_0

    .line 34545
    return-void

    .line 34546
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EF;->A0J:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ek;->A04:Lcom/facebook/ads/redexgen/X/ek;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0J(Lcom/facebook/ads/redexgen/X/ek;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 34547
    return-void
.end method

.method private A0N()V
    .locals 4

    .line 34548
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    if-eqz v0, :cond_0

    .line 34549
    return-void

    .line 34550
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/EF;->A0J:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/EF;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/EF;->A0M:[Ljava/lang/String;

    const-string v1, "FJm4aBnN5GbAhpBnCwQDj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/ek;->A0A:Lcom/facebook/ads/redexgen/X/ek;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0J(Lcom/facebook/ads/redexgen/X/ek;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 34551
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0O()V
    .locals 1

    const/16 v0, 0xf3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/EF;->A0L:[B

    return-void

    :array_0
    .array-data 1
        -0x56t
        -0x54t
        -0x43t
        -0x4et
        -0x48t
        -0x49t
        -0x35t
        -0x32t
        -0x45t
        -0x21t
        -0x35t
        -0x2at
        -0x2dt
        -0x22t
        -0x1dt
        -0x49t
        -0x35t
        -0x28t
        -0x35t
        -0x2ft
        -0x31t
        -0x24t
        -0x4bt
        -0x38t
        -0x43t
        -0x3ft
        -0x47t
        -0x4dt
        -0x3ft
        -0x39t
        -0x41t
        -0x30t
        -0x3bt
        -0x37t
        -0x3ft
        -0x47t
        -0x46t
        -0x3ft
        -0x4ct
        -0x4at
        -0x37t
        -0x42t
        -0x3et
        -0x46t
        -0x4ct
        -0x3et
        -0x38t
        -0x2at
        -0x29t
        -0x22t
        -0x2ft
        -0x18t
        -0x1at
        -0x25t
        -0x21t
        -0x29t
        -0x2ft
        -0x21t
        -0x1bt
        -0x31t
        -0x20t
        -0x31t
        -0x28t
        -0x22t
        -0x37t
        -0x2dt
        -0x28t
        -0x32t
        -0x31t
        -0x1et
        -0x45t
        -0x32t
        -0x3bt
        -0x3at
        -0x3et
        -0x49t
        -0x31t
        -0x45t
        -0x38t
        0x9t
        -0x2t
        0x10t
        0x11t
        -0x21t
        0xct
        0x12t
        0xbt
        0x1t
        -0x2t
        0xft
        0x16t
        -0xft
        0x6t
        0xat
        0x2t
        -0x16t
        -0x10t
        -0x19t
        -0x24t
        -0x12t
        -0x11t
        -0x35t
        -0x13t
        -0x16t
        -0x1et
        -0x13t
        -0x20t
        -0x12t
        -0x12t
        -0x31t
        -0x1ct
        -0x18t
        -0x20t
        -0x38t
        -0x32t
        -0x2et
        -0x38t
        -0x3at
        -0x27t
        -0x3ct
        -0x2et
        -0x28t
        -0x11t
        -0x1bt
        -0x8t
        -0xat
        -0x1ft
        -0x11t
        -0xbt
        -0x26t
        -0x2et
        -0x23t
        -0x27t
        -0x5t
        -0x3t
        -0x10t
        -0x5t
        -0x5t
        -0x1t
        -0x3et
        -0x3at
        -0x45t
        -0x41t
        -0x49t
        -0x2ct
        -0x25t
        0x5t
        0x6t
        -0xdt
        0x6t
        -0x9t
        -0xft
        -0xat
        0x1t
        0x0t
        -0x9t
        -0x21t
        -0x20t
        -0x33t
        -0x20t
        -0x2ft
        -0x35t
        -0x27t
        -0x22t
        -0x31t
        -0x35t
        -0x2et
        -0x2bt
        -0x22t
        -0x2ft
        -0x30t
        -0x15t
        -0x14t
        -0x27t
        -0x14t
        -0x23t
        -0x29t
        -0x12t
        -0x1ft
        -0x23t
        -0x11t
        -0x27t
        -0x26t
        -0x1ct
        -0x23t
        -0x29t
        -0x22t
        -0x1ft
        -0x16t
        -0x23t
        -0x24t
        -0x6t
        -0x11t
        -0xdt
        -0x15t
        -0x6t
        -0x10t
        -0x1bt
        -0xdt
        -0x17t
        -0x16t
        -0x1ct
        -0x26t
        -0x25t
        -0x31t
        -0x1at
        -0x55t
        -0x5bt
        -0x63t
        0x1ft
        0x19t
        0x20t
        0x13t
        0x11t
        0x6t
        0xat
        0x2t
        -0x4t
        0xat
        0x10t
        -0x46t
        -0x45t
        -0x5dt
        -0x4at
        -0x49t
        -0x4et
        -0x40t
        -0x3ft
        -0x55t
        -0x51t
        -0x50t
        -0x5at
        -0x1et
        -0x1dt
        -0x27t
        -0x33t
        -0x1ct
        0x18t
        0xat
        0xft
        0x5t
        0x10t
        0x18t
    .end array-data
.end method

.method private final A0P(IZZ)V
    .locals 7

    .line 34552
    int-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v0, v1, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    if-ge p1, v0, :cond_1

    .line 34553
    :cond_0
    return-void

    .line 34554
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    const/4 v4, 0x1

    if-le p1, v0, :cond_4

    .line 34555
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    sub-int v0, p1, v0

    int-to-float v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-double v2, v1

    .line 34556
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EF;->A0F()F

    move-result v0

    float-to-double v0, v0

    .line 34557
    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/iE;->A06(DD)V

    .line 34558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0G:Lcom/facebook/ads/redexgen/X/er;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/er;->A9V()D

    move-result-wide v5

    .line 34559
    .local v2, "viewableRatio":D
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v5, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    .line 34560
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->AKk(Ljava/lang/String;)V

    .line 34562
    :cond_2
    iput p1, p0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    .line 34563
    if-nez p3, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    sub-int v1, p1, v0

    const/16 v0, 0x1388

    if-lt v1, v0, :cond_4

    .line 34564
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EF;->A0J:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ek;->A09:Lcom/facebook/ads/redexgen/X/ek;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:I

    .line 34565
    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0K(Lcom/facebook/ads/redexgen/X/ek;II)Ljava/util/Map;

    move-result-object v0

    .line 34566
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 34567
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    .line 34568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iE;->A05()V

    .line 34569
    return-void

    .line 34570
    .end local v2    # "viewableRatio":D
    :cond_4
    if-eqz p2, :cond_6

    .line 34571
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    if-eqz v0, :cond_5

    .line 34572
    return-void

    .line 34573
    :cond_5
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    .line 34574
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EF;->A0J:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ek;->A09:Lcom/facebook/ads/redexgen/X/ek;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A00:I

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0K(Lcom/facebook/ads/redexgen/X/ek;II)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 34575
    :cond_6
    return-void
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/EF;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 34576
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/EF;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private A0R(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34577
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0E:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/VA;->ACB(Ljava/lang/String;Ljava/util/Map;)V

    .line 34578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A03:Lcom/facebook/ads/redexgen/X/ej;

    if-eqz v0, :cond_0

    .line 34579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A03:Lcom/facebook/ads/redexgen/X/ej;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ej;->AEk()V

    .line 34580
    :cond_0
    return-void
.end method

.method private A0S(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34581
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iE;->A03()Lcom/facebook/ads/redexgen/X/Of;

    move-result-object v7

    .line 34582
    .local v0, "stats":Lcom/facebook/ads/redexgen/X/Of;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Of;->A00()Lcom/facebook/ads/redexgen/X/Oe;

    move-result-object v4

    .line 34583
    .local v1, "viewability":Lcom/facebook/ads/redexgen/X/Oe;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe2

    const/4 v1, 0x3

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34584
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A06()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe5

    const/4 v1, 0x3

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34585
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A03()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe8

    const/4 v1, 0x5

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34586
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A02()D

    move-result-wide v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd4

    const/16 v1, 0x8

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34587
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A01()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2f

    const/16 v1, 0xc

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34588
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A04()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7a

    const/4 v1, 0x7

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A04:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34590
    const/16 v2, 0xdc

    const/4 v1, 0x6

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A04:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34591
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Of;->A01()Lcom/facebook/ads/redexgen/X/Oe;

    move-result-object v4

    .line 34592
    .local v2, "volume":Lcom/facebook/ads/redexgen/X/Oe;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34593
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A06()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc6

    const/4 v1, 0x3

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34594
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A03()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc9

    const/4 v1, 0x5

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34595
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A02()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x16

    const/16 v1, 0x8

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34596
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A01()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x23

    const/16 v1, 0xc

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34597
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oe;->A04()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x73

    const/4 v1, 0x7

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34598
    return-void
.end method

.method private A0T(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34599
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0K:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 34600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0K:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 34601
    :cond_0
    return-void
.end method

.method private A0U(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34602
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0F:Lcom/facebook/ads/redexgen/X/ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ei;->AAQ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x46

    const/16 v1, 0x9

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0F:Lcom/facebook/ads/redexgen/X/ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ei;->getInitialBufferTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x85

    const/4 v1, 0x4

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34604
    return-void
.end method

.method private A0V(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34605
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 34606
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0F:Lcom/facebook/ads/redexgen/X/ei;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/ei;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 34607
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x89

    const/4 v1, 0x2

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34608
    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x83

    const/4 v1, 0x2

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0F:Lcom/facebook/ads/redexgen/X/ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ei;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x81

    const/4 v1, 0x2

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0F:Lcom/facebook/ads/redexgen/X/ei;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ei;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x90

    const/4 v1, 0x2

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34611
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/EF;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    const/16 v2, 0xed

    const/4 v1, 0x6

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/gi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 34612
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 34613
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 34614
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xce

    const/4 v1, 0x3

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34615
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xd1

    const/4 v1, 0x3

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34616
    return-void
.end method

.method private A0W(Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 34617
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1e

    const/4 v1, 0x5

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34618
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    int-to-float v0, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8b

    const/4 v1, 0x5

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34619
    int-to-float v0, p2

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xbf

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34620
    return-void
.end method

.method public static synthetic A0X(Lcom/facebook/ads/redexgen/X/EF;)Z
    .locals 0

    .line 34621
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/EF;->A09:Z

    return p0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/EF;)Z
    .locals 0

    .line 34622
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0A:Z

    return p0
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/EF;Z)Z
    .locals 0

    .line 34623
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/EF;->A09:Z

    return p1
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/EF;Z)Z
    .locals 0

    .line 34624
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/EF;->A0A:Z

    return p1
.end method


# virtual methods
.method public final A0b()I
    .locals 1

    .line 34625
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    return v0
.end method

.method public final A0c()Landroid/os/Bundle;
    .locals 5

    .line 34626
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EF;->A0b()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EF;->A0b()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0l(II)V

    .line 34627
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 34628
    .local v0, "bundle":Landroid/os/Bundle;
    const/16 v2, 0x61

    const/16 v1, 0x12

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34629
    const/16 v2, 0x4f

    const/16 v1, 0x12

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34630
    const/16 v2, 0x92

    const/16 v1, 0xa

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34631
    const/16 v2, 0xab

    const/16 v1, 0x14

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0A:Z

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34632
    const/16 v2, 0x9c

    const/16 v1, 0xf

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A09:Z

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iE;->A02()Landroid/os/Bundle;

    move-result-object v3

    const/4 v2, 0x6

    const/16 v1, 0x10

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0H(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34634
    return-object v4
.end method

.method public final A0d()V
    .locals 2

    .line 34635
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    if-eqz v0, :cond_0

    .line 34636
    return-void

    .line 34637
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EF;->A0J:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ek;->A07:Lcom/facebook/ads/redexgen/X/ek;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0J(Lcom/facebook/ads/redexgen/X/ek;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 34638
    return-void
.end method

.method public final A0e()V
    .locals 2

    .line 34639
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    if-eqz v0, :cond_0

    .line 34640
    return-void

    .line 34641
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EF;->A0J:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ek;->A08:Lcom/facebook/ads/redexgen/X/ek;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0J(Lcom/facebook/ads/redexgen/X/ek;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 34642
    return-void
.end method

.method public final A0f()V
    .locals 5

    .line 34643
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EF;->A0F()F

    move-result v0

    float-to-double v3, v0

    const-wide v1, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v3, v1

    if-gez v0, :cond_1

    .line 34644
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EF;->A0I:Ljava/lang/Object;

    monitor-enter v1

    .line 34645
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A08:Z

    if-eqz v0, :cond_0

    .line 34646
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EF;->A0M()V

    .line 34647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A08:Z

    .line 34648
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 34649
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EF;->A0I:Ljava/lang/Object;

    monitor-enter v1

    .line 34650
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A08:Z

    if-nez v0, :cond_2

    .line 34651
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EF;->A0N()V

    .line 34652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A08:Z

    .line 34653
    :cond_2
    monitor-exit v1

    .line 34654
    :goto_0
    return-void

    .line 34655
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final A0g()V
    .locals 4

    .line 34656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    .line 34657
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EF;->A0H:Lcom/facebook/ads/redexgen/X/es;

    .line 34658
    const/4 v0, 0x1

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34659
    return-void
.end method

.method public final A0h()V
    .locals 2

    .line 34660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0H:Lcom/facebook/ads/redexgen/X/es;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34661
    return-void
.end method

.method public final A0i(I)V
    .locals 7

    .line 34662
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    if-eqz v0, :cond_0

    .line 34663
    return-void

    .line 34664
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iE;->A04()V

    .line 34665
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EF;->A0J:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ek;->A05:Lcom/facebook/ads/redexgen/X/ek;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0J(Lcom/facebook/ads/redexgen/X/ek;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0R(Ljava/lang/String;Ljava/util/Map;)V

    .line 34666
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A05:Z

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 34667
    invoke-direct {p0, p1, v5, v6}, Lcom/facebook/ads/redexgen/X/EF;->A0P(IZZ)V

    .line 34668
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0B:Z

    if-eqz v0, :cond_1

    .line 34669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iE;->A05()V

    .line 34670
    :cond_1
    return-void

    .line 34671
    :cond_2
    int-to-double v3, p1

    const-wide v1, 0x409f400000000000L    # 2000.0

    cmpg-double v0, v3, v1

    if-gez v0, :cond_3

    :goto_1
    invoke-direct {p0, p1, v5, v6}, Lcom/facebook/ads/redexgen/X/EF;->A0P(IZZ)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public final A0j(I)V
    .locals 2

    .line 34672
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/EF;->A0P(IZZ)V

    .line 34673
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    if-nez v0, :cond_0

    .line 34674
    iput v1, p0, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    .line 34675
    iput v1, p0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    .line 34676
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iE;->A05()V

    .line 34677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iE;->A04()V

    .line 34678
    return-void
.end method

.method public final A0k(I)V
    .locals 1

    .line 34679
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0P(IZZ)V

    .line 34680
    return-void
.end method

.method public final A0l(II)V
    .locals 2

    .line 34681
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0P(IZZ)V

    .line 34682
    iput p2, p0, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    .line 34683
    iput p2, p0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    .line 34684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iE;->A05()V

    .line 34685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0C:Lcom/facebook/ads/redexgen/X/iE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iE;->A04()V

    .line 34686
    return-void
.end method

.method public final A0m(Lcom/facebook/ads/redexgen/X/ej;)V
    .locals 0

    .line 34687
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EF;->A03:Lcom/facebook/ads/redexgen/X/ej;

    .line 34688
    return-void
.end method

.method public A0n(Lcom/facebook/ads/redexgen/X/ek;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/ek;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34689
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public final A0o(Lcom/facebook/ads/redexgen/X/EF;)V
    .locals 1

    .line 34690
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/EF;->A06:Z

    .line 34691
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/EF;->A07:Z

    .line 34692
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A0A:Z

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/EF;->A0A:Z

    .line 34693
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A09:Z

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/EF;->A09:Z

    .line 34694
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    iput v0, p1, Lcom/facebook/ads/redexgen/X/EF;->A02:I

    .line 34695
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    iput v0, p1, Lcom/facebook/ads/redexgen/X/EF;->A01:I

    .line 34696
    return-void
.end method
