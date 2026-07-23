.class public final Lcom/facebook/ads/redexgen/X/Nf;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:I

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Ljava/lang/String;

.field public A05:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1454
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Vkhbk7q"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bbLm7avGUtHkF3jUZkJgwv05OQOBaWiK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tolCyKl3IftnRlKEmRnT2sO5c0DyKStU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eQuD8llomM2wZCZ6oqqCRxFaVaKQS5vz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "G8C7OMdE9YEe4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "q"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mGkZm9P"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Nf;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nf;->A03()V

    const/16 v0, 0x32

    sput v0, Lcom/facebook/ads/redexgen/X/Nf;->A06:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 54542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54543
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A02:I

    .line 54544
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A05:Ljava/util/LinkedList;

    .line 54545
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Ljava/lang/String;

    .line 54546
    return-void
.end method

.method public static A00()I
    .locals 4

    .line 54547
    sget v3, Lcom/facebook/ads/redexgen/X/Nf;->A06:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nf;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nf;->A08:[Ljava/lang/String;

    const-string v1, "fgVvaJPNAH92mxaTJIosOWA9xsF7cqZV"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nf;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 7

    .line 54548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v0, 0x3e8

    div-long/2addr v5, v0

    .line 54549
    .local v0, "currentTime":J
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nf;->A05:Ljava/util/LinkedList;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nf;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Nf;->A08:[Ljava/lang/String;

    const-string v1, "YiLzIz5T1838NHRcssOQsoNOVVrgTctO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A05:Ljava/util/LinkedList;

    .line 54550
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A05:Ljava/util/LinkedList;

    .line 54551
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sub-long v3, v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A00:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1

    .line 54552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A05:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 54553
    :cond_1
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x8c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nf;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x32t
        0x1ft
        -0x7t
        0x1at
        -0x2ct
        0x0t
        -0xdt
        -0x1t
        0x3t
        -0xdt
        -0x4t
        -0xft
        0x7t
        -0x52t
        -0x2ft
        -0x11t
        -0x2t
        -0x2t
        -0x9t
        -0x4t
        -0xbt
        -0x52t
        -0x2et
        -0x11t
        0x2t
        -0x11t
        -0x38t
        -0x52t
        -0x4t
        -0x3t
        -0x4t
        -0xdt
        -0x52t
        -0x29t
        -0x4t
        0x2t
        -0xdt
        -0xbt
        -0xdt
        0x0t
        -0x52t
        -0x3t
        -0xft
        -0xft
        0x3t
        0x0t
        0x0t
        -0xdt
        -0x4t
        -0xft
        -0xdt
        0x2ct
        0x10t
        0xet
        0x1dt
        0x1t
        0xat
        -0x1t
        0xet
        0x15t
        0xct
        0x10t
        0x1t
        0x0t
        -0x5t
        0x5t
        0x0t
        -0x10t
        -0x1ct
        -0x5t
        -0x1et
        -0x1at
        -0x1ct
        -0xdt
        -0xdt
        -0x18t
        -0x19t
        -0x1et
        -0x1ct
        -0xbt
        -0xbt
        -0x1ct
        -0x4t
        -0x1et
        -0x11t
        -0x18t
        -0xft
        -0x16t
        -0x9t
        -0x15t
        0x25t
        0x19t
        0x19t
        0x2bt
        0x28t
        0x28t
        0x1bt
        0x24t
        0x19t
        0x1bt
        0x29t
        0x2ct
        0x21t
        0x2et
        0x25t
        0x2bt
        0x20t
        0x39t
        0x30t
        0x36t
        0x35t
        0x20t
        0x30t
        0x24t
        0x24t
        0x36t
        0x33t
        0x33t
        0x26t
        0x2ft
        0x24t
        0x26t
        0x20t
        0x34t
        0x26t
        0x24t
        0x34t
        -0x13t
        -0x1ct
        -0x16t
        -0x17t
        -0x2ct
        -0x1bt
        -0x26t
        -0x19t
        -0x22t
        -0x1ct
        -0x27t
        0x3t
        0x65t
    .end array-data
.end method


# virtual methods
.method public final A04(I)V
    .locals 0

    .line 54554
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A02:I

    .line 54555
    return-void
.end method

.method public final A05(IIJI)V
    .locals 0

    .line 54556
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A00:I

    .line 54557
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:I

    .line 54558
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:J

    .line 54559
    sput p5, Lcom/facebook/ads/redexgen/X/Nf;->A06:I

    .line 54560
    return-void
.end method

.method public final A06(Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54561
    const/4 v2, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 54562
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 54563
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A05:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 54564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54565
    :cond_0
    const/4 v2, 0x4

    const/16 v1, 0x2f

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54566
    .end local v0    # "idx":I
    :cond_1
    return-void
.end method

.method public final A07(Z)V
    .locals 5

    .line 54567
    if-eqz p1, :cond_0

    .line 54568
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Nf;->A05:Ljava/util/LinkedList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 54569
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nf;->A02()V

    .line 54570
    return-void
.end method

.method public final A08()Z
    .locals 5

    .line 54571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A05:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v3, v0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A09()Z
    .locals 5

    .line 54572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v0, 0x3e8

    div-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A02:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 54573
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 54574
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x8a

    const/4 v1, 0x1

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54575
    const/16 v2, 0x37

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54576
    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A04:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54578
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54579
    const/16 v2, 0x65

    const/4 v1, 0x6

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54580
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54581
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A00:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54582
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54583
    const/16 v2, 0x7f

    const/16 v1, 0xb

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54584
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54585
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A01:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54586
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54587
    const/16 v2, 0x34

    const/4 v1, 0x3

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54588
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54589
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A03:J

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54590
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54591
    const/16 v2, 0x6b

    const/16 v1, 0x14

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54592
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54593
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A02:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54594
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54595
    const/16 v2, 0x43

    const/16 v1, 0x17

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54596
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54597
    sget v0, Lcom/facebook/ads/redexgen/X/Nf;->A06:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54598
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54599
    const/16 v2, 0x5a

    const/16 v1, 0xb

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54600
    const/4 v2, 0x2

    const/4 v1, 0x2

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nf;->A05:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54602
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54603
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54604
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54605
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 54606
    :cond_1
    const/16 v2, 0x33

    const/4 v1, 0x1

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54607
    const/16 v5, 0x8b

    const/4 v4, 0x1

    const/16 v3, 0x7d

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nf;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nf;->A08:[Ljava/lang/String;

    const-string v1, "G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Nf;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54608
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
