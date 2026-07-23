.class public final Lcom/facebook/ads/redexgen/X/Lf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Le;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 992
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pXXvlweo53LEBZFO8IULCIdZyckTRG5r"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DuGHfKZCm01"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "80fcVnrJERY0uuv61EoOWTfKBWpdgNO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9CXibrLJZkMktsdeymca"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5EX4ZE8RGyFWDwwd0Tfx6XQfl6R1kt5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MQihPub9yWY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FZA8FrqtMtEe7NzfiE56"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "M8QLs2sFGOm02m2V5lAOlFR2Pc3pvKwT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Lf;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lf;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lf;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x73

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/io/File;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 50511
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 50512
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 50513
    .local v1, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 50514
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 50515
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Le;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Le;-><init>(Lcom/facebook/ads/redexgen/X/Ld;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50516
    :cond_0
    return-object v2
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x75

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lf;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x5ct
        0x15t
        0xft
        0x5ct
        0x12t
        0x13t
        0x8t
        0x5ct
        0x18t
        0x15t
        0xet
        0x19t
        0x1ft
        0x8t
        0x13t
        0xet
        0x5t
        0x5dt
        0x34t
        0x19t
        0x2t
        0x15t
        0x13t
        0x4t
        0x1ft
        0x2t
        0x9t
        0x50t
        0x55t
        0x3t
        0x50t
        0x13t
        0x11t
        0x1et
        0x57t
        0x4t
        0x50t
        0x12t
        0x15t
        0x50t
        0x13t
        0x2t
        0x15t
        0x11t
        0x4t
        0x15t
        0x14t
        0x3et
        0x9t
        0x9t
        0x14t
        0x9t
        0x5bt
        0x9t
        0x1et
        0x18t
        0x9t
        0x1et
        0x1at
        0xft
        0x1et
        0x5bt
        0x1t
        0x1et
        0x9t
        0x14t
        0x56t
        0x8t
        0x12t
        0x1t
        0x1et
        0x5bt
        0x1dt
        0x12t
        0x17t
        0x1et
        0x5bt
        0x7at
        0x4dt
        0x4dt
        0x50t
        0x4dt
        0x1ft
        0x4ct
        0x5at
        0x4bt
        0x1ft
        0x53t
        0x5et
        0x4ct
        0x4bt
        0x1ft
        0x52t
        0x50t
        0x5bt
        0x56t
        0x59t
        0x56t
        0x5at
        0x5bt
        0x1ft
        0x5bt
        0x5et
        0x4bt
        0x5at
        0x1ft
        0x4bt
        0x50t
        0x1ft
        0x53t
        0x7ct
        0x79t
        0x70t
        0x35t
        0x63t
        0x66t
        0x75t
    .end array-data
.end method

.method public static A03(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50517
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 50519
    .local v0, "now":J
    invoke-virtual {p0, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    .line 50520
    .local v2, "modified":Z
    if-nez v0, :cond_0

    .line 50521
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lf;->A04(Ljava/io/File;)V

    .line 50522
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    .line 50523
    .end local v0    # "now":J
    .end local v2    # "modified":Z
    :cond_0
    return-void

    .line 50524
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4d

    const/16 v1, 0x20

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A04(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50525
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 50526
    .local v0, "size":J
    const-wide/16 v1, 0x0

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    .line 50527
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lf;->A05(Ljava/io/File;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Lf;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    .line 50528
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lf;->A01:[Ljava/lang/String;

    const-string v1, "fwMIAeZxeVy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "XGkZ1N2vKGp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50529
    :cond_1
    const/16 v2, 0x72

    const/4 v1, 0x3

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lf;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-direct {v6, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50530
    .local v2, "accessFile":Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x1

    sub-long v0, v4, v2

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 50531
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 50532
    .local v5, "lastByte":B
    sub-long/2addr v4, v2

    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 50533
    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 50534
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 50535
    return-void
.end method

.method public static A05(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50536
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50537
    return-void

    .line 50538
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    const/16 v1, 0x1e

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized A06(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v5, Lcom/facebook/ads/redexgen/X/Lf;

    monitor-enter v5

    .line 50539
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50540
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50541
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6d

    const/4 v1, 0x5

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lf;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50542
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 50543
    .local v1, "isCreated":Z
    if-eqz v0, :cond_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50544
    .end local v1    # "isCreated":Z
    :goto_0
    monitor-exit v5

    return-void

    .line 50545
    :cond_2
    :try_start_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x12

    const/16 v1, 0x1d

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lf;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 50546
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50547
    .end local v1
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method
