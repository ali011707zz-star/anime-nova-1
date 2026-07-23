.class public final Lcom/facebook/ads/redexgen/X/4p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4o;,
        Lcom/facebook/ads/redexgen/X/4n;,
        Lcom/facebook/ads/redexgen/X/4m;
    }
.end annotation


# static fields
.field public static A04:Lcom/facebook/ads/redexgen/X/4p;

.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Landroid/os/Handler;

.field public final A02:Ljava/lang/Object;

.field public final A03:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/4n;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 346
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7spJOR808jvRvy0GNSJxo7ZJ6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "86KvIandX8vj142355r0drGuD0jhaT0W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mZfZ3s6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1QsEKJVAx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "twpDIoiDpzCAIzfG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "B"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RSZaC18qSGa0csTWoF4Keu66v9ytRHBi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eBKWjsIIuU1hX4JwQhfiQu0nhoXTyGkQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4p;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4p;->A06()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 12421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12422
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4p;->A01:Landroid/os/Handler;

    .line 12423
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4p;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12424
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4p;->A02:Ljava/lang/Object;

    .line 12425
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4p;->A00:I

    .line 12426
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 12427
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    const/16 v1, 0x24

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4p;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12428
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4o;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/4o;-><init>(Lcom/facebook/ads/redexgen/X/4p;Lcom/facebook/ads/redexgen/X/4k;)V

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12429
    return-void
.end method

.method public static A00(Landroid/content/Context;)I
    .locals 3

    .line 12430
    const/16 v2, 0x24

    const/16 v1, 0xc

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4p;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 12431
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 12432
    return v0

    .line 12433
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 12434
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12435
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 12436
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 12437
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 12438
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 12439
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 12440
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 12441
    :pswitch_4
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/4p;->A02(Landroid/net/NetworkInfo;)I

    move-result v0

    return v0

    .line 12442
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .local v2, "e":Ljava/lang/SecurityException;
    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic A01(Landroid/content/Context;)I
    .locals 0

    .line 12443
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/4p;->A00(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static A02(Landroid/net/NetworkInfo;)I
    .locals 3

    .line 12444
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 12445
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 12446
    :pswitch_1
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    const/16 v0, 0x9

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12447
    :pswitch_2
    const/4 p0, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4p;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4p;->A06:[Ljava/lang/String;

    const-string v1, "Xq0rs7E"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return p0

    .line 12448
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 12449
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 12450
    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/4p;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/4p;

    monitor-enter v1

    .line 12451
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/4p;->A04:Lcom/facebook/ads/redexgen/X/4p;

    if-nez v0, :cond_0

    .line 12452
    new-instance v0, Lcom/facebook/ads/redexgen/X/4p;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4p;->A04:Lcom/facebook/ads/redexgen/X/4p;

    .line 12453
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/4p;->A04:Lcom/facebook/ads/redexgen/X/4p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12454
    .end local p0    # null:Landroid/content/Context;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4p;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 3

    .line 12455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4p;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 12456
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/androidx/media3/common/util/NetworkTypeObserver$Listener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4p;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12458
    :cond_1
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4p;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x59t
        0x56t
        0x5ct
        0x4at
        0x57t
        0x51t
        0x5ct
        0x16t
        0x56t
        0x5dt
        0x4ct
        0x16t
        0x5bt
        0x57t
        0x56t
        0x56t
        0x16t
        0x7bt
        0x77t
        0x76t
        0x76t
        0x7dt
        0x7bt
        0x6ct
        0x71t
        0x6et
        0x71t
        0x6ct
        0x61t
        0x67t
        0x7bt
        0x70t
        0x79t
        0x76t
        0x7ft
        0x7dt
        0x63t
        0x6ft
        0x6et
        0x6et
        0x65t
        0x63t
        0x74t
        0x69t
        0x76t
        0x69t
        0x74t
        0x79t
    .end array-data
.end method

.method private A07(I)V
    .locals 3

    .line 12459
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4p;->A02:Ljava/lang/Object;

    monitor-enter v1

    .line 12460
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4p;->A00:I

    if-ne v0, p1, :cond_0

    .line 12461
    monitor-exit v1

    return-void

    .line 12462
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4p;->A00:I

    .line 12463
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4p;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 12465
    .local v1, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/androidx/media3/common/util/NetworkTypeObserver$Listener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4n;

    .line 12466
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/4n;
    if-eqz v0, :cond_1

    .line 12467
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/4n;->AF1(I)V

    goto :goto_0

    .line 12468
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4p;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12469
    :cond_2
    return-void

    .line 12470
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/4p;I)V
    .locals 0

    .line 12471
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4p;->A07(I)V

    return-void
.end method


# virtual methods
.method public final A09()I
    .locals 2

    .line 12472
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4p;->A02:Ljava/lang/Object;

    monitor-enter v1

    .line 12473
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4p;->A00:I

    monitor-exit v1

    return v0

    .line 12474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/4n;)V
    .locals 2

    .line 12475
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4p;->A05()V

    .line 12476
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4p;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 12477
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4p;->A01:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4j;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/4j;-><init>(Lcom/facebook/ads/redexgen/X/4p;Lcom/facebook/ads/redexgen/X/4n;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12478
    return-void
.end method

.method public final synthetic A0B(Lcom/facebook/ads/redexgen/X/4n;)V
    .locals 1

    .line 12479
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4p;->A09()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/4n;->AF1(I)V

    return-void
.end method
