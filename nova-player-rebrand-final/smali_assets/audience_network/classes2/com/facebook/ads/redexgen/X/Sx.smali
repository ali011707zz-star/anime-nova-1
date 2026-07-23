.class public final Lcom/facebook/ads/redexgen/X/Sx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Sv;,
        Lcom/facebook/ads/redexgen/X/Sw;,
        Lcom/facebook/ads/redexgen/X/Ss;,
        Lcom/facebook/ads/redexgen/X/St;,
        Lcom/facebook/ads/redexgen/X/Su;,
        Lcom/facebook/ads/redexgen/X/Sq;,
        Lcom/facebook/ads/internal/cache/AdCacheManager$CacheFileExtension;
    }
.end annotation


# static fields
.field public static A0A:Lcom/facebook/ads/redexgen/X/LR;

.field public static A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;

.field public static final A0F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/LX;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Sz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/VI;

.field public final A02:Landroid/os/Handler;

.field public final A03:Lcom/facebook/ads/redexgen/X/Sy;

.field public final A04:Lcom/facebook/ads/redexgen/X/T8;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1673
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9sbbD15"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Lu4K49mlxrSXSmjNh7fbv8QTyeXNNeG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dxmg93Ac1Ci0DpKcQcYnCSB5QhHSt8Hl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k6rgF4fsXLHTj2vl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7FEQyJVT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NWpMXisSbHx8hQWP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4pbn9SiXGJE3zFdxdKEeQNSdsbhvbmq3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sx;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sx;->A0F()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0E:Ljava/lang/String;

    .line 1674
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1675
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Ljava/util/Map;

    .line 1676
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1677
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0G:Ljava/util/Map;

    .line 1678
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 2

    .line 64482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64484
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A07:Ljava/util/Map;

    .line 64485
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    .line 64486
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/os/Handler;

    .line 64487
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sy;->A06(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Sy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Lcom/facebook/ads/redexgen/X/Sy;

    .line 64488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Ljava/util/List;

    .line 64489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Ljava/util/List;

    .line 64490
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A2q(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A08:Z

    .line 64491
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fX;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A2z(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A09:Z

    .line 64492
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Sx;)J
    .locals 1

    .line 64493
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Sx;)Landroid/os/Handler;
    .locals 0

    .line 64494
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/LR;
    .locals 0

    .line 64495
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A03(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/LR;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized A03(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/LR;
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/Sx;

    monitor-enter v2

    .line 64496
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0A:Lcom/facebook/ads/redexgen/X/LR;

    if-nez v0, :cond_0

    .line 64497
    new-instance v1, Lcom/facebook/ads/redexgen/X/LY;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/LY;-><init>()V

    .line 64498
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A06(Landroid/content/Context;)I

    move-result v0

    .line 64499
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LY;->A00(I)Lcom/facebook/ads/redexgen/X/LY;

    move-result-object v1

    .line 64500
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LY;->A02(Z)Lcom/facebook/ads/redexgen/X/LY;

    move-result-object v1

    .line 64501
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LY;->A01(I)Lcom/facebook/ads/redexgen/X/LY;

    move-result-object v1

    .line 64502
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0p(Landroid/content/Context;)Z

    move-result v0

    .line 64503
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LY;->A03(Z)Lcom/facebook/ads/redexgen/X/LY;

    move-result-object v1

    .line 64504
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A2y(Landroid/content/Context;)Z

    move-result v0

    .line 64505
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LY;->A04(Z)Lcom/facebook/ads/redexgen/X/LY;

    move-result-object v0

    .line 64506
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LY;->A05()Lcom/facebook/ads/redexgen/X/LZ;

    move-result-object v1

    .line 64507
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A05(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/gm;

    move-result-object v0

    .line 64508
    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LS;->A00(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/LZ;Lcom/facebook/ads/redexgen/X/Lm;)Lcom/facebook/ads/redexgen/X/ks;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0A:Lcom/facebook/ads/redexgen/X/LR;

    .line 64509
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0A:Lcom/facebook/ads/redexgen/X/LR;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 64510
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/ge;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LX;
    .locals 2

    .line 64511
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/LX;

    .line 64512
    .local v0, "storedCacheData":Lcom/facebook/ads/redexgen/X/LX;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 64513
    new-instance v0, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/LX;-><init>(Lcom/facebook/ads/redexgen/X/LX;)V

    .line 64514
    :goto_0
    return-object v0

    .line 64515
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/LX;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/gm;
    .locals 1

    .line 64516
    new-instance v0, Lcom/facebook/ads/redexgen/X/gm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/gm;-><init>(Lcom/facebook/ads/redexgen/X/ge;)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/Sy;
    .locals 0

    .line 64517
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Lcom/facebook/ads/redexgen/X/Sy;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;
    .locals 0

    .line 64518
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    return-object p0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sx;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static declared-synchronized A09(Lcom/facebook/ads/redexgen/X/T8;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/T8;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/facebook/ads/redexgen/X/Sx;

    monitor-enter v1

    .line 64519
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0B:Ljava/util/List;

    if-nez v0, :cond_0

    .line 64520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0B:Ljava/util/List;

    .line 64521
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0B:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Sx;->A0J(Ljava/util/List;Lcom/facebook/ads/redexgen/X/T8;)V

    .line 64522
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0B:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64523
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/T8;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic A0A()Ljava/util/Map;
    .locals 4

    .line 64524
    sget-object v3, Lcom/facebook/ads/redexgen/X/Sx;->A0G:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sx;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sx;->A0D:[Ljava/lang/String;

    const-string v1, "WjQPXn0MHZbTNsTxKlY7B5aUAaJR9kiv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0B()Ljava/util/Map;
    .locals 1

    .line 64525
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Sx;)Ljava/util/Map;
    .locals 0

    .line 64526
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A07:Ljava/util/Map;

    return-object p0
.end method

.method public static A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/util/concurrent/atomic/AtomicBoolean;"
        }
    .end annotation

    .line 64527
    .local p2, "downloaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 64528
    .local v0, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 64529
    .local v2, "downloader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YG;->A02()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64530
    .end local v2    # "downloader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 64531
    :cond_0
    const/4 v0, 0x1

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 64532
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 64533
    .local v5, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 64534
    .local p0, "partialResult":Ljava/lang/Boolean;
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64535
    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    .line 64536
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/Sx;->A0E:Ljava/lang/String;

    const/16 v2, 0x55

    const/16 v1, 0x2a

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64537
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64538
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-object p0
.end method

.method public static synthetic A0E(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 64539
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static A0F()V
    .locals 1

    const/16 v0, 0xbd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x2at
        0x7at
        0x78t
        0x7ct
        0x2ct
        0x2at
        0x79t
        0x5ft
        0xbt
        0x5ct
        0x5dt
        0xft
        0x56t
        0x5at
        0xat
        0x22t
        0x72t
        0x2ft
        0x23t
        0x22t
        0x24t
        0x76t
        0xbt
        0x29t
        0x2bt
        0x20t
        0x2dt
        0x68t
        0x3bt
        0x3ct
        0x29t
        0x3at
        0x3ct
        0x2dt
        0x2ct
        0x66t
        0x64t
        0x46t
        0x44t
        0x4ft
        0x4et
        0x49t
        0x40t
        0x7t
        0x44t
        0x48t
        0x4at
        0x57t
        0x4bt
        0x42t
        0x53t
        0x42t
        0x3ft
        0x1dt
        0x1ft
        0x14t
        0x15t
        0x12t
        0x1bt
        0x5ct
        0x1at
        0x1dt
        0x15t
        0x10t
        0x19t
        0x18t
        0x45t
        0x67t
        0x65t
        0x6et
        0x6ft
        0x68t
        0x61t
        0x26t
        0x75t
        0x72t
        0x67t
        0x74t
        0x72t
        0x63t
        0x62t
        0x28t
        0x28t
        0x28t
        0x67t
        0x5at
        0x41t
        0x47t
        0x52t
        0x56t
        0x4bt
        0x4dt
        0x4ct
        0x2t
        0x55t
        0x4at
        0x4bt
        0x4et
        0x47t
        0x2t
        0x47t
        0x5at
        0x47t
        0x41t
        0x57t
        0x56t
        0x4bt
        0x4ct
        0x45t
        0x2t
        0x41t
        0x43t
        0x41t
        0x4at
        0x47t
        0x2t
        0x46t
        0x4dt
        0x55t
        0x4ct
        0x4et
        0x4dt
        0x43t
        0x46t
        0x51t
        0xct
        0x42t
        0x40t
        0x42t
        0x49t
        0x44t
        0x62t
        0x4et
        0x4ct
        0x51t
        0x4dt
        0x44t
        0x55t
        0x48t
        0x4et
        0x4ft
        0x69t
        0x4et
        0x4et
        0x4at
        0x6ft
        0x6dt
        0x6ft
        0x64t
        0x69t
        0x4at
        0x6dt
        0x65t
        0x60t
        0x79t
        0x7et
        0x69t
        0x44t
        0x63t
        0x63t
        0x67t
        0x68t
        0x75t
        0x68t
        0x6et
        0x78t
        0x79t
        0x68t
        0x65t
        0x66t
        0x68t
        0x6dt
        0x77t
        0x74t
        0x7at
        0x7ft
        0x44t
        0x6ft
        0x72t
        0x76t
        0x7et
        0x44t
        0x76t
        0x68t
        0x59t
        0x42t
        0x45t
        0x5dt
    .end array-data
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/VH;)V
    .locals 0

    .line 64540
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sx;->A0I(Lcom/facebook/ads/redexgen/X/VH;)V

    return-void
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V
    .locals 4

    .line 64541
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64542
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Sz;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sx;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    .line 64543
    .local v0, "logData":Lcom/facebook/ads/redexgen/X/Sz;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sx;->A0D:[Ljava/lang/String;

    const-string v1, "a10tGuQmEwUEP0sxRmqxEmZkNnUikCvX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 64544
    const/16 v2, 0xb9

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Sz;->A00:Ljava/lang/String;

    .line 64545
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v2

    .line 64546
    .local v1, "sdkContext":Lcom/facebook/ads/redexgen/X/ge;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/fb;->A06(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/fb;

    move-result-object v1

    .line 64547
    .local v2, "cacheManager":Lcom/facebook/ads/redexgen/X/fb;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64548
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/fb;->A09(Lcom/facebook/ads/redexgen/X/ge;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 64549
    .local v3, "cacheKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 64550
    move-object v0, p1

    .line 64551
    :cond_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fb;->A0J(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/T0;->A04(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sz;Z)V

    .line 64552
    .end local v0    # "logData":Lcom/facebook/ads/redexgen/X/Sz;
    .end local v1    # "sdkContext":Lcom/facebook/ads/redexgen/X/ge;
    .end local v2    # "cacheManager":Lcom/facebook/ads/redexgen/X/fb;
    .end local v3    # "cacheKey":Ljava/lang/String;
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/VH;)V
    .locals 5

    .line 64553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A01:Lcom/facebook/ads/redexgen/X/VI;

    if-nez v0, :cond_0

    .line 64554
    return-void

    .line 64555
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 64556
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A05(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xad

    const/16 v1, 0xc

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A01:Lcom/facebook/ads/redexgen/X/VI;

    invoke-virtual {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 64558
    return-void
.end method

.method public static A0J(Ljava/util/List;Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/T8;",
            ")V"
        }
    .end annotation

    .line 64559
    .local p0, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ks;->A01(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0K(Ljava/util/List;Ljava/io/File;)V

    .line 64560
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Sy;->A07(Lcom/facebook/ads/redexgen/X/T8;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0K(Ljava/util/List;Ljava/io/File;)V

    .line 64561
    return-void
.end method

.method public static A0K(Ljava/util/List;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 64562
    .local v2, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 64563
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 64564
    .local v0, "path":Ljava/lang/String;
    if-eqz v4, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v0

    if-eq v4, v0, :cond_0

    .line 64565
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sx;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sx;->A0D:[Ljava/lang/String;

    const-string v1, "BAOa9xP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64566
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Sx;)Z
    .locals 0

    .line 64567
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A08:Z

    return p0
.end method


# virtual methods
.method public final A0M(Ljava/lang/String;)F
    .locals 1

    .line 64568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Lcom/facebook/ads/redexgen/X/Sy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sy;->A0E(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final A0N(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 64569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A07:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final A0O(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9

    .line 64570
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A08:Z

    move v7, p3

    move v6, p2

    move-object v5, p1

    if-eqz v0, :cond_0

    .line 64571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Sx;->A04(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LX;

    move-result-object v3

    .line 64572
    .local v0, "cacheFileData":Lcom/facebook/ads/redexgen/X/LX;
    const/16 v2, 0xb9

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/LX;->A03:Ljava/lang/String;

    .line 64573
    iput v7, v3, Lcom/facebook/ads/redexgen/X/LX;->A01:I

    .line 64574
    iput v6, v3, Lcom/facebook/ads/redexgen/X/LX;->A00:I

    .line 64575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A03(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/LR;

    move-result-object v1

    .line 64576
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/LR;->AIe(Lcom/facebook/ads/redexgen/X/LX;Z)Lcom/facebook/ads/redexgen/X/LT;

    move-result-object v0

    .line 64577
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LT;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 64578
    return-object v0

    .line 64579
    .end local v0    # "cacheFileData":Lcom/facebook/ads/redexgen/X/LX;
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Lcom/facebook/ads/redexgen/X/Sy;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    const/16 v2, 0xa9

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Sy;->A0G(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0P(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 64580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Sx;->A04(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LX;

    move-result-object v3

    .line 64581
    .local v0, "storedCacheFileData":Lcom/facebook/ads/redexgen/X/LX;
    const/16 v2, 0xb9

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/LX;->A03:Ljava/lang/String;

    .line 64582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A03(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/LR;

    move-result-object v0

    .line 64583
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/LR;->AIf(Lcom/facebook/ads/redexgen/X/LX;)Ljava/io/File;

    move-result-object v0

    .line 64584
    return-object v0
.end method

.method public final A0Q(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 64585
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A08:Z

    if-eqz v0, :cond_0

    .line 64586
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Sx;->A0P(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 64587
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Lcom/facebook/ads/redexgen/X/Sy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sy;->A0H(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final A0R(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 64588
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A08:Z

    if-eqz v0, :cond_0

    .line 64589
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Sx;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64590
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Lcom/facebook/ads/redexgen/X/Sy;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sy;->A0I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0S(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 64591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Sx;->A04(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/LX;

    move-result-object v3

    .line 64592
    .local v0, "storedCacheFileData":Lcom/facebook/ads/redexgen/X/LX;
    const/16 v2, 0xb9

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/LX;->A03:Ljava/lang/String;

    .line 64593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    .line 64594
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A03(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/LR;

    move-result-object v0

    .line 64595
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/LR;->AIh(Lcom/facebook/ads/redexgen/X/LX;)Ljava/lang/String;

    move-result-object v0

    .line 64596
    .local v1, "cachedUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public final A0T(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 64597
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A09:Z

    if-eqz v0, :cond_0

    .line 64598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Sx;->A0H(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V

    .line 64599
    return-object p1

    .line 64600
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Sx;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0U()V
    .locals 5

    const/16 v2, 0x25

    const/16 v1, 0x10

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x10

    const/4 v1, 0x7

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7f

    const/16 v1, 0x13

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64601
    return-void
.end method

.method public final A0V()V
    .locals 5

    const/16 v2, 0x35

    const/16 v1, 0xe

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x92

    const/16 v1, 0x10

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64602
    return-void
.end method

.method public final A0W()V
    .locals 1

    .line 64603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A07:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64604
    return-void
.end method

.method public final A0X(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/Sq;)V
    .locals 9

    const/16 v2, 0x43

    const/16 v1, 0x12

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa2

    const/4 v1, 0x7

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:J

    .line 64606
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Lcom/facebook/ads/redexgen/X/T8;

    sget v5, Lcom/facebook/ads/redexgen/X/T0;->A07:I

    const/16 v2, 0x17

    const/16 v1, 0xe

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A08(III)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, -0x1

    move-object v4, p2

    move-object v4, v4

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/T0;->A02(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/Sq;ILjava/lang/String;J)V

    .line 64607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64608
    .local v2, "mandatoryDownloadersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64609
    .local v5, "optionalDownloadersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YG;->A03()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/gn;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/gn;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Ljava/util/ArrayList;Lcom/facebook/ads/redexgen/X/Sq;Lcom/facebook/ads/redexgen/X/Sp;Ljava/util/ArrayList;)V

    .line 64610
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 64611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64613
    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/St;)V
    .locals 2

    .line 64614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Su;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Su;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64615
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/St;)V
    .locals 2

    .line 64616
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/St;->A05:Z

    .line 64617
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Su;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Su;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64618
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/St;)V
    .locals 2

    .line 64619
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/St;->A05:Z

    .line 64620
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A09:Z

    if-eqz v0, :cond_0

    .line 64621
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ss;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ss;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64622
    :goto_0
    return-void

    .line 64623
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Su;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Su;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/St;)V
    .locals 2

    .line 64624
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A09:Z

    if-eqz v0, :cond_0

    .line 64625
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ss;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ss;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64626
    :goto_0
    return-void

    .line 64627
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Su;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Su;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/Sv;)V
    .locals 2

    .line 64628
    new-instance v1, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 64629
    .local v0, "imageDownloaderCallable":Lcom/facebook/ads/redexgen/X/Sw;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Sv;->A03:Z

    if-nez v0, :cond_0

    .line 64630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64631
    :goto_0
    return-void

    .line 64632
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/Sv;)V
    .locals 1

    .line 64633
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Sv;->A03:Z

    .line 64634
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 64635
    return-void
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/VI;)V
    .locals 0

    .line 64636
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A01:Lcom/facebook/ads/redexgen/X/VI;

    .line 64637
    return-void
.end method
