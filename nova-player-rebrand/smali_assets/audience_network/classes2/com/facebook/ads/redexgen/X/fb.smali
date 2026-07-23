.class public final Lcom/facebook/ads/redexgen/X/fb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/fa;,
        Lcom/facebook/ads/redexgen/X/fZ;
    }
.end annotation


# static fields
.field public static A06:Lcom/facebook/ads/redexgen/X/5O;

.field public static A07:Lcom/facebook/ads/redexgen/X/C5;

.field public static A08:Lcom/facebook/ads/redexgen/X/MP;

.field public static A09:Lcom/facebook/ads/redexgen/X/fb;

.field public static A0A:Ljava/io/File;

.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Landroid/os/Handler;

.field public final A02:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/fZ;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/C4;

.field public final A04:Lcom/facebook/ads/redexgen/X/ge;

.field public final A05:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2815
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AwMrvrZaA3qCUMe4DaWf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nMell2jjCxhf1iVkS1T4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JoDZxKxhXC6KTCYPanywHJvOgx3oSz2Q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c4TvbpAtmy9oRzm3BRhbekxSipSfphPN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JNxty2uNXQJQugnl9tUmEGg4l4lnFcO6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Bo5IZ2fGdsUyi7NqIQl4cfXztCU0TldF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nOSbM9ZPEjvtyh7HAXbSWFPDuf7zpKmZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fb;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/fb;->A0D()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/C5;)V
    .locals 2

    .line 82463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82464
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Landroid/os/Handler;

    .line 82465
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A02:Landroid/util/SparseArray;

    .line 82466
    new-instance v0, Lcom/facebook/ads/redexgen/X/fY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fY;-><init>(Lcom/facebook/ads/redexgen/X/fb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A05:Ljava/lang/Runnable;

    .line 82467
    new-instance v0, Lcom/facebook/ads/redexgen/X/D3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/D3;-><init>(Lcom/facebook/ads/redexgen/X/fb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A03:Lcom/facebook/ads/redexgen/X/C4;

    .line 82468
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fb;->A04:Lcom/facebook/ads/redexgen/X/ge;

    .line 82469
    if-eqz p2, :cond_0

    .line 82470
    sput-object p2, Lcom/facebook/ads/redexgen/X/fb;->A07:Lcom/facebook/ads/redexgen/X/C5;

    .line 82471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A03:Lcom/facebook/ads/redexgen/X/C4;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/C5;->A0F(Lcom/facebook/ads/redexgen/X/C4;)V

    .line 82472
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fb;->A03()Lcom/facebook/ads/redexgen/X/C5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/C5;->A0E()V

    .line 82473
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/fb;)Landroid/os/Handler;
    .locals 0

    .line 82474
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Landroid/os/Handler;

    return-object p0
.end method

.method public static declared-synchronized A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/5O;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/fb;

    monitor-enter v1

    .line 82475
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A06:Lcom/facebook/ads/redexgen/X/5O;

    if-nez v0, :cond_0

    .line 82476
    new-instance v0, Lcom/facebook/ads/redexgen/X/pI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/pI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/fb;->A06:Lcom/facebook/ads/redexgen/X/5O;

    .line 82477
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A06:Lcom/facebook/ads/redexgen/X/5O;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82478
    .end local p0    # null:Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/AO;
    .locals 4

    .line 82479
    new-instance v3, Lcom/facebook/ads/redexgen/X/AO;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/AO;-><init>()V

    const/16 v2, 0x87

    const/4 v1, 0x3

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/AO;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AO;->A00(Lcom/facebook/ads/redexgen/X/5t;)Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized A03()Lcom/facebook/ads/redexgen/X/C5;
    .locals 1

    monitor-enter p0

    .line 82480
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fb;->A0E()V

    .line 82481
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A07:Lcom/facebook/ads/redexgen/X/C5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 82482
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/fb;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/MP;
    .locals 6

    const-class v5, Lcom/facebook/ads/redexgen/X/fb;

    monitor-enter v5

    .line 82483
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A08:Lcom/facebook/ads/redexgen/X/MP;

    if-nez v0, :cond_0

    .line 82484
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/fb;->A07(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x79

    const/16 v1, 0xe

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82485
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0T(Landroid/content/Context;)J

    move-result-wide v3

    new-instance v1, Lcom/facebook/ads/redexgen/X/89;

    invoke-direct {v1, v3, v4}, Lcom/facebook/ads/redexgen/X/89;-><init>(J)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/kM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/kM;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/kS;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/fb;->A08:Lcom/facebook/ads/redexgen/X/MP;

    .line 82486
    .end local v1
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A08:Lcom/facebook/ads/redexgen/X/MP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v0

    .line 82487
    .end local p0    # null:Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/pE;Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/kT;
    .locals 1

    .line 82488
    new-instance v0, Lcom/facebook/ads/redexgen/X/kT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/kT;-><init>()V

    .line 82489
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/kT;->A06(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/kT;

    move-result-object v0

    .line 82490
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/kT;->A05(Lcom/facebook/ads/redexgen/X/5Y;)Lcom/facebook/ads/redexgen/X/kT;

    move-result-object p0

    new-instance v0, Lcom/facebook/ads/redexgen/X/p8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/p8;-><init>()V

    .line 82491
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kT;->A04(Lcom/facebook/ads/redexgen/X/5Y;)Lcom/facebook/ads/redexgen/X/kT;

    move-result-object p0

    .line 82492
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/kT;->A03(I)Lcom/facebook/ads/redexgen/X/kT;

    move-result-object v0

    .line 82493
    return-object v0
.end method

.method public static declared-synchronized A06(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/fb;
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/fb;

    monitor-enter v2

    .line 82494
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A09:Lcom/facebook/ads/redexgen/X/fb;

    if-nez v0, :cond_0

    .line 82495
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/fb;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/fb;-><init>(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/C5;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/fb;->A09:Lcom/facebook/ads/redexgen/X/fb;

    .line 82496
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A09:Lcom/facebook/ads/redexgen/X/fb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 82497
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/ge;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized A07(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/fb;

    monitor-enter v1

    .line 82498
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A0A:Ljava/io/File;

    if-nez v0, :cond_0

    .line 82499
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fb;->A0A:Ljava/io/File;

    .line 82500
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A0A:Ljava/io/File;

    if-nez v0, :cond_0

    .line 82501
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fb;->A0A:Ljava/io/File;

    .line 82502
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A0A:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82503
    .end local p0    # null:Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/fb;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/ge;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 82504
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A1w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82505
    new-instance v0, Ljava/net/URI;

    .line 82506
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 82507
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 82508
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 82509
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82510
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82511
    return-object v0

    .line 82512
    :cond_0
    return-object v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82513
    :catch_0
    move-exception v0

    .line 82514
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0u:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 82515
    const/16 v2, 0x8a

    const/4 v1, 0x5

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 82516
    return-object v6
.end method

.method private A0A()V
    .locals 11

    .line 82517
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fb;->A03()Lcom/facebook/ads/redexgen/X/C5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/C5;->A0D()Ljava/util/List;

    move-result-object v0

    .line 82518
    .local v0, "downloadItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/offline/Download;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Bk;

    .line 82519
    .local v2, "downloadItem":Lcom/facebook/ads/redexgen/X/Bk;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Bk;->A07:Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 82520
    .local v3, "requestId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/fZ;

    .line 82521
    .local v4, "downloadConfig":Lcom/facebook/ads/redexgen/X/fZ;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    const/4 v0, 0x2

    const/4 v7, 0x1

    if-ne v1, v0, :cond_4

    .line 82522
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Bk;->A01()J

    move-result-wide v8

    const-wide/16 v1, 0x0

    cmp-long v0, v8, v1

    if-lez v0, :cond_4

    const/4 v8, 0x1

    .line 82523
    .local v5, "forceIsComplete":Z
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x45

    const/16 v1, 0xf

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x14

    const/16 v1, 0x19

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82524
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Bk;->A00()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82525
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Bk;->A01()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x2d

    const/16 v1, 0x9

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82526
    if-eqz v5, :cond_1

    .line 82527
    iget v6, v4, Lcom/facebook/ads/redexgen/X/Bk;->A02:I

    .line 82528
    .local v6, "state":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    if-nez v8, :cond_0

    .line 82529
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Bk;->A00()F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v1, v0

    if-gez v0, :cond_0

    .line 82530
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Bk;->A01()J

    move-result-wide v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/fb;->A0C:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/fb;->A0C:[Ljava/lang/String;

    const-string v1, "Dot6Q3Penl8IgXRyTYIqC6CBr4bXo7x7"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "9ocSvY8ybipVJ0ZgVUYrz9Eev0RZQ1px"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/fZ;->A00:J

    cmp-long v0, v8, v1

    if-lez v0, :cond_2

    .line 82531
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x13

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x36

    const/16 v1, 0x8

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Bk;->A01()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82532
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/fZ;->A01:Lcom/facebook/ads/redexgen/X/fa;

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/fZ;->A02:Z

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/fa;->ADj(Z)V

    .line 82533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 82534
    .end local v6    # "state":I
    :cond_1
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x75

    const/4 v1, 0x4

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x3e

    const/4 v1, 0x7

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Bk;->A01()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82535
    .end local v2    # "downloadItem":Lcom/facebook/ads/redexgen/X/Bk;
    .end local v3    # "requestId":I
    .end local v4    # "downloadConfig":Lcom/facebook/ads/redexgen/X/fZ;
    .end local v5    # "forceIsComplete":Z
    goto/16 :goto_0

    .line 82536
    :cond_2
    const/4 v0, 0x4

    if-eq v6, v0, :cond_3

    if-ne v6, v7, :cond_1

    .line 82537
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x67

    const/16 v1, 0xe

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82538
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/fZ;->A01:Lcom/facebook/ads/redexgen/X/fa;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Bk;->A01:I

    .line 82539
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 82540
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/fa;->ADr(Ljava/lang/Throwable;)V

    .line 82541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 82542
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 82543
    :cond_6
    return-void
.end method

.method private A0B()V
    .locals 2

    .line 82544
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A00:Z

    if-nez v0, :cond_0

    .line 82545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A00:Z

    .line 82546
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A05:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82547
    :cond_0
    return-void
.end method

.method private A0C()V
    .locals 2

    .line 82548
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fb;->A01:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A05:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A00:Z

    .line 82550
    return-void
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x8f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/fb;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x6t
        0xbt
        0x49t
        0x52t
        0x5ft
        0x4et
        0x58t
        0x74t
        0x4ft
        0x44t
        0x5ct
        0x45t
        0x47t
        0x44t
        0x4at
        0x4ft
        0x4et
        0x4ft
        0x11t
        0x37t
        0x3at
        0x37t
        0x67t
        0x72t
        0x65t
        0x74t
        0x72t
        0x79t
        0x63t
        0x76t
        0x70t
        0x72t
        0x37t
        0x73t
        0x78t
        0x60t
        0x79t
        0x7bt
        0x78t
        0x76t
        0x73t
        0x72t
        0x73t
        0x2dt
        0x7bt
        0x76t
        0x7bt
        0x28t
        0x2ft
        0x3at
        0x2ft
        0x3et
        0x61t
        0x23t
        0x41t
        0x7at
        0x77t
        0x66t
        0x70t
        0x39t
        0x23t
        0x21t
        0x63t
        0x78t
        0x75t
        0x64t
        0x72t
        0x21t
        0x4t
        0x4t
        0x4t
        0x4t
        0x9t
        0x5bt
        0x4ct
        0x58t
        0x5ct
        0x4ct
        0x5at
        0x5dt
        0x60t
        0x4dt
        0x13t
        0x19t
        0x32t
        0x2at
        0x33t
        0x31t
        0x32t
        0x3ct
        0x39t
        0x38t
        0x39t
        0x73t
        0x7dt
        0xet
        0x29t
        0x3ct
        0x29t
        0x38t
        0x67t
        0x7dt
        0x3et
        0x9t
        0x9t
        0x14t
        0x9t
        0x55t
        0x5bt
        0x28t
        0xft
        0x1at
        0xft
        0x1et
        0x41t
        0x5bt
        0x6et
        0x5bt
        0x49t
        0x51t
        0x7et
        0x7bt
        0x71t
        0x68t
        0x32t
        0x7bt
        0x70t
        0x68t
        0x71t
        0x73t
        0x70t
        0x7et
        0x7bt
        0x6ct
        0x25t
        0x20t
        0x37t
        0x54t
        0x56t
        0x54t
        0x5ft
        0x52t
    .end array-data
.end method

.method private declared-synchronized A0E()V
    .locals 7

    monitor-enter p0

    .line 82551
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fb;->A07:Lcom/facebook/ads/redexgen/X/C5;

    if-nez v0, :cond_0

    .line 82552
    new-instance v1, Lcom/facebook/ads/redexgen/X/C5;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/fb;->A04:Lcom/facebook/ads/redexgen/X/ge;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A04:Lcom/facebook/ads/redexgen/X/ge;

    .line 82553
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fb;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/5O;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A04:Lcom/facebook/ads/redexgen/X/ge;

    .line 82554
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fb;->A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/MP;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A04:Lcom/facebook/ads/redexgen/X/ge;

    .line 82555
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fb;->A0H(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/5Y;

    move-result-object v5

    .line 82556
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/C5;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5O;Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/5Y;Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/facebook/ads/redexgen/X/fb;->A07:Lcom/facebook/ads/redexgen/X/C5;

    .line 82557
    sget-object v1, Lcom/facebook/ads/redexgen/X/fb;->A07:Lcom/facebook/ads/redexgen/X/C5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A03:Lcom/facebook/ads/redexgen/X/C4;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/C5;->A0F(Lcom/facebook/ads/redexgen/X/C4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82558
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/fb;
    :cond_0
    monitor-exit p0

    return-void

    .line 82559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/fb;)V
    .locals 0

    .line 82560
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fb;->A0A()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/fb;)V
    .locals 0

    .line 82561
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fb;->A0C()V

    return-void
.end method


# virtual methods
.method public final A0H(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/5Y;
    .locals 3

    .line 82562
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fb;->A02()Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v2

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/pE;

    invoke-direct {v1, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/pE;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5t;Lcom/facebook/ads/redexgen/X/5Y;)V

    .line 82563
    .local v0, "upstreamFactory":Lcom/facebook/ads/redexgen/X/pE;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/fb;->A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/MP;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A05(Lcom/facebook/ads/redexgen/X/pE;Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/kT;

    move-result-object v0

    return-object v0
.end method

.method public final A0I(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/fa;J)V
    .locals 8

    .line 82564
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fb;->A04:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/fb;->A09(Lcom/facebook/ads/redexgen/X/ge;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 82565
    .local v2, "cacheKey":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 82566
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82567
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/fb;->A0J(Ljava/lang/String;)Z

    move-result v6

    .line 82568
    .local p1, "cacheHit":Z
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/C8;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/C8;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/C8;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/C8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/C8;->A05()Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v1

    .line 82569
    .local p2, "downloadRequest":Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fb;->A03()Lcom/facebook/ads/redexgen/X/C5;

    move-result-object v0

    .line 82570
    .local p3, "downloadManager":Lcom/facebook/ads/redexgen/X/C5;
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/C5;->A0G(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;)V

    .line 82571
    iget-object v0, v1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 82572
    .local p4, "actionId":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/fb;->A02:Landroid/util/SparseArray;

    new-instance v2, Lcom/facebook/ads/redexgen/X/fZ;

    const/4 v7, 0x0

    move-wide v4, p3

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/fZ;-><init>(Lcom/facebook/ads/redexgen/X/fa;JZLcom/facebook/ads/redexgen/X/fY;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82573
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fb;->A0B()V

    .line 82574
    return-void
.end method

.method public final A0J(Ljava/lang/String;)Z
    .locals 6

    .line 82575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fb;->A04:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/fb;->A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/MP;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/MP;->A7C(Ljava/lang/String;JJ)J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
