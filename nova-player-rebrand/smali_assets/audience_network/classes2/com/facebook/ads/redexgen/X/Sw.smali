.class public final Lcom/facebook/ads/redexgen/X/Sw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Sx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageDownloaderCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Sv;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Sx;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sw;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Sv;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 64438
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64439
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    .line 64440
    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 13

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    return-object v5

    :cond_0
    move-object v2, p0

    .line 64441
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Sw;
    const v0, 0xf00d

    :try_start_0
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 64442
    new-instance v6, Lcom/facebook/ads/redexgen/X/LX;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Sv;->A07:Ljava/lang/String;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Sv;->A06:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x72

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A01(III)Ljava/lang/String;

    move-result-object v10

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/Sv;->A02:Ljava/lang/String;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-boolean v12, v0, Lcom/facebook/ads/redexgen/X/Sv;->A03:Z

    invoke-direct/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/LX;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64443
    .local v2, "cacheFileData":Lcom/facebook/ads/redexgen/X/LX;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Sv;->A05:I

    iput v0, v6, Lcom/facebook/ads/redexgen/X/LX;->A01:I

    .line 64444
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Sv;->A04:I

    iput v0, v6, Lcom/facebook/ads/redexgen/X/LX;->A00:I

    .line 64445
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64446
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sx;->A0B()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64447
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Sw;
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0L(Lcom/facebook/ads/redexgen/X/Sx;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 64448
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    .line 64449
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A02(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/LR;

    move-result-object v0

    .line 64450
    invoke-interface {v0, v6, v3}, Lcom/facebook/ads/redexgen/X/LR;->AIe(Lcom/facebook/ads/redexgen/X/LX;Z)Lcom/facebook/ads/redexgen/X/LT;

    move-result-object v0

    .line 64451
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LT;->A01()Z

    move-result v3

    .line 64452
    .local v3, "precacheResult":Z
    .restart local v3    # "precacheResult":Z
    :cond_2
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sv;->A01:Lcom/facebook/ads/redexgen/X/T3;

    .line 64453
    .local v4, "imageMemoryCacheConfig":Lcom/facebook/ads/redexgen/X/T3;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T3;->A02()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64454
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T3;->A00()I

    move-result v4

    .line 64455
    .local v5, "height":I
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T3;->A01()I

    move-result v1

    .line 64456
    .local v6, "width":I
    if-lez v4, :cond_5

    goto :goto_1

    .line 64457
    .end local v3    # "precacheResult":Z
    :cond_3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A06(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/Sy;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A0F(Lcom/facebook/ads/redexgen/X/Sv;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 64458
    :goto_1
    if-lez v1, :cond_5

    .line 64459
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0L(Lcom/facebook/ads/redexgen/X/Sx;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64460
    iput v4, v6, Lcom/facebook/ads/redexgen/X/LX;->A00:I

    .line 64461
    iput v1, v6, Lcom/facebook/ads/redexgen/X/LX;->A01:I

    .line 64462
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    invoke-direct {v2, v0, v6}, Lcom/facebook/ads/redexgen/X/Sw;->A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LX;)V

    goto :goto_2

    .line 64463
    :cond_4
    invoke-direct {v2, v4, v1}, Lcom/facebook/ads/redexgen/X/Sw;->A03(II)V

    goto :goto_2

    .line 64464
    :cond_5
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0L(Lcom/facebook/ads/redexgen/X/Sx;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64465
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    invoke-direct {v2, v0, v6}, Lcom/facebook/ads/redexgen/X/Sw;->A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LX;)V

    .line 64466
    .end local v5    # "height":I
    .end local v6    # "width":I
    :cond_6
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 64467
    :cond_7
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Sv;->A04:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Sv;->A05:I

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A03(II)V

    goto :goto_2

    .line 64468
    :goto_3
    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "cacheFileData":Lcom/facebook/ads/redexgen/X/LX;
    .end local v3
    .end local v4    # "imageMemoryCacheConfig":Lcom/facebook/ads/redexgen/X/T3;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v5
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sw;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2

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
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sw;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x23t
        -0x1ft
        -0x2bt
        -0x25t
        -0x27t
    .end array-data
.end method

.method private A03(II)V
    .locals 7

    .line 64469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    .line 64470
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A06(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/Sy;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Sv;->A02:Ljava/lang/String;

    move v5, p2

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Sy;->A0G(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 64471
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 64472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0C(Lcom/facebook/ads/redexgen/X/Sx;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A00:Lcom/facebook/ads/redexgen/X/Sv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Sv;->A08:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64473
    :cond_0
    return-void
.end method

.method private A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LX;)V
    .locals 2

    .line 64474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    .line 64475
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A02(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/LR;

    move-result-object v1

    .line 64476
    const/4 v0, 0x1

    invoke-interface {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/LR;->AIe(Lcom/facebook/ads/redexgen/X/LX;Z)Lcom/facebook/ads/redexgen/X/LT;

    move-result-object v0

    .line 64477
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LT;->A00()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 64478
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 64479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sw;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0C(Lcom/facebook/ads/redexgen/X/Sx;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64480
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 64481
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Sw;
    :try_start_0
    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Sw;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Sw;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
