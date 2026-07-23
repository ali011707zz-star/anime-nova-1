.class public final Lcom/facebook/ads/redexgen/X/7g;
.super Lcom/facebook/ads/redexgen/X/j0;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 478
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5V5lzA70kRKZvNcqBnXwT00Z041t6ONl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kRuh8LYE7MIIox"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vbi5lrus1TtIcXopJBSqGum5Kl452Sg0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JcNQ6WafPgnmx1aBDePIhrwzaceROyrU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "60x4BO5hhvvMWgz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "65jgyaanPJJ2TdYJaJc79ygQBnrUrWFq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zOX7nuTxFizV3LeqTcyyEc2wd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PvIxiwPRiyIOar7lINjn4bFuW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7g;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7g;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O7;)V
    .locals 0

    .line 21432
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/j0;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O7;)V

    .line 21433
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7g;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(J)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21434
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 21435
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x24

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7g;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21436
    return-object v4
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7g;J)Ljava/util/Map;
    .locals 0

    .line 21437
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7g;->A01(J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7g;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        0x2ft
        0x6bt
        0x22t
        0x38t
        0x6bt
        0x25t
        0x24t
        0x3ft
        0x6bt
        0x39t
        0x2et
        0x2at
        0x2ft
        0x32t
        0x6bt
        0x24t
        0x39t
        0x6bt
        0x2at
        0x27t
        0x39t
        0x2et
        0x2at
        0x2ft
        0x32t
        0x6bt
        0x2ft
        0x22t
        0x38t
        0x3bt
        0x27t
        0x2at
        0x32t
        0x2et
        0x2ft
        0x14t
        0x15t
        0x1ct
        0x11t
        0x9t
    .end array-data
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7g;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 21438
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7g;->A05(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method private A05(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21439
    .local p1, "trackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7g;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7g;->A01:[Ljava/lang/String;

    const-string v1, "86KHDrV9NKgfIZAVdUdv4tP2w"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "hnWt117Y9rLxZfnYOmFuZ36IL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 21440
    :cond_1
    return-void

    .line 21441
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21442
    .local v1, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Lcom/facebook/ads/redexgen/X/gF;

    invoke-direct {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/gF;-><init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/util/Map;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/gF;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21443
    .end local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 21444
    :cond_3
    return-void
.end method


# virtual methods
.method public final A0P()V
    .locals 5

    .line 21445
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/j0;->A01:Lcom/facebook/ads/redexgen/X/N1;

    check-cast v4, Lcom/facebook/ads/redexgen/X/ju;

    .line 21446
    .local v0, "nativeAdapter":Lcom/facebook/ads/redexgen/X/ju;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ju;->A0R()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21447
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7g;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7g;->A01:[Ljava/lang/String;

    const-string v1, "SmlVqZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 21448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/N2;->A0B(Lcom/facebook/ads/redexgen/X/ju;)V

    .line 21449
    :cond_1
    return-void

    .line 21450
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x24

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7g;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/O8;)V
    .locals 16

    .line 21451
    move-object/from16 v7, p1

    move-object/from16 v3, p0

    check-cast v7, Lcom/facebook/ads/redexgen/X/ju;

    .line 21452
    .local v8, "adapter":Lcom/facebook/ads/redexgen/X/ju;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 21453
    .local v9, "requestTime":J
    new-instance v4, Lcom/facebook/ads/redexgen/X/ix;

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/ix;-><init>(Lcom/facebook/ads/redexgen/X/7g;Lcom/facebook/ads/redexgen/X/O8;Lcom/facebook/ads/redexgen/X/ju;JLcom/facebook/ads/redexgen/X/Tu;)V

    .line 21454
    .local v6, "nativeTimeout":Ljava/lang/Runnable;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/j0;->A0H()Landroid/os/Handler;

    move-result-object v2

    .line 21455
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Tw;->A05()Lcom/facebook/ads/redexgen/X/Tx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21456
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/iw;

    move-object/from16 v11, p0

    move-object v12, v4

    move-wide v13, v8

    move-object v15, v10

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/iw;-><init>(Lcom/facebook/ads/redexgen/X/7g;Ljava/lang/Runnable;JLcom/facebook/ads/redexgen/X/Tu;)V

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/j0;->A09:Lcom/facebook/ads/redexgen/X/VA;

    .line 21457
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UK;->A0K()Lcom/facebook/ads/redexgen/X/Uk;

    move-result-object v5

    .line 21458
    move-object v0, v7

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/ju;->A0L(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/NG;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/O8;Lcom/facebook/ads/redexgen/X/Va;)V

    .line 21459
    return-void
.end method
