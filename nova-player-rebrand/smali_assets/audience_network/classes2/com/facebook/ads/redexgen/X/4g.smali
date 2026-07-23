.class public abstract Lcom/facebook/ads/redexgen/X/4g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4f;,
        Lcom/facebook/ads/androidx/media3/common/util/Log$LogLevel;
    }
.end annotation


# static fields
.field public static A00:I

.field public static A01:Lcom/facebook/ads/redexgen/X/4f;

.field public static A02:Z

.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 341
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pjC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ar4G3OSxcgl2D"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AarUE2nt7cnp4GdKoelKCQn2Jt4OXyEc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "B5uTmPcht7q4WCzfelpVRln9dVKzTr9W"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "36fORse15dXsGKgrcWq47HxFqRHPKtSm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Eh56lsHHP32qxPGDjQKhG4rai7NSZl8p"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QN71kq8063jCyPpsf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zuMcuSAj79dOj6A3T"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4g;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4g;->A03()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4g;->A05:Ljava/lang/Object;

    .line 342
    const/4 v0, 0x0

    sput v0, Lcom/facebook/ads/redexgen/X/4g;->A00:I

    .line 343
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/4g;->A02:Z

    .line 344
    sget-object v0, Lcom/facebook/ads/redexgen/X/4f;->A00:Lcom/facebook/ads/redexgen/X/4f;

    sput-object v0, Lcom/facebook/ads/redexgen/X/4g;->A01:Lcom/facebook/ads/redexgen/X/4f;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/4g;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v3, p1, p0

    sub-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4g;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4g;->A04:[Ljava/lang/String;

    const-string v1, "EwS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x73

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12317
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4g;->A02(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 12318
    .local v0, "throwableString":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x3

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12320
    :cond_0
    return-object p0
.end method

.method public static A02(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12321
    sget-object v5, Lcom/facebook/ads/redexgen/X/4g;->A05:Ljava/lang/Object;

    monitor-enter v5

    .line 12322
    if-nez p0, :cond_0

    .line 12323
    :try_start_0
    monitor-exit v5

    const/4 v0, 0x0

    return-object v0

    .line 12324
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4g;->A0B(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12325
    const/16 v2, 0x9

    const/16 v1, 0x21

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(III)Ljava/lang/String;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 12326
    :cond_1
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/4g;->A02:Z

    if-nez v0, :cond_2

    .line 12327
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 12328
    :cond_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/16 v0, 0x71

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/4g;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 12329
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4g;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x3at
        -0x41t
        0x7ft
        -0x6bt
        -0x6bt
        0x4t
        0x4t
        0x4t
        0x4t
        -0x8t
        0x11t
        0xet
        0x11t
        0x12t
        0x1at
        0x11t
        -0x15t
        0x12t
        0x16t
        0x17t
        -0x18t
        0x1bt
        0x6t
        0x8t
        0x13t
        0x17t
        0xct
        0x12t
        0x11t
        -0x3dt
        -0x35t
        0x11t
        0x12t
        -0x3dt
        0x11t
        0x8t
        0x17t
        0x1at
        0x12t
        0x15t
        0xet
        -0x34t
    .end array-data
.end method

.method public static A04(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12330
    sget-object p1, Lcom/facebook/ads/redexgen/X/4g;->A05:Ljava/lang/Object;

    monitor-enter p1

    .line 12331
    :try_start_0
    sget p0, Lcom/facebook/ads/redexgen/X/4g;->A00:I

    .line 12332
    monitor-exit p1

    .line 12333
    return-void

    .line 12334
    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static A05(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12335
    sget-object v2, Lcom/facebook/ads/redexgen/X/4g;->A05:Ljava/lang/Object;

    monitor-enter v2

    .line 12336
    :try_start_0
    sget v1, Lcom/facebook/ads/redexgen/X/4g;->A00:I

    const/4 v0, 0x3

    if-gt v1, v0, :cond_0

    .line 12337
    sget-object v0, Lcom/facebook/ads/redexgen/X/4g;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/4f;->A6H(Ljava/lang/String;Ljava/lang/String;)V

    .line 12338
    :cond_0
    monitor-exit v2

    .line 12339
    return-void

    .line 12340
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A06(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12341
    sget-object v2, Lcom/facebook/ads/redexgen/X/4g;->A05:Ljava/lang/Object;

    monitor-enter v2

    .line 12342
    :try_start_0
    sget v1, Lcom/facebook/ads/redexgen/X/4g;->A00:I

    const/4 v0, 0x1

    if-gt v1, v0, :cond_0

    .line 12343
    sget-object v0, Lcom/facebook/ads/redexgen/X/4g;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/4f;->A9t(Ljava/lang/String;Ljava/lang/String;)V

    .line 12344
    :cond_0
    monitor-exit v2

    .line 12345
    return-void

    .line 12346
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A07(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12347
    sget-object v2, Lcom/facebook/ads/redexgen/X/4g;->A05:Ljava/lang/Object;

    monitor-enter v2

    .line 12348
    :try_start_0
    sget v1, Lcom/facebook/ads/redexgen/X/4g;->A00:I

    const/4 v0, 0x2

    if-gt v1, v0, :cond_0

    .line 12349
    sget-object v0, Lcom/facebook/ads/redexgen/X/4g;->A01:Lcom/facebook/ads/redexgen/X/4f;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/4f;->AKm(Ljava/lang/String;Ljava/lang/String;)V

    .line 12350
    :cond_0
    monitor-exit v2

    .line 12351
    return-void

    .line 12352
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12353
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/4g;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 12354
    return-void
.end method

.method public static A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12355
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/4g;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4g;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 12356
    return-void
.end method

.method public static A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12357
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/4g;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 12358
    return-void
.end method

.method public static A0B(Ljava/lang/Throwable;)Z
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 12359
    :goto_0
    if-eqz p0, :cond_2

    .line 12360
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    .line 12361
    const/4 p0, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4g;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12362
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4g;->A04:[Ljava/lang/String;

    const-string v1, "Bi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    .line 12363
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
