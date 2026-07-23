.class public abstract Lcom/facebook/ads/redexgen/X/5Q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/database/VersionTable$Feature;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 386
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ftBSrscYCZrU1XGsUffOBJlxDQfDqofj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6A6pNCV2uhgoYcLypb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8GOV2FUSZps1pTbJ4je5MwftASUnZkM1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4wRLkwVxN17llLy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8LQiKKC5rqzUsPzG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bVt1RMPFhi5Vk9jMxK8mGuGgg99xJtg4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bUya0H86JSXRIIoahVHYTIdtcqgWtSBf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "i4ePvK4hrBrPNKxpSWALXVVM3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5Q;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5Q;->A02()V

    const/16 v2, 0xd7

    const/16 v1, 0x11

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/35;->A03(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public static A00(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5N;
        }
    .end annotation

    .line 14604
    :try_start_0
    const/16 v2, 0x9f

    const/16 v1, 0x11

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v0

    move-object v4, p0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/5C;->A19(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 14605
    return v3

    .line 14606
    :cond_0
    const/16 v2, 0x9f

    const/16 v1, 0x11

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xf4

    const/4 v1, 0x7

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0xb7

    const/16 v1, 0x20

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v7

    .line 14607
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/5Q;->A05(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 14608
    const/4 p0, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14609
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 14610
    if-eqz v2, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 14611
    :cond_1
    return v3
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 14612
    :cond_2
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 14613
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 14614
    if-eqz v2, :cond_3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 14615
    :cond_3
    return v0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 14616
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_4

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # null:I
    .end local p2    # null:Ljava/lang/String;
    .end local p3
    :cond_4
    :goto_0
    throw v1
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    .line 14617
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local p1    # null:I
    .restart local p2    # null:Ljava/lang/String;
    .restart local p3
    :catch_0
    move-exception v1

    .line 14618
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/5N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5N;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5Q;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0xfb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5Q;->A00:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/5Q;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5Q;->A01:[Ljava/lang/String;

    const-string v1, "SNjSmBwt36dpbjCWXjm4KdaDp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x35t
        0x24t
        0x33t
        0x37t
        0x22t
        0x33t
        0x56t
        0x22t
        0x37t
        0x34t
        0x3at
        0x33t
        0x56t
        0x3ft
        0x30t
        0x56t
        0x38t
        0x39t
        0x22t
        0x56t
        0x33t
        0x2et
        0x3ft
        0x25t
        0x22t
        0x25t
        0x56t
        0x33t
        0xet
        0x19t
        0x26t
        0x1at
        0x17t
        0xft
        0x13t
        0x4t
        0x20t
        0x13t
        0x4t
        0x5t
        0x1ft
        0x19t
        0x18t
        0x5t
        0x56t
        0x5et
        0x10t
        0x13t
        0x17t
        0x2t
        0x3t
        0x4t
        0x13t
        0x56t
        0x3ft
        0x38t
        0x22t
        0x33t
        0x31t
        0x33t
        0x24t
        0x56t
        0x38t
        0x39t
        0x22t
        0x56t
        0x38t
        0x23t
        0x3at
        0x3at
        0x5at
        0x1ft
        0x18t
        0x5t
        0x2t
        0x17t
        0x18t
        0x15t
        0x13t
        0x29t
        0x3t
        0x1ft
        0x12t
        0x56t
        0x22t
        0x33t
        0x2et
        0x22t
        0x56t
        0x38t
        0x39t
        0x22t
        0x56t
        0x38t
        0x23t
        0x3at
        0x3at
        0x5at
        0x0t
        0x13t
        0x4t
        0x5t
        0x1ft
        0x19t
        0x18t
        0x56t
        0x3ft
        0x38t
        0x22t
        0x33t
        0x31t
        0x33t
        0x24t
        0x56t
        0x38t
        0x39t
        0x22t
        0x56t
        0x38t
        0x23t
        0x3at
        0x3at
        0x5at
        0x26t
        0x24t
        0x3ft
        0x3bt
        0x37t
        0x24t
        0x2ft
        0x56t
        0x3dt
        0x33t
        0x2ft
        0x56t
        0x5et
        0x10t
        0x13t
        0x17t
        0x2t
        0x3t
        0x4t
        0x13t
        0x5at
        0x56t
        0x1ft
        0x18t
        0x5t
        0x2t
        0x17t
        0x18t
        0x15t
        0x13t
        0x29t
        0x3t
        0x1ft
        0x12t
        0x5ft
        0x5ft
        0x1dt
        0x20t
        0x37t
        0x8t
        0x34t
        0x39t
        0x21t
        0x3dt
        0x2at
        0xet
        0x3dt
        0x2at
        0x2bt
        0x31t
        0x37t
        0x36t
        0x2bt
        0x67t
        0x64t
        0x60t
        0x75t
        0x74t
        0x73t
        0x64t
        0x61t
        0x62t
        0x66t
        0x73t
        0x72t
        0x75t
        0x62t
        0x27t
        0x3at
        0x27t
        0x38t
        0x27t
        0x46t
        0x49t
        0x43t
        0x27t
        0x6et
        0x69t
        0x74t
        0x73t
        0x66t
        0x69t
        0x64t
        0x62t
        0x58t
        0x72t
        0x6et
        0x63t
        0x27t
        0x3at
        0x27t
        0x38t
        0x40t
        0x48t
        0x48t
        0x40t
        0x9t
        0x42t
        0x5ft
        0x48t
        0x9t
        0x43t
        0x46t
        0x53t
        0x46t
        0x45t
        0x46t
        0x54t
        0x42t
        0x9t
        0xet
        0x13t
        0x14t
        0x1t
        0xet
        0x3t
        0x5t
        0x3ft
        0x15t
        0x9t
        0x4t
        0x3at
        0x29t
        0x3et
        0x3ft
        0x25t
        0x23t
        0x22t
    .end array-data
.end method

.method public static A03(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5N;
        }
    .end annotation

    .line 14619
    const/16 v2, 0x9f

    const/16 v1, 0x11

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/5C;->A19(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14620
    return-void

    .line 14621
    :cond_0
    const/16 v2, 0xb7

    const/16 v1, 0x20

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 14622
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/5Q;->A05(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 14623
    invoke-virtual {p0, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14624
    return-void
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14625
    :catch_0
    move-exception v1

    .line 14626
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/5N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5N;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public static A04(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/5N;
        }
    .end annotation

    .line 14627
    :try_start_0
    const/4 v2, 0x0

    const/16 v1, 0x9f

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14628
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 14629
    .local v0, "values":Landroid/content/ContentValues;
    const/16 v2, 0xb0

    const/4 v1, 0x7

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14630
    const/16 v2, 0xe8

    const/16 v1, 0xc

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14631
    const/16 v2, 0xf4

    const/4 v1, 0x7

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14632
    const/16 v2, 0x9f

    const/16 v1, 0x11

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A01(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 14633
    .end local v0    # "values":Landroid/content/ContentValues;
    return-void
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14634
    :catch_0
    move-exception v1

    .line 14635
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/5N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/5N;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public static A05(ILjava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 14636
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
