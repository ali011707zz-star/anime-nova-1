.class public final Lcom/facebook/ads/redexgen/X/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/m1;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public final A08:J

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/JX;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Jb;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3213
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jRj2ugi7SPR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MNKsBNeD8MF1tCUmeU2P5Nj3hkdjoOc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XMkmXaTlrOCX5lXmL6kh3TwHyWbdiNoj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CqZnv6WT0ufq4g7hl2oSYE9w8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bGEXSwT2dmCwLmvORXS7whQ8v"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "55313totkqX4mBMXvHmYF6PzdsDv8MD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C0ywJUyDCeWGQi9DxnjwsD3coqyGffR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BhHq3twmKlbS1H4hpApJBSGHB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/m0;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jb;JJJJZ)V
    .locals 4

    .line 95318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95319
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_2

    cmp-long v0, p4, p2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 95320
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/m0;->A0B:Lcom/facebook/ads/redexgen/X/Jb;

    .line 95321
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/m0;->A09:J

    .line 95322
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/m0;->A08:J

    .line 95323
    sub-long/2addr p4, p2

    cmp-long v0, p6, p4

    if-eqz v0, :cond_0

    if-eqz p10, :cond_1

    .line 95324
    :cond_0
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/m0;->A07:J

    .line 95325
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:I

    .line 95326
    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/JX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JX;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    .line 95327
    return-void

    .line 95328
    :cond_1
    iput v1, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:I

    goto :goto_1

    .line 95329
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ms;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95330
    move-object/from16 v5, p0

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/m0;->A01:J

    const-wide/16 v15, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 95331
    return-wide v15

    .line 95332
    :cond_0
    move-object/from16 v8, p1

    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v9

    .line 95333
    .local v2, "currentPosition":J
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A01:J

    invoke-virtual {v2, v8, v0, v1}, Lcom/facebook/ads/redexgen/X/JX;->A04(Lcom/facebook/ads/redexgen/X/ms;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95334
    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    cmp-long v0, v1, v9

    if-eqz v0, :cond_1

    .line 95335
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    return-wide v0

    .line 95336
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/m0;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95337
    :cond_2
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    const/4 v0, 0x0

    invoke-virtual {v1, v8, v0}, Lcom/facebook/ads/redexgen/X/JX;->A05(Lcom/facebook/ads/redexgen/X/ms;Z)Z

    .line 95338
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 95339
    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/m0;->A06:J

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/JX;->A05:J

    sub-long/2addr v2, v0

    .line 95340
    .local v4, "granuleDistance":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/JX;->A01:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JX;->A00:I

    add-int/2addr v6, v0

    .line 95341
    .local v8, "pageSize":I
    const-wide/16 v13, 0x0

    cmp-long v0, v13, v2

    if-gtz v0, :cond_3

    const-wide/32 v11, 0x11940

    cmp-long v0, v2, v11

    if-gez v0, :cond_3

    .line 95342
    return-wide v15

    .line 95343
    :cond_3
    cmp-long v0, v2, v13

    if-gez v0, :cond_4

    .line 95344
    iput-wide v9, v5, Lcom/facebook/ads/redexgen/X/m0;->A01:J

    .line 95345
    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    sget-object v4, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v4, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const-string v1, "rTnMeKP9Ntef56gYj2I82A9Og"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "Ns8cmH2a0bzEbJPPC1zDKlbsv"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    iget-wide v0, v7, Lcom/facebook/ads/redexgen/X/JX;->A05:J

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A02:J

    .line 95346
    :goto_0
    iget-wide v9, v5, Lcom/facebook/ads/redexgen/X/m0;->A01:J

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    sub-long/2addr v9, v0

    const-wide/32 v11, 0x186a0

    cmp-long v0, v9, v11

    if-gez v0, :cond_5

    .line 95347
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A01:J

    .line 95348
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    return-wide v0

    .line 95349
    :cond_4
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v9

    int-to-long v0, v6

    add-long/2addr v9, v0

    iput-wide v9, v5, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    .line 95350
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/JX;->A05:J

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A05:J

    goto :goto_0

    .line 95351
    :cond_5
    int-to-long v6, v6

    cmp-long v0, v2, v13

    if-gtz v0, :cond_6

    const-wide/16 v0, 0x2

    :goto_1
    mul-long/2addr v6, v0

    .line 95352
    .local v6, "offset":J
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v8

    sub-long/2addr v8, v6

    iget-wide v6, v5, Lcom/facebook/ads/redexgen/X/m0;->A01:J

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    sub-long/2addr v6, v0

    mul-long/2addr v6, v2

    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/m0;->A02:J

    .end local v2    # "currentPosition":J
    .local v15, "currentPosition":J
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/m0;->A05:J

    sub-long/2addr v2, v0

    div-long/2addr v6, v2

    add-long/2addr v8, v6

    .line 95353
    .local v9, "nextPosition":J
    iget-wide v10, v5, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    iget-wide v12, v5, Lcom/facebook/ads/redexgen/X/m0;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v12, v0

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/5C;->A0T(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 95354
    :cond_6
    const-wide/16 v0, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/ms;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JX;->A02()V

    .line 95356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JX;->A03(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95357
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/JX;->A05(Lcom/facebook/ads/redexgen/X/ms;Z)Z

    .line 95358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/JX;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JX;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 95359
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    sget-object v2, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const-string v1, "I2mhjjmoE8ZJ2Dg0LzbNmT9WC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "IEpLWq2gVTEx0SVSUh2piystZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/JX;->A05:J

    .line 95360
    .local v0, "granulePosition":J
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/JX;->A04:I

    const/4 v0, 0x4

    and-int/2addr v3, v0

    if-eq v3, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    .line 95361
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JX;->A03(Lcom/facebook/ads/redexgen/X/ms;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95362
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v5

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/m0;->A08:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_4

    .line 95363
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    const/4 v0, 0x1

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/JX;->A05(Lcom/facebook/ads/redexgen/X/ms;Z)Z

    move-result v0

    .line 95364
    .local v2, "hasPopulated":Z
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    sget-object v4, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v3, v4, v0

    const/4 v0, 0x5

    aget-object v0, v4, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const-string v3, "1J9QEDZvjIULKx6bD2w0xEMzJBfvilpU"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    iget v3, v5, Lcom/facebook/ads/redexgen/X/JX;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JX;->A00:I

    add-int/2addr v3, v0

    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/HB;->A02(Lcom/facebook/ads/redexgen/X/ms;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95365
    .restart local v2    # "hasPopulated":Z
    :cond_2
    return-wide v1

    .line 95366
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/JX;->A05:J

    .line 95367
    .end local v2    # "hasPopulated":Z
    goto :goto_0

    .line 95368
    .end local v2
    :cond_4
    return-wide v1

    .line 95369
    .end local v0    # "granulePosition":J
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/m0;)J
    .locals 1

    .line 95370
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A09:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/m0;)J
    .locals 1

    .line 95371
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A08:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/m0;)J
    .locals 1

    .line 95372
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A07:J

    return-wide v0
.end method

.method private final A05()Lcom/facebook/ads/redexgen/X/m1;
    .locals 6

    .line 95373
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/m0;->A07:J

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/m1;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/m1;-><init>(Lcom/facebook/ads/redexgen/X/m0;Lcom/facebook/ads/redexgen/X/JV;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/m0;)Lcom/facebook/ads/redexgen/X/Jb;
    .locals 0

    .line 95374
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0B:Lcom/facebook/ads/redexgen/X/Jb;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/m0;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/m0;->A0C:[B

    return-void

    :array_0
    .array-data 1
        -0x44t
        -0x23t
        -0x72t
        -0x23t
        -0x2bt
        -0x2bt
        -0x72t
        -0x22t
        -0x31t
        -0x2bt
        -0x2dt
        -0x72t
        -0x2ft
        -0x31t
        -0x24t
        -0x72t
        -0x30t
        -0x2dt
        -0x72t
        -0x2ct
        -0x23t
        -0x1dt
        -0x24t
        -0x2et
        -0x64t
    .end array-data
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/ms;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95375
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JX;->A03(Lcom/facebook/ads/redexgen/X/ms;)Z

    .line 95376
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/JX;->A05(Lcom/facebook/ads/redexgen/X/ms;Z)Z

    .line 95377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/JX;->A05:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/m0;->A06:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 95378
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->AIl()V

    .line 95379
    return-void

    .line 95380
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/JX;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/JX;->A00:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/ms;->AK3(I)V

    .line 95381
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    .line 95382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A0A:Lcom/facebook/ads/redexgen/X/JX;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/JX;->A05:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A05:J

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A5Z()Lcom/facebook/ads/redexgen/X/HY;
    .locals 1

    .line 95383
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/m0;->A05()Lcom/facebook/ads/redexgen/X/m1;

    move-result-object v0

    return-object v0
.end method

.method public final AHN(Lcom/facebook/ads/redexgen/X/ms;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95384
    iget v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:I

    const-wide/16 v6, -0x1

    const/4 v3, 0x4

    packed-switch v0, :pswitch_data_0

    .line 95385
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 95386
    :pswitch_0
    return-wide v6

    .line 95387
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/m0;->A00(Lcom/facebook/ads/redexgen/X/ms;)J

    move-result-wide v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 95388
    .local v4, "position":J
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const-string v1, "EIP7mTXqLgr9aPVawFNgKKAemnhenv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 95389
    return-wide v4

    .line 95390
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:I

    .line 95391
    .end local v4    # "position":J
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/m0;->A09(Lcom/facebook/ads/redexgen/X/ms;)V

    .line 95392
    iput v3, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:I

    .line 95393
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/m0;->A05:J

    const-wide/16 v0, 0x2

    add-long/2addr v2, v0

    neg-long v0, v2

    return-wide v0

    .line 95394
    :pswitch_3
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/ms;->A8n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A03:J

    .line 95395
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:I

    .line 95396
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/m0;->A08:J

    const-wide/32 v0, 0xff1b

    sub-long/2addr v4, v0

    .line 95397
    .local v0, "lastPageSearchPosition":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/m0;->A03:J

    cmp-long v0, v4, v1

    if-lez v0, :cond_2

    .line 95398
    return-wide v4

    .line 95399
    .end local v0    # "lastPageSearchPosition":J
    :cond_2
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/m0;->A01(Lcom/facebook/ads/redexgen/X/ms;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A07:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 95400
    sget-object v2, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const-string v1, "Q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:I

    .line 95401
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A03:J

    return-wide v0

    .line 95402
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/m0;->A0D:[Ljava/lang/String;

    const-string v1, "zPL0M1I0YHefEI7ePcrxVR039vnXiGQX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:I

    .line 95403
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A03:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final AKC(J)V
    .locals 6

    .line 95404
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/m0;->A07:J

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    const-wide/16 v2, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/5C;->A0T(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A06:J

    .line 95405
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A00:I

    .line 95406
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A09:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A04:J

    .line 95407
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A08:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A01:J

    .line 95408
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A05:J

    .line 95409
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A07:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/m0;->A02:J

    .line 95410
    return-void
.end method
