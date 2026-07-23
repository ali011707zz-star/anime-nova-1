.class public final Lcom/facebook/ads/redexgen/X/1l;
.super Lcom/facebook/ads/redexgen/X/AQ;
.source ""


# static fields
.field public static A04:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/5i;

.field public A03:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1l;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8353
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Z)V

    .line 8354
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1l;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x78

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1l;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x11t
        0x30t
        0x57t
        0x56t
        0x68t
        0x5at
        0x2bt
        0x29t
        0x3at
        0x67t
        0x67t
        0x64t
        0x67t
        0x15t
        0x6ct
        0x5dt
        0x5et
        0x61t
        0x5at
        0x15t
        0x65t
        0x56t
        0x67t
        0x68t
        0x5et
        0x63t
        0x5ct
        0x15t
        0x37t
        0x56t
        0x68t
        0x5at
        0x2bt
        0x29t
        0x15t
        0x5at
        0x63t
        0x58t
        0x64t
        0x59t
        0x5at
        0x59t
        0x15t
        0x68t
        0x69t
        0x67t
        0x5et
        0x63t
        0x5ct
        0x2ft
        0x15t
        -0x17t
        0x2t
        -0x7t
        0xct
        0x4t
        -0x7t
        -0x9t
        0x8t
        -0x7t
        -0x8t
        -0x4ct
        -0x17t
        -0x1at
        -0x23t
        -0x4ct
        -0x6t
        0x3t
        0x6t
        0x1t
        -0xbt
        0x8t
        -0x32t
        -0x4ct
        0x3ct
        0x55t
        0x5at
        0x5ct
        0x57t
        0x57t
        0x56t
        0x59t
        0x5bt
        0x4ct
        0x4bt
        0x7t
        0x5at
        0x4at
        0x4ft
        0x4ct
        0x54t
        0x4ct
        0x21t
        0x7t
        0x19t
        0x16t
        0x29t
        0x16t
    .end array-data
.end method


# virtual methods
.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 8355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A02:Lcom/facebook/ads/redexgen/X/5i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A02:Lcom/facebook/ads/redexgen/X/5i;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8356
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AQ;->A0G(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 8357
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1l;->A02:Lcom/facebook/ads/redexgen/X/5i;

    .line 8358
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    .line 8359
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 8360
    .local v1, "scheme":Ljava/lang/String;
    const/16 v2, 0x5e

    const/4 v1, 0x4

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4a

    const/16 v1, 0x14

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/3y;->A09(ZLjava/lang/Object;)V

    .line 8361
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 8362
    .local v2, "uriParts":[Ljava/lang/String;
    array-length v1, v2

    const/4 v0, 0x2

    const/4 v5, 0x0

    if-ne v1, v0, :cond_4

    .line 8363
    const/4 v0, 0x1

    aget-object v6, v2, v0

    .line 8364
    .local v3, "dataString":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v2, v4

    const/4 v2, 0x1

    const/4 v1, 0x7

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8365
    :try_start_0
    invoke-static {v6, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A03:[B

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8366
    :catch_0
    move-exception v4

    .line 8367
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    const/16 v1, 0x2b

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/3K;->A02(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 8368
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A01:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A03:[B

    .line 8369
    :goto_0
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A03:[B

    array-length v0, v0

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_3

    .line 8370
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A01:I

    .line 8371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A03:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A01:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1l;->A00:I

    .line 8372
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-eqz v0, :cond_1

    .line 8373
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A00:I

    int-to-long v2, v0

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A00:I

    .line 8374
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AQ;->A0H(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 8375
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    :goto_1
    return-wide v0

    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A00:I

    int-to-long v0, v0

    goto :goto_1

    .line 8376
    :cond_3
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/1l;->A03:[B

    .line 8377
    const/16 v1, 0x7d8

    new-instance v0, Lcom/facebook/ads/redexgen/X/5b;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5b;-><init>(I)V

    throw v0

    .line 8378
    .end local v3    # "dataString":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x33

    const/16 v1, 0x17

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/3K;->A02(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public final close()V
    .locals 2

    .line 8379
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1l;->A03:[B

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 8380
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A03:[B

    .line 8381
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AQ;->A0E()V

    .line 8382
    :cond_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A02:Lcom/facebook/ads/redexgen/X/5i;

    .line 8383
    return-void
.end method

.method public final read([BII)I
    .locals 3

    .line 8384
    if-nez p3, :cond_0

    .line 8385
    const/4 v0, 0x0

    return v0

    .line 8386
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A00:I

    if-nez v0, :cond_1

    .line 8387
    const/4 v0, -0x1

    return v0

    .line 8388
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A00:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A03:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A01:I

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8390
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A01:I

    .line 8391
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A00:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1l;->A00:I

    .line 8392
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/AQ;->A0F(I)V

    .line 8393
    return v2
.end method
