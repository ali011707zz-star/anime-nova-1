.class public abstract Lcom/facebook/ads/redexgen/X/5p;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/regex/Pattern;

.field public static final A03:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 406
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "G8ArwIe2VOAE4nt8xzvdLml4UmjpJECF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hTc5Tda99b5K7ktAOz7Sk2ePkoxu5mJv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uXzWM43WnlFlNXm1DUXcodvE16nJuXl6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iRkaMP8lpeEdZIVhMcVD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lMyhq9DthkfLW6CwBUqq2OEeTBOLdcXD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OKiPy9zk89rZ6EyhyRbLHpsFwU1qXXE1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FmDgVX5KrdTAXflr9ckY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OW8d6LiXJNMD0YcnlVVA282INy85kiu1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5p;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5p;->A04()V

    const/16 v2, 0x76

    const/16 v1, 0x1c

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5p;->A03:Ljava/util/regex/Pattern;

    .line 407
    const/16 v2, 0x58

    const/16 v1, 0x1e

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5p;->A02:Ljava/util/regex/Pattern;

    .line 408
    return-void
.end method

.method public static A00(Ljava/lang/String;)J
    .locals 4

    .line 15337
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_0

    .line 15338
    return-wide v2

    .line 15339
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/5p;->A02:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 15340
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_1
    return-wide v2
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10

    .line 15341
    const-wide/16 v3, -0x1

    .line 15342
    .local v0, "contentLength":J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v2, 0x54

    const/4 v1, 0x1

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5p;->A02(III)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    const/16 v1, 0x8

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5p;->A02(III)Ljava/lang/String;

    move-result-object v5

    if-nez v7, :cond_0

    .line 15343
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 15344
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15345
    .local v2, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f

    const/16 v1, 0x1b

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 15346
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15347
    sget-object v0, Lcom/facebook/ads/redexgen/X/5p;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 15348
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15349
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 15350
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v1, v7

    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    .line 15351
    .local v5, "contentLengthFromRange":J
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-gez v0, :cond_1

    .line 15352
    move-wide v3, v1

    goto :goto_1

    .line 15353
    :cond_1
    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 15354
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x9

    const/16 v7, 0x16

    const/16 v0, 0x77

    invoke-static {v8, v7, v0}, Lcom/facebook/ads/redexgen/X/5p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v8, 0x55

    const/4 v7, 0x3

    const/16 v0, 0x6f

    invoke-static {v8, v7, v0}, Lcom/facebook/ads/redexgen/X/5p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 15355
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15356
    .local v5, "e":Ljava/lang/NumberFormatException;
    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3a

    const/16 v1, 0x1a

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 15357
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_1
    return-wide v3
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5p;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x59

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(JJ)Ljava/lang/String;
    .locals 6

    .line 15358
    const-wide/16 v1, 0x0

    const-wide/16 v4, -0x1

    cmp-long v0, p0, v1

    if-nez v0, :cond_1

    cmp-long v3, p2, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/5p;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5p;->A01:[Ljava/lang/String;

    const-string v1, "BG6bsnZi4wlgFYmXUZNM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Qc01l7LnjPCXX6IxAAkq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 15359
    const/4 v0, 0x0

    return-object v0

    .line 15360
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15361
    .local v0, "rangeValue":Ljava/lang/StringBuilder;
    const/16 v2, 0x92

    const/4 v1, 0x6

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15362
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15363
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5p;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15364
    cmp-long v0, p2, v4

    if-eqz v0, :cond_2

    .line 15365
    add-long/2addr p0, p2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15366
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5p;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    goto :goto_0

    .line 15367
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/5p;->A01:[Ljava/lang/String;

    const-string v1, "BYD36Vzxv8JTZl7GEmQPPJy8vzWoDg2F"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x98

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5p;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        0x27t
        0x1bt
        0x1bt
        0x1ft
        0x3at
        0x1bt
        0x6t
        0x3t
        0x67t
        0x40t
        0x4dt
        0x41t
        0x40t
        0x5dt
        0x47t
        0x5dt
        0x5at
        0x4bt
        0x40t
        0x5at
        0xet
        0x46t
        0x4bt
        0x4ft
        0x4at
        0x4bt
        0x5ct
        0x5dt
        0xet
        0x75t
        0x54t
        0x6ft
        0x64t
        0x79t
        0x71t
        0x64t
        0x62t
        0x75t
        0x64t
        0x65t
        0x21t
        0x42t
        0x6et
        0x6ft
        0x75t
        0x64t
        0x6ft
        0x75t
        0x2ct
        0x4dt
        0x64t
        0x6ft
        0x66t
        0x75t
        0x69t
        0x21t
        0x5at
        0x75t
        0x4et
        0x45t
        0x58t
        0x50t
        0x45t
        0x43t
        0x54t
        0x45t
        0x44t
        0x0t
        0x63t
        0x4ft
        0x4et
        0x54t
        0x45t
        0x4et
        0x54t
        0xdt
        0x72t
        0x41t
        0x4et
        0x47t
        0x45t
        0x0t
        0x7bt
        0x31t
        0x6bt
        0x16t
        0x6dt
        0x5t
        0x1et
        0x13t
        0x2t
        0x14t
        0x47t
        0x4ft
        0x58t
        0x5dt
        0x4ft
        0x58t
        0x5dt
        0x3bt
        0x3t
        0x4ct
        0x4at
        0x3bt
        0x3t
        0x4ct
        0x4et
        0x1bt
        0x3bt
        0x4dt
        0x4et
        0x48t
        0x4ft
        0x3bt
        0x3t
        0x4ct
        0x4et
        0x73t
        0x68t
        0x65t
        0x74t
        0x62t
        0x31t
        0x39t
        0x4dt
        0x75t
        0x3at
        0x38t
        0x3ct
        0x39t
        0x4dt
        0x75t
        0x3at
        0x38t
        0x3et
        0x39t
        0x2et
        0x2bt
        0x4dt
        0x75t
        0x3at
        0x6dt
        0x4dt
        0x3bt
        0x38t
        0x68t
        0x73t
        0x7et
        0x6ft
        0x79t
        0x37t
    .end array-data
.end method
