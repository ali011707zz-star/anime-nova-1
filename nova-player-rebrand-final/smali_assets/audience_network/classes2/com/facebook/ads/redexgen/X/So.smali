.class public final Lcom/facebook/ads/redexgen/X/So;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static final A04:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ge;

.field public A01:Ljava/lang/String;

.field public final A02:Lcom/facebook/ads/redexgen/X/Xl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1672
    invoke-static {}, Lcom/facebook/ads/redexgen/X/So;->A04()V

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/So;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 64329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64330
    new-instance v3, Lcom/facebook/ads/redexgen/X/gp;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/gp;-><init>(Lcom/facebook/ads/redexgen/X/So;)V

    const-wide v1, 0x45d964b800L

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xl;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Xl;-><init>(JLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Lcom/facebook/ads/redexgen/X/Xl;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/UD;
    .locals 4

    .line 64331
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A1B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64332
    const/16 v2, 0x12

    const/16 v1, 0xc

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/So;->A01(III)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x6

    const/16 v1, 0xc

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/So;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/So;->A01(III)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UE;->A01([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ZL;

    move-result-object v0

    return-object v0

    .line 64333
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UE;->A00()Lcom/facebook/ads/redexgen/X/ZQ;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/So;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x50

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 3

    .line 64334
    monitor-enter p0

    .line 64335
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 64336
    .local v0, "ctx":Lcom/facebook/ads/redexgen/X/ge;
    monitor-exit p0

    .line 64337
    if-nez v2, :cond_0

    .line 64338
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64339
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UG;->A00()Lcom/facebook/ads/redexgen/X/UG;

    move-result-object v1

    .line 64340
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/UG;->A01(Lcom/facebook/ads/redexgen/X/T8;Z)Lcom/facebook/ads/redexgen/X/ZJ;

    move-result-object v1

    .line 64341
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/So;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/UD;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A05(Lcom/facebook/ads/redexgen/X/UD;)Ljava/lang/String;

    move-result-object v0

    .line 64342
    .local v1, "token":Ljava/lang/String;
    monitor-enter p0

    .line 64343
    :try_start_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Ljava/lang/String;

    .line 64344
    monitor-exit p0

    .line 64345
    return-void

    .line 64346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 64347
    .end local v0    # "ctx":Lcom/facebook/ads/redexgen/X/ge;
    .end local v1    # "token":Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static A03()V
    .locals 2

    .line 64348
    sget-object v1, Lcom/facebook/ads/redexgen/X/So;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64349
    return-void
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/So;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x38t
        -0x2bt
        -0x38t
        -0x2dt
        -0x2at
        -0x32t
        -0x56t
        -0x5ft
        -0x50t
        -0x4dt
        -0x55t
        -0x52t
        -0x59t
        -0x45t
        -0x50t
        -0x4bt
        -0x54t
        -0x5ft
        -0x40t
        -0x4et
        -0x40t
        -0x40t
        -0x4at
        -0x44t
        -0x45t
        -0x34t
        -0x3ft
        -0x4at
        -0x46t
        -0x4et
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/So;)V
    .locals 0

    .line 64350
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/So;->A02()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A06(Lcom/facebook/ads/redexgen/X/ge;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 64351
    :try_start_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 64352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Tc;->ACP()V

    .line 64353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A04()Lcom/facebook/ads/redexgen/X/TB;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/TB;->ADI(Lcom/facebook/ads/redexgen/X/ge;)V

    .line 64354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A07()Lcom/facebook/ads/redexgen/X/TP;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TP;->AJw()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/So;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64355
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 64356
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A21(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/So;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 64357
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/So;->A02()V

    .line 64358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Lcom/facebook/ads/redexgen/X/Xl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xl;->A04()Lcom/facebook/ads/redexgen/X/Xj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A03()V

    .line 64359
    sget-object v1, Lcom/facebook/ads/redexgen/X/So;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64360
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Lcom/facebook/ads/redexgen/X/Xl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xl;->A06()V

    .line 64361
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64362
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/ge;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A07()V
    .locals 1

    .line 64363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Lcom/facebook/ads/redexgen/X/Xl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xl;->A05()V

    .line 64364
    return-void
.end method
