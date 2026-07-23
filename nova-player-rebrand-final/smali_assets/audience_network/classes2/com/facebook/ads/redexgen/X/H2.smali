.class public abstract Lcom/facebook/ads/redexgen/X/H2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/H1;,
        Lcom/facebook/ads/redexgen/X/n0;,
        Lcom/facebook/ads/redexgen/X/Gx;,
        Lcom/facebook/ads/redexgen/X/Gw;,
        Lcom/facebook/ads/redexgen/X/Gz;,
        Lcom/facebook/ads/redexgen/X/mz;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Gw;

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/n0;

.field public final A03:Lcom/facebook/ads/redexgen/X/H1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 767
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uP2VmRjmPrkQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gRGWgf4lLYF9Rif8PQPDNbGokb9BUMtV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bSjOyzwe8Lqn79dPeHIi8kfJVgfNJaEZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7R1XMZQjg8S2TiXm1wE8kLqT1leJFKD3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qKJRf3b"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Q40N8hoONMcQBFaHNU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iAP6W7CwppN1UlUQVXHbR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/H2;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/H2;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;JJJJJJI)V
    .locals 16

    .line 38249
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38250
    move-object/from16 v0, p2

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/H2;->A03:Lcom/facebook/ads/redexgen/X/H1;

    .line 38251
    move/from16 v0, p15

    iput v0, v1, Lcom/facebook/ads/redexgen/X/H2;->A01:I

    .line 38252
    new-instance v2, Lcom/facebook/ads/redexgen/X/n0;

    move-object v0, v2

    move-wide/from16 v12, p11

    move-wide/from16 v10, p9

    move-wide/from16 v6, p5

    move-wide/from16 v4, p3

    move-wide/from16 v14, p13

    move-wide/from16 v8, p7

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/facebook/ads/redexgen/X/n0;-><init>(Lcom/facebook/ads/redexgen/X/Gx;JJJJJJ)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/H2;->A02:Lcom/facebook/ads/redexgen/X/n0;

    .line 38253
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/ms;JLcom/facebook/ads/redexgen/X/HV;)I
    .locals 4

    .line 38254
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v1

    cmp-long v0, p2, v1

    if-nez v0, :cond_1

    .line 38255
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/H2;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/H2;->A05:[Ljava/lang/String;

    const-string v1, "eb0wJDSKJb6zWnRAqReB9UTGfXv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 38256
    :cond_1
    iput-wide p2, p4, Lcom/facebook/ads/redexgen/X/HV;->A00:J

    .line 38257
    const/4 v0, 0x1

    return v0
.end method

.method private final A01(J)Lcom/facebook/ads/redexgen/X/Gw;
    .locals 17

    .line 38258
    move-object/from16 v1, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Gw;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/H2;->A02:Lcom/facebook/ads/redexgen/X/n0;

    .line 38259
    move-wide/from16 v3, p1

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/n0;->A05(J)J

    move-result-wide v5

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/H2;->A02:Lcom/facebook/ads/redexgen/X/n0;

    .line 38260
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/n0;->A00(Lcom/facebook/ads/redexgen/X/n0;)J

    move-result-wide v7

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/H2;->A02:Lcom/facebook/ads/redexgen/X/n0;

    .line 38261
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/n0;->A01(Lcom/facebook/ads/redexgen/X/n0;)J

    move-result-wide v9

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/H2;->A02:Lcom/facebook/ads/redexgen/X/n0;

    .line 38262
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/n0;->A02(Lcom/facebook/ads/redexgen/X/n0;)J

    move-result-wide v11

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/H2;->A02:Lcom/facebook/ads/redexgen/X/n0;

    .line 38263
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/n0;->A03(Lcom/facebook/ads/redexgen/X/n0;)J

    move-result-wide v13

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/H2;->A02:Lcom/facebook/ads/redexgen/X/n0;

    .line 38264
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/n0;->A04(Lcom/facebook/ads/redexgen/X/n0;)J

    move-result-wide v15

    invoke-direct/range {v2 .. v16}, Lcom/facebook/ads/redexgen/X/Gw;-><init>(JJJJJJJ)V

    .line 38265
    return-object v2
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/H2;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x23

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

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/H2;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x20t
        0x38t
        0x2ft
        0x22t
        0x27t
        0x2at
        0x6et
        0x2dt
        0x2ft
        0x3dt
        0x2bt
    .end array-data
.end method

.method private final A04(ZJ)V
    .locals 1

    .line 38266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/H2;->A00:Lcom/facebook/ads/redexgen/X/Gw;

    .line 38267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H2;->A03:Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/H1;->AFs()V

    .line 38268
    return-void
.end method

.method private final A05(Lcom/facebook/ads/redexgen/X/ms;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38269
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 38270
    .local v0, "bytesToSkip":J
    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-ltz v0, :cond_0

    const-wide/32 v1, 0x40000

    cmp-long v0, p2, v1

    if-gtz v0, :cond_0

    .line 38271
    long-to-int v0, p2

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 38272
    const/4 v0, 0x1

    return v0

    .line 38273
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A06(Lcom/facebook/ads/redexgen/X/ms;Lcom/facebook/ads/redexgen/X/HV;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38274
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H2;->A00:Lcom/facebook/ads/redexgen/X/Gw;

    .line 38275
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/Gw;

    .line 38276
    .local v0, "seekOperationParams":Lcom/facebook/ads/redexgen/X/Gw;
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Gw;->A07(Lcom/facebook/ads/redexgen/X/Gw;)J

    move-result-wide v0

    .line 38277
    .local v1, "floorPosition":J
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Gw;->A08(Lcom/facebook/ads/redexgen/X/Gw;)J

    move-result-wide v9

    .line 38278
    .local v3, "ceilingPosition":J
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Gw;->A09(Lcom/facebook/ads/redexgen/X/Gw;)J

    move-result-wide v2

    .line 38279
    .local v5, "searchPosition":J
    sub-long/2addr v9, v0

    iget v4, p0, Lcom/facebook/ads/redexgen/X/H2;->A01:I

    int-to-long v4, v4

    const/4 v7, 0x0

    cmp-long v8, v9, v4

    if-gtz v8, :cond_0

    .line 38280
    invoke-direct {p0, v7, v0, v1}, Lcom/facebook/ads/redexgen/X/H2;->A04(ZJ)V

    sget-object v4, Lcom/facebook/ads/redexgen/X/H2;->A05:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v4, v2

    const/4 v2, 0x1

    aget-object v4, v4, v2

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38281
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/ads/redexgen/X/H2;->A05(Lcom/facebook/ads/redexgen/X/ms;J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38282
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/facebook/ads/redexgen/X/H2;->A00(Lcom/facebook/ads/redexgen/X/ms;JLcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 38283
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 38284
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/H2;->A03:Lcom/facebook/ads/redexgen/X/H1;

    .line 38285
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Gw;->A0A(Lcom/facebook/ads/redexgen/X/Gw;)J

    move-result-wide v0

    invoke-interface {v4, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/H1;->AIw(Lcom/facebook/ads/redexgen/X/ms;J)Lcom/facebook/ads/redexgen/X/Gz;

    move-result-object v4

    .line 38286
    .local v7, "timestampSearchResult":Lcom/facebook/ads/redexgen/X/Gz;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Gz;->A00(Lcom/facebook/ads/redexgen/X/Gz;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 38287
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H2;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38288
    :pswitch_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Gz;->A01(Lcom/facebook/ads/redexgen/X/Gz;)J

    move-result-wide v2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Gz;->A02(Lcom/facebook/ads/redexgen/X/Gz;)J

    move-result-wide v0

    .line 38289
    invoke-static {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Gw;->A0E(Lcom/facebook/ads/redexgen/X/Gw;JJ)V

    .line 38290
    goto :goto_0

    .line 38291
    :pswitch_1
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Gz;->A01(Lcom/facebook/ads/redexgen/X/Gz;)J

    move-result-wide v2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Gz;->A02(Lcom/facebook/ads/redexgen/X/Gz;)J

    move-result-wide v0

    .line 38292
    invoke-static {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Gw;->A0F(Lcom/facebook/ads/redexgen/X/Gw;JJ)V

    .line 38293
    goto :goto_0

    .line 38294
    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/H2;->A05:[Ljava/lang/String;

    const-string v3, "cjf3Phs"

    const/4 v2, 0x5

    aput-object v3, v4, v2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/facebook/ads/redexgen/X/H2;->A00(Lcom/facebook/ads/redexgen/X/ms;JLcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 38295
    :pswitch_2
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Gz;->A02(Lcom/facebook/ads/redexgen/X/Gz;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/H2;->A05(Lcom/facebook/ads/redexgen/X/ms;J)Z

    .line 38296
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Gz;->A02(Lcom/facebook/ads/redexgen/X/Gz;)J

    move-result-wide v1

    .line 38297
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/H2;->A04(ZJ)V

    .line 38298
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Gz;->A02(Lcom/facebook/ads/redexgen/X/Gz;)J

    move-result-wide v0

    .line 38299
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/facebook/ads/redexgen/X/H2;->A00(Lcom/facebook/ads/redexgen/X/ms;JLcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    .line 38300
    .restart local v0    # "seekOperationParams":Lcom/facebook/ads/redexgen/X/Gw;
    .restart local v1    # "floorPosition":J
    .restart local v3    # "ceilingPosition":J
    .restart local v5    # "searchPosition":J
    .restart local v7    # "timestampSearchResult":Lcom/facebook/ads/redexgen/X/Gz;
    :pswitch_3
    invoke-direct {p0, v7, v2, v3}, Lcom/facebook/ads/redexgen/X/H2;->A04(ZJ)V

    .line 38301
    invoke-direct {p0, p1, v2, v3, p2}, Lcom/facebook/ads/redexgen/X/H2;->A00(Lcom/facebook/ads/redexgen/X/ms;JLcom/facebook/ads/redexgen/X/HV;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/n0;
    .locals 1

    .line 38302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H2;->A02:Lcom/facebook/ads/redexgen/X/n0;

    return-object v0
.end method

.method public final A08(J)V
    .locals 3

    .line 38303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H2;->A00:Lcom/facebook/ads/redexgen/X/Gw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H2;->A00:Lcom/facebook/ads/redexgen/X/Gw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Gw;->A06(Lcom/facebook/ads/redexgen/X/Gw;)J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_0

    .line 38304
    return-void

    .line 38305
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/H2;->A01(J)Lcom/facebook/ads/redexgen/X/Gw;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/H2;->A00:Lcom/facebook/ads/redexgen/X/Gw;

    .line 38306
    return-void
.end method

.method public final A09()Z
    .locals 1

    .line 38307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H2;->A00:Lcom/facebook/ads/redexgen/X/Gw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
