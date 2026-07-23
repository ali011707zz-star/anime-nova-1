.class public final Lcom/facebook/ads/redexgen/X/ZR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TA;


# static fields
.field public static A07:Lcom/facebook/ads/redexgen/X/ZR;

.field public static A08:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Lx;

.field public A01:Lcom/facebook/ads/redexgen/X/T1;

.field public A02:Lcom/facebook/ads/redexgen/X/T9;

.field public A03:Lcom/facebook/ads/redexgen/X/TP;

.field public A04:Lcom/facebook/ads/redexgen/X/U7;

.field public A05:Lcom/facebook/ads/redexgen/X/VM;

.field public A06:Lcom/facebook/ads/redexgen/X/CY;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZR;->A07()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;)Lcom/facebook/ads/redexgen/X/SR;
    .locals 0

    .line 75466
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A1r(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 75467
    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 75468
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SS;->A00()Lcom/facebook/ads/redexgen/X/gv;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/gv;->A00(Lcom/facebook/ads/redexgen/X/CY;)Lcom/facebook/ads/redexgen/X/gt;

    move-result-object p0

    return-object p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/TP;
    .locals 2

    .line 75469
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TQ;->A00()Lcom/facebook/ads/redexgen/X/fD;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/bp;-><init>()V

    .line 75470
    invoke-virtual {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/fD;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TO;)Lcom/facebook/ads/redexgen/X/TP;

    move-result-object v0

    .line 75471
    return-object v0
.end method

.method public static declared-synchronized A02()Lcom/facebook/ads/redexgen/X/ZR;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/ZR;

    monitor-enter v1

    .line 75472
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/ZR;->A07:Lcom/facebook/ads/redexgen/X/ZR;

    if-nez v0, :cond_0

    .line 75473
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZR;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZR;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZR;->A07:Lcom/facebook/ads/redexgen/X/ZR;

    .line 75474
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/ZR;->A07:Lcom/facebook/ads/redexgen/X/ZR;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75475
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/fv;
    .locals 1

    .line 75476
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A1n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75477
    const/4 v0, 0x0

    return-object v0

    .line 75478
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/gD;->A01(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/fv;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized A04()Lcom/facebook/ads/redexgen/X/CY;
    .locals 1

    monitor-enter p0

    .line 75479
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A06:Lcom/facebook/ads/redexgen/X/CY;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ZR;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/TP;Lcom/facebook/ads/redexgen/X/fv;)Lcom/facebook/ads/redexgen/X/CY;
    .locals 15

    .line 75480
    move-object v4, p0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Up;->A2m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v14, p2

    if-eqz v14, :cond_0

    .line 75481
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75482
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 75483
    :cond_1
    new-instance v3, Lcom/facebook/ads/redexgen/X/WA;

    sget-object v7, Lcom/facebook/ads/redexgen/X/Vq;->A08:Lcom/facebook/ads/redexgen/X/Vq;

    new-instance v9, Lcom/facebook/ads/redexgen/X/Vu;

    invoke-direct {v9}, Lcom/facebook/ads/redexgen/X/Vu;-><init>()V

    .line 75484
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Up;->A0N(Landroid/content/Context;)I

    move-result v0

    .line 75485
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xt;->A01(I)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Lcom/facebook/ads/redexgen/X/ij;

    invoke-direct {v13}, Lcom/facebook/ads/redexgen/X/ij;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZR;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/facebook/ads/redexgen/X/WA;-><init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Vq;ILcom/facebook/ads/redexgen/X/Vu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/U3;)V

    .line 75486
    .local v0, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/WA;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ga;->A00()Lcom/facebook/ads/redexgen/X/CP;

    move-result-object v11

    .line 75487
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/WI;->A04(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/ZW;

    invoke-direct {v1, v3, v4}, Lcom/facebook/ads/redexgen/X/ZW;-><init>(Lcom/facebook/ads/redexgen/X/WA;Lcom/facebook/ads/redexgen/X/ge;)V

    .line 75488
    invoke-static {}, Lcom/facebook/ads/redexgen/X/gY;->A00()Lcom/facebook/ads/redexgen/X/gX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gX;->A00()Lcom/facebook/ads/redexgen/X/gY;

    move-result-object p2

    .line 75489
    move-object/from16 v13, p1

    move-object v12, v4

    move-object/from16 p1, v1

    invoke-virtual/range {v11 .. v17}, Lcom/facebook/ads/redexgen/X/CP;->A00(Lcom/facebook/ads/redexgen/X/T8;Lcom/facebook/ads/redexgen/X/TP;Lcom/facebook/ads/redexgen/X/fv;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/gZ;Lcom/facebook/ads/redexgen/X/gY;)Lcom/facebook/ads/redexgen/X/CY;

    move-result-object v0

    .line 75490
    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZR;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZR;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x3et
        0x4ct
        0x4ct
        0x42t
        0x48t
        0x47t
        -0x7t
        0x3dt
        0x3at
        0x4dt
        0x3at
        -0x7t
        0x42t
        0x47t
        0x42t
        0x4dt
        0x42t
        0x3at
        0x45t
        0x42t
        0x53t
        0x3et
        0x3dt
        0x1ct
        -0xdt
        -0x13t
        0x20t
        0x1bt
        -0xft
        0x1ct
        0xft
        0x1at
        0x19t
        0x1ct
        0x1et
        -0x3t
        0xft
        0x1dt
        0x1dt
        0x13t
        0x19t
        0x18t
        -0x12t
        0xbt
        0x1et
        0xbt
        -0xdt
        0x18t
        0x13t
        0x1et
        0x13t
        0xbt
        0x16t
        0x13t
        0x24t
        0xft
        0xet
    .end array-data
.end method

.method public static A08()V
    .locals 5

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZR;->A06(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x18

    const/4 v1, 0x6

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZR;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0x1c

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZR;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75491
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/SR;)V
    .locals 1

    .line 75492
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A1r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 75493
    :cond_0
    return-void

    .line 75494
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SP;->A00()Lcom/facebook/ads/redexgen/X/gz;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/gz;->A00(Lcom/facebook/ads/redexgen/X/SR;Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/gw;

    .line 75495
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;)V
    .locals 3

    .line 75496
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A0m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 75497
    :cond_0
    return-void

    .line 75498
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/Sn;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Sn;-><init>()V

    .line 75499
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->getBidderTokenProviderApi()Lcom/facebook/ads/redexgen/X/Rn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rn;->A00()Lcom/facebook/ads/redexgen/X/So;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sm;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/Sm;-><init>(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;Lcom/facebook/ads/redexgen/X/Sn;Lcom/facebook/ads/redexgen/X/So;)V

    .line 75500
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;)V
    .locals 0

    .line 75501
    if-nez p1, :cond_0

    .line 75502
    return-void

    .line 75503
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Ut;->A00(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;)V

    .line 75504
    return-void
.end method


# virtual methods
.method public final declared-synchronized A0C(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 2

    monitor-enter p0

    .line 75505
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A06:Lcom/facebook/ads/redexgen/X/CY;

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75506
    monitor-exit p0

    return-void

    .line 75507
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ZR;->A01(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/TP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A03:Lcom/facebook/ads/redexgen/X/TP;

    .line 75508
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ZR;->A03(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/fv;

    move-result-object v1

    .line 75509
    .local v0, "networkModule":Lcom/facebook/ads/redexgen/X/fv;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A03:Lcom/facebook/ads/redexgen/X/TP;

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/ZR;->A05(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/TP;Lcom/facebook/ads/redexgen/X/fv;)Lcom/facebook/ads/redexgen/X/CY;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A06:Lcom/facebook/ads/redexgen/X/CY;

    .line 75510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A06:Lcom/facebook/ads/redexgen/X/CY;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ZR;->A00(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;)Lcom/facebook/ads/redexgen/X/SR;

    move-result-object v0

    .line 75511
    .local v1, "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/SR;
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ZR;->A09(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/SR;)V

    .line 75512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A06:Lcom/facebook/ads/redexgen/X/CY;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ZR;->A0A(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;)V

    .line 75513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A06:Lcom/facebook/ads/redexgen/X/CY;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ZR;->A0B(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;)V

    .line 75514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A06:Lcom/facebook/ads/redexgen/X/CY;

    if-eqz v0, :cond_1

    .line 75515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A06:Lcom/facebook/ads/redexgen/X/CY;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CY;->A6d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75516
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/ge;
    :cond_1
    monitor-exit p0

    return-void

    .line 75517
    .end local v0    # "networkModule":Lcom/facebook/ads/redexgen/X/fv;
    .end local v1    # "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/SR;
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A6n(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/VA;
    .locals 1

    .line 75518
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WW;->A01(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A74(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/T9;
    .locals 1

    monitor-enter p0

    .line 75519
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A02:Lcom/facebook/ads/redexgen/X/T9;

    if-nez v0, :cond_0

    .line 75520
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zg;-><init>(Lcom/facebook/ads/redexgen/X/ZR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A02:Lcom/facebook/ads/redexgen/X/T9;

    .line 75521
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ZR;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A02:Lcom/facebook/ads/redexgen/X/T9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 75522
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/T8;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7G()Lcom/facebook/ads/redexgen/X/T1;
    .locals 1

    monitor-enter p0

    .line 75523
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:Lcom/facebook/ads/redexgen/X/T1;

    if-nez v0, :cond_0

    .line 75524
    new-instance v0, Lcom/facebook/ads/redexgen/X/gj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/gj;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:Lcom/facebook/ads/redexgen/X/T1;

    .line 75525
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ZR;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:Lcom/facebook/ads/redexgen/X/T1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 75526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7l(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/TP;
    .locals 1

    monitor-enter p0

    .line 75527
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A03:Lcom/facebook/ads/redexgen/X/TP;

    if-nez v0, :cond_0

    .line 75528
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZR;->A01(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/TP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A03:Lcom/facebook/ads/redexgen/X/TP;

    .line 75529
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ZR;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A03:Lcom/facebook/ads/redexgen/X/TP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 75530
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/T8;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7n(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 1

    monitor-enter p0

    .line 75531
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/f0;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/f0;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ZR;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/T8;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7x(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/TB;
    .locals 1

    monitor-enter p0

    .line 75532
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/72;-><init>(Lcom/facebook/ads/redexgen/X/ZR;Lcom/facebook/ads/redexgen/X/T8;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ZR;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/T8;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A8C(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Lx;
    .locals 2

    monitor-enter p0

    .line 75533
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Up;->A13(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75534
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 75535
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:Lcom/facebook/ads/redexgen/X/Lx;

    if-nez v0, :cond_1

    .line 75536
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ly;->A00()Lcom/facebook/ads/redexgen/X/kc;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bE;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/bE;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/kc;->A00(Lcom/facebook/ads/redexgen/X/Lu;)Lcom/facebook/ads/redexgen/X/kZ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:Lcom/facebook/ads/redexgen/X/Lx;

    .line 75537
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ZR;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:Lcom/facebook/ads/redexgen/X/Lx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 75538
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/T8;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A8y(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/TD;
    .locals 1

    monitor-enter p0

    .line 75539
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/ao;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/ao;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ZR;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/T8;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A8z(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/ge;
    .locals 1

    .line 75540
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T7;->A00()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    .line 75541
    .local v0, "sdkContext":Lcom/facebook/ads/redexgen/X/ge;
    if-nez v0, :cond_0

    .line 75542
    new-instance v0, Lcom/facebook/ads/redexgen/X/ge;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/ge;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/TA;)V

    .line 75543
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T7;->A01(Lcom/facebook/ads/redexgen/X/ge;)V

    .line 75544
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized A90(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/VM;
    .locals 1

    monitor-enter p0

    .line 75545
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A05:Lcom/facebook/ads/redexgen/X/VM;

    if-nez v0, :cond_0

    .line 75546
    new-instance v0, Lcom/facebook/ads/redexgen/X/XP;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/XP;-><init>(Lcom/facebook/ads/redexgen/X/ge;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A05:Lcom/facebook/ads/redexgen/X/VM;

    .line 75547
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ZR;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A05:Lcom/facebook/ads/redexgen/X/VM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 75548
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/ge;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A96()Lcom/facebook/ads/redexgen/X/U7;
    .locals 1

    monitor-enter p0

    .line 75549
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A04:Lcom/facebook/ads/redexgen/X/U7;

    if-nez v0, :cond_0

    .line 75550
    new-instance v0, Lcom/facebook/ads/redexgen/X/U7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/U7;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A04:Lcom/facebook/ads/redexgen/X/U7;

    .line 75551
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZR;->A08()V

    .line 75552
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ZR;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A04:Lcom/facebook/ads/redexgen/X/U7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 75553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic A9F()Lcom/facebook/ads/redexgen/X/TE;
    .locals 1

    .line 75554
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZR;->A04()Lcom/facebook/ads/redexgen/X/CY;

    move-result-object v0

    return-object v0
.end method
