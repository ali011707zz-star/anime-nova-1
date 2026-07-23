.class public final Lcom/facebook/ads/redexgen/X/1m;
.super Lcom/facebook/ads/redexgen/X/AQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/pG;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/content/res/AssetFileDescriptor;

.field public A02:Landroid/net/Uri;

.field public A03:Ljava/io/FileInputStream;

.field public A04:Z

.field public final A05:Landroid/content/ContentResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 116
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2ftN4rqyMzReasXlS0Bd7yvXq4Z2w8Rd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SB3v1XRSpovCjfjTdx7anKa7xqXJKcRT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XVjCn6r7eDTGJtLvngTS2wgt8nCOhnB8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1Z3zzaFrxDlwod4BzGavHrSG6vNvtkR5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UgcL11Y1AQOJlkVRTNTymNMOAMwNhJW2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NkTGPgJcqOjwrAzhjPkYXMY7OTNaeVTG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UuxCrg9I54LtW8vlxqROWB7HyIfBI135"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4rxicH75x32fMwhdD1obBcUBdLwTm4oP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1m;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 8394
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Z)V

    .line 8395
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A05:Landroid/content/ContentResolver;

    .line 8396
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1m;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/1m;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x4ct
        -0x47t
        -0x4ct
        0xat
        0x36t
        0x3ct
        0x33t
        0x2bt
        -0x19t
        0x35t
        0x36t
        0x3bt
        -0x19t
        0x36t
        0x37t
        0x2ct
        0x35t
        -0x19t
        0x2dt
        0x30t
        0x33t
        0x2ct
        -0x19t
        0x2bt
        0x2ct
        0x3at
        0x2at
        0x39t
        0x30t
        0x37t
        0x3bt
        0x36t
        0x39t
        -0x19t
        0x2dt
        0x36t
        0x39t
        0x1t
        -0x19t
        0xct
        0x19t
        0xft
        0x1dt
        0x1at
        0x14t
        0xft
        -0x27t
        0x1bt
        0x1dt
        0x1at
        0x21t
        0x14t
        0xft
        0x10t
        0x1dt
        -0x27t
        0x10t
        0x23t
        0x1ft
        0x1dt
        0xct
        -0x27t
        -0x14t
        -0x12t
        -0x12t
        -0x10t
        -0x5t
        -0x1t
        0xat
        -0x6t
        -0x3t
        -0xct
        -0xet
        -0xct
        -0x7t
        -0x14t
        -0x9t
        0xat
        -0x8t
        -0x10t
        -0x11t
        -0xct
        -0x14t
        0xat
        -0xft
        -0x6t
        -0x3t
        -0x8t
        -0x14t
        -0x1t
        -0x46t
        -0x3at
        -0x3bt
        -0x35t
        -0x44t
        -0x3bt
        -0x35t
        0x1t
    .end array-data
.end method


# virtual methods
.method public final A9P()Landroid/net/Uri;
    .locals 1

    .line 8397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A02:Landroid/net/Uri;

    return-object v0
.end method

.method public final AGi(Lcom/facebook/ads/redexgen/X/5i;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/pG;
        }
    .end annotation

    .line 8398
    move-object v6, p0

    :try_start_0
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    .line 8399
    .local v0, "uri":Landroid/net/Uri;
    iput-object v4, v6, Lcom/facebook/ads/redexgen/X/1m;->A02:Landroid/net/Uri;

    .line 8400
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AQ;->A0G(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 8401
    const/16 v2, 0x5a

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 8402
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 8403
    .local v4, "providerOptions":Landroid/os/Bundle;
    const/16 v2, 0x27

    const/16 v1, 0x33

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8404
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/1m;->A05:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 8405
    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .line 8406
    .local v4, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    iput-object v12, v6, Lcom/facebook/ads/redexgen/X/1m;->A01:Landroid/content/res/AssetFileDescriptor;

    goto :goto_1

    .line 8407
    .end local v4    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/1m;->A05:Landroid/content/ContentResolver;

    const/16 v2, 0x61

    const/4 v1, 0x1

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    goto :goto_0

    .line 8408
    :goto_1
    if-eqz v12, :cond_f

    .line 8409
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 8410
    .local v6, "assetFileDescriptorLength":J
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8411
    .local v8, "inputStream":Ljava/io/FileInputStream;
    iput-object v8, v6, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/io/FileInputStream;

    .line 8412
    const/16 v11, 0x7d8

    const/4 v10, 0x0

    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    cmp-long v9, v0, v4

    if-gtz v9, :cond_e

    .line 8413
    .restart local p10
    :cond_1
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v9

    .line 8414
    .local p0, "assetFileDescriptorOffset":J
    .end local v4
    .local p3, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J

    add-long/2addr v0, v9

    .line 8415
    invoke-virtual {v8, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 8416
    .local v3, "skipped":J
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A04:J
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/pG; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v10, v11, v0

    sget-object v9, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v9, v0

    const/4 v0, 0x3

    aget-object v9, v9, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 8417
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8418
    :cond_2
    sget-object v9, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const-string v1, "V2cYJorATJJITl96mEL4teMpahqL5My0"

    const/4 v0, 0x7

    aput-object v1, v9, v0

    const-string v1, "81QpsL8o4R3JZzZywbg9Kxgu0WDTOmHd"

    const/4 v0, 0x2

    aput-object v1, v9, v0

    if-nez v10, :cond_d

    .line 8419
    const-wide/16 v9, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_4

    .line 8420
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 8421
    .local p4, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 8422
    .local p5, "channelSize":J
    cmp-long v4, v0, v9

    if-nez v4, :cond_3

    .line 8423
    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    goto :goto_4

    .line 8424
    :cond_3
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    .line 8425
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    goto :goto_3

    .line 8426
    .end local p4
    .end local p5
    .restart local p10
    :cond_4
    sub-long/2addr v4, v11

    iput-wide v4, v6, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    .line 8427
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/1m;->A00:J
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/pG; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    cmp-long v3, v0, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const-string v1, "bEcLXKtmUZe87exD27VZX6tOwUTS9Sez"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ltz v3, :cond_c

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const-string v1, "HQINqvWzgwxijb9Tl3Os5Fu0qA3gaNYz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ltz v3, :cond_c

    goto :goto_4

    .line 8428
    :goto_3
    cmp-long v3, v0, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const-string v1, "o4lencYzmcLYt1MiV6fFEBYqoofjVCYJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "LnRaAWOGUoCClb3L4bo6XdN18ipe8ADC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ltz v3, :cond_b

    .line 8429
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v3    # "skipped":J
    .end local v6    # "assetFileDescriptorLength":J
    .end local v8    # "inputStream":Ljava/io/FileInputStream;
    .end local p0    # "assetFileDescriptorOffset":J
    .end local p3
    :goto_4
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    sget-object v3, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v3, v3, v0

    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x58

    if-eq v3, v0, :cond_7

    goto/16 :goto_2

    .line 8430
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const-string v1, "bSHOsa59vSpVf4yTu8YpmIN0mXabJXNA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ltz v3, :cond_b

    goto :goto_4

    .line 8431
    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const-string v3, "HMZNFKbBHMEnP71uJIxHqXthvd44tlRl"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    const-string v3, "eoHh6GrHY21TbtSwRzT9Dqoif9pbqNR5"

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_8

    .line 8432
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_a

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    :goto_5
    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    .line 8433
    :cond_8
    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/1m;->A04:Z

    .line 8434
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/AQ;->A0H(Lcom/facebook/ads/redexgen/X/5i;)V

    .line 8435
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_9

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    :goto_6
    return-wide v0

    :cond_9
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    goto :goto_6

    .line 8436
    :cond_a
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/5i;->A03:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_5

    .line 8437
    :cond_b
    :try_start_2
    const/16 v2, 0x7d8

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pG;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/pG;-><init>(Ljava/io/IOException;I)V

    .end local p10
    throw v0

    .line 8438
    :cond_c
    const/16 v2, 0x7d8

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pG;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/pG;-><init>(Ljava/io/IOException;I)V

    .end local p10
    throw v0

    .line 8439
    :cond_d
    const/16 v2, 0x7d8

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pG;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/pG;-><init>(Ljava/io/IOException;I)V

    .end local p10
    throw v0

    .line 8440
    :cond_e
    new-instance v0, Lcom/facebook/ads/redexgen/X/pG;

    invoke-direct {v0, v10, v11}, Lcom/facebook/ads/redexgen/X/pG;-><init>(Ljava/io/IOException;I)V

    .end local p10
    throw v0

    .line 8441
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    const/16 v1, 0x24

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1m;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d0
    :try_end_2
    .catch Lcom/facebook/ads/redexgen/X/pG; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/pG;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/pG;-><init>(Ljava/io/IOException;I)V

    .end local p10
    throw v0
    :try_end_3
    .catch Lcom/facebook/ads/redexgen/X/pG; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 8442
    .end local v0
    .end local p3
    .restart local p10
    :catch_0
    move-exception v2

    goto :goto_7

    :catch_1
    move-exception v2

    .line 8443
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    instance-of v0, v2, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_10

    .line 8444
    const/16 v1, 0x7d5

    .line 8445
    :goto_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/pG;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/pG;-><init>(Ljava/io/IOException;I)V

    throw v0

    :cond_10
    const/16 v1, 0x7d0

    goto :goto_8

    .line 8446
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 8447
    .local v0, "e":Lcom/facebook/ads/redexgen/X/pG;
    throw v0
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/pG;
        }
    .end annotation

    .line 8448
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1m;->A02:Landroid/net/Uri;

    .line 8449
    const/16 v4, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 8450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8451
    :cond_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/io/FileInputStream;

    .line 8452
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 8453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8454
    :cond_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1m;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 8455
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A04:Z

    if-eqz v0, :cond_2

    .line 8456
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/1m;->A04:Z

    .line 8457
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AQ;->A0E()V

    .line 8458
    :cond_2
    return-void

    .line 8459
    :catch_0
    move-exception v1

    .line 8460
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/pG;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/pG;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8461
    :catchall_0
    move-exception v1

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1m;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 8462
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A04:Z

    if-eqz v0, :cond_3

    .line 8463
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/1m;->A04:Z

    .line 8464
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AQ;->A0E()V

    .line 8465
    :cond_3
    throw v1

    .line 8466
    :catch_1
    move-exception v1

    .line 8467
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/pG;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/pG;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8468
    :catchall_1
    move-exception v1

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/io/FileInputStream;

    .line 8469
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_4

    .line 8470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 8471
    :cond_4
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1m;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 8472
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A04:Z

    if-eqz v0, :cond_5

    .line 8473
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/1m;->A04:Z

    .line 8474
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AQ;->A0E()V

    .line 8475
    :cond_5
    throw v1

    .line 8476
    :catch_2
    move-exception v1

    .line 8477
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/pG;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/pG;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 8478
    :catchall_2
    move-exception v1

    .end local v3    # "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1m;->A01:Landroid/content/res/AssetFileDescriptor;

    .line 8479
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A04:Z

    if-eqz v0, :cond_6

    .line 8480
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/1m;->A04:Z

    .line 8481
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/AQ;->A0E()V

    .line 8482
    :cond_6
    throw v1
.end method

.method public final read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/pG;
        }
    .end annotation

    .line 8483
    if-nez p3, :cond_0

    .line 8484
    const/4 v0, 0x0

    return v0

    .line 8485
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v3, v0

    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x54

    if-eq v3, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v5, Lcom/facebook/ads/redexgen/X/1m;->A07:[Ljava/lang/String;

    const-string v3, "xrRDl1n0HP8M9562uVsbLDb97IGJJORF"

    const/4 v0, 0x0

    aput-object v3, v5, v0

    const-string v3, "BxGqKYmJPgWUa88HGr5IfMWzChfrhfRY"

    const/4 v0, 0x3

    aput-object v3, v5, v0

    cmp-long v0, v1, v6

    if-nez v0, :cond_2

    .line 8486
    return v4

    .line 8487
    :cond_2
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_3

    .line 8488
    .local v0, "bytesToRead":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A03:Ljava/io/FileInputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 8489
    .local v0, "bytesRead":I
    if-ne v5, v4, :cond_4

    goto :goto_1

    .line 8490
    :cond_3
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_0

    .line 8491
    :goto_1
    return v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8492
    :cond_4
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    cmp-long v0, v1, v6

    if-eqz v0, :cond_5

    .line 8493
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    int-to-long v0, v5

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1m;->A00:J

    .line 8494
    :cond_5
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/AQ;->A0F(I)V

    .line 8495
    return v5

    .line 8496
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 8497
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, 0x7d0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pG;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/pG;-><init>(Ljava/io/IOException;I)V

    throw v0
.end method
