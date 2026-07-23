.class public final Lcom/facebook/ads/redexgen/X/L7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PesReader"
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/4u;

.field public final A06:Lcom/facebook/ads/redexgen/X/53;

.field public final A07:Lcom/facebook/ads/redexgen/X/Kv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 967
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "C4diU0jF5HFDKOo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VIjpOvF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "79HwagMXBprlpWu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XtcHcpqmD0hF0uYglpDGiCUjQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "b5FzuRibdN76veNUTRkVPezKuChwyeRa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "N5rSQt9O61BKPKT7czdchdAeeSshGZI7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4j3xcnZH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5T71Z7kL4B4E0IfY6yh9iA0vCqeGrORl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/L7;->A08:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Kv;Lcom/facebook/ads/redexgen/X/53;)V
    .locals 2

    .line 49328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49329
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/L7;->A07:Lcom/facebook/ads/redexgen/X/Kv;

    .line 49330
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/L7;->A06:Lcom/facebook/ads/redexgen/X/53;

    .line 49331
    const/16 v0, 0x40

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    .line 49332
    return-void
.end method

.method private A00()V
    .locals 3

    .line 49333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 49334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A03:Z

    .line 49335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A02:Z

    .line 49336
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 49337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A00:I

    .line 49338
    return-void
.end method

.method private A01()V
    .locals 11

    .line 49339
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A01:J

    .line 49340
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A03:Z

    if-eqz v0, :cond_2

    .line 49341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 49342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v10, 0x1e

    shl-long/2addr v3, v10

    .line 49343
    .local v3, "pts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 49344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 49345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 49346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 49347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 49348
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A04:Z

    if-nez v0, :cond_1

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/L7;->A02:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/L7;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/L7;->A08:[Ljava/lang/String;

    const-string v1, "5JhR9Zg0WmWGqTK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Xh2Ow42d4ocIa9L"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v9, :cond_1

    .line 49349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 49350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v1, v0

    shl-long/2addr v1, v10

    .line 49351
    .local v0, "dts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 49352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v5, v0

    or-long/2addr v1, v5

    .line 49353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 49354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v1, v5

    .line 49355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    sget-object v5, Lcom/facebook/ads/redexgen/X/L7;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v0, 0x3

    if-eq v5, v0, :cond_3

    .line 49356
    sget-object v6, Lcom/facebook/ads/redexgen/X/L7;->A08:[Ljava/lang/String;

    const-string v5, "UDMLuQZN0eWx6zw"

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const-string v5, "a17qMMuziGA5O0G"

    const/4 v0, 0x0

    aput-object v5, v6, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A06:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    .line 49357
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/L7;->A04:Z

    .line 49358
    .end local v0    # "dts":J
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A06:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A01:J

    .line 49359
    .end local v3    # "pts":J
    :cond_2
    return-void

    .line 49360
    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/L7;->A08:[Ljava/lang/String;

    const-string v5, "zPtJRCJUDuumy6c"

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const-string v5, "cIaKenGO0crEC3t"

    const/4 v0, 0x0

    aput-object v5, v6, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A06:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/53;->A06(J)J

    .line 49361
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/L7;->A04:Z

    goto :goto_0
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 49362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A04:Z

    .line 49363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A07:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Kv;->AJ5()V

    .line 49364
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 49365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 49366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 49367
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L7;->A00()V

    .line 49368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/4u;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A00:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 49369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A05:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 49370
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L7;->A01()V

    .line 49371
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/L7;->A07:Lcom/facebook/ads/redexgen/X/Kv;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/L7;->A01:J

    const/4 v0, 0x4

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Kv;->AGq(JI)V

    .line 49372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A07:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Kv;->A5A(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 49373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L7;->A07:Lcom/facebook/ads/redexgen/X/Kv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Kv;->AGp()V

    .line 49374
    return-void
.end method
