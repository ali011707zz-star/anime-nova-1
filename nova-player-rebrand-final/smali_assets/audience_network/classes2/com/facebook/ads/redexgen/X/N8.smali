.class public final Lcom/facebook/ads/redexgen/X/N8;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A08:Lcom/facebook/ads/redexgen/X/N8;

.field public static A09:[B

.field public static final A0A:Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/N7;

.field public final A03:Lcom/facebook/ads/redexgen/X/T8;

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/util/concurrent/CountDownLatch;

.field public final A06:Ljava/util/concurrent/CountDownLatch;

.field public final A07:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1423
    invoke-static {}, Lcom/facebook/ads/redexgen/X/N8;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/N8;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/N8;->A0A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 2

    .line 52884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52885
    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A05:Ljava/util/concurrent/CountDownLatch;

    .line 52886
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A06:Ljava/util/concurrent/CountDownLatch;

    .line 52887
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    .line 52888
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/N8;->A04:Ljava/lang/String;

    .line 52889
    new-instance v0, Lcom/facebook/ads/redexgen/X/N7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/N7;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    .line 52890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A00:Ljava/lang/String;

    .line 52891
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/N8;->A07:Ljava/util/concurrent/Executor;

    .line 52892
    if-eqz p2, :cond_0

    .line 52893
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N8;->A0A()V

    .line 52894
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;
    .locals 0

    .line 52895
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    return-object p0
.end method

.method public static declared-synchronized A01(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/N8;
    .locals 5

    const-class v4, Lcom/facebook/ads/redexgen/X/N8;

    monitor-enter v4

    .line 52896
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/N8;->A08:Lcom/facebook/ads/redexgen/X/N8;

    if-nez v0, :cond_0

    .line 52897
    sget-object v3, Lcom/facebook/ads/redexgen/X/YG;->A06:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/N8;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/N8;-><init>(Lcom/facebook/ads/redexgen/X/T8;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/ads/redexgen/X/N8;->A08:Lcom/facebook/ads/redexgen/X/N8;

    .line 52898
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/N8;->A08:Lcom/facebook/ads/redexgen/X/N8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 52899
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/T8;
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/T8;
    .locals 0

    .line 52900
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/N8;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 52901
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v6

    .line 52902
    .local v0, "fileContent":Ljava/lang/String;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52903
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52904
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 52905
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 52906
    .local v2, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v0, v1

    new-array v3, v0, [B

    .line 52907
    .local v3, "data":[B
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 52908
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 52909
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v6, v1

    .line 52910
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "data":[B
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "fileContent":Ljava/lang/String;
    .end local p1    # null:Ljava/lang/String;
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52911
    .restart local v0    # "fileContent":Ljava/lang/String;
    .restart local p1    # null:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 52912
    .local v1, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    .line 52913
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A19:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 52914
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_0

    .line 52915
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 52916
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    .line 52917
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A17:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 52918
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 52919
    :goto_0
    return-object v6
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/N8;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 52920
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N8;->A05:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/N8;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 52921
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/N8;->A06:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private A07()V
    .locals 6

    .line 52922
    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xd

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/N8;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/N7;->A08(Ljava/lang/String;)V

    .line 52923
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    const/4 v2, 0x5

    const/16 v1, 0x12

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v0

    .line 52924
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/N8;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52925
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/N7;->A0A(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/ads/redexgen/X/Te; {:try_start_0 .. :try_end_0} :catch_0

    .line 52926
    :catch_0
    move-exception v2

    .line 52927
    .local v1, "e":Lcom/facebook/ads/redexgen/X/Te;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N8;->A0M()V

    .line 52928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    .line 52929
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A18:I

    .line 52930
    invoke-interface {v1, v4, v0, v2}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_0

    .line 52931
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/Te;
    :catch_1
    move-exception v3

    .line 52932
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N8;->A0M()V

    .line 52933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    .line 52934
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A1A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 52935
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 52936
    :goto_0
    return-void
.end method

.method private A08()V
    .locals 3

    .line 52937
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    monitor-enter v2

    .line 52938
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->A05()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52939
    .local v1, "adsFrequencyCappingDataList":Ljava/lang/String;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52940
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N8;->A0K()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/N8;->A0G(Ljava/lang/String;Ljava/lang/String;)V

    .line 52941
    return-void

    .line 52942
    .end local v1    # "adsFrequencyCappingDataList":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/N8;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x40t
        0x52t
        0x39t
        0x2ct
        0x5bt
        0x5et
        0x49t
        0x79t
        0x5bt
        0x4at
        0x4at
        0x53t
        0x54t
        0x5dt
        0x73t
        0x54t
        0x5ct
        0x55t
        0x14t
        0x4et
        0x42t
        0x4et
        0x48t
        0x4at
        0x5bt
        0x5bt
        0x4et
        0x4ft
        0x6at
        0x4ft
        0x58t
        0x5t
        0x5ft
        0x53t
        0x5ft
        0x42t
        0x56t
        0x41t
        0x55t
        0x51t
        0x41t
        0x4at
        0x47t
        0x5dt
        0x7bt
        0x47t
        0x45t
        0x54t
        0x54t
        0x4dt
        0x4at
        0x43t
    .end array-data
.end method

.method private final A0A()V
    .locals 2

    .line 52943
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N8;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/kD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/kD;-><init>(Lcom/facebook/ads/redexgen/X/N8;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52944
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/N8;)V
    .locals 0

    .line 52945
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N8;->A07()V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/N8;)V
    .locals 0

    .line 52946
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N8;->A08()V

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/N8;Lcom/facebook/ads/redexgen/X/Nf;Ljava/lang/String;Z)V
    .locals 0

    .line 52947
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/N8;->A0E(Lcom/facebook/ads/redexgen/X/Nf;Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized A0E(Lcom/facebook/ads/redexgen/X/Nf;Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 52948
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/Nf;->A07(Z)V

    .line 52949
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nf;->A08()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nf;->A09()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52950
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N8;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/N7;->A07(Ljava/lang/String;)V

    goto :goto_0

    .line 52951
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/N7;->A09(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52952
    :goto_0
    monitor-exit p0

    return-void

    .line 52953
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Nf;
    .end local p2    # null:Ljava/lang/String;
    .end local p3    # null:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A0F(Ljava/lang/String;)V
    .locals 2

    .line 52954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52955
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52956
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 52957
    :cond_0
    return-void
.end method

.method private final declared-synchronized A0G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 52958
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xd

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A0H(Ljava/lang/String;[B)V

    .line 52959
    const/4 v2, 0x5

    const/16 v1, 0x12

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/N8;->A0H(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52960
    monitor-exit p0

    return-void

    .line 52961
    .end local v2
    .end local v3
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N8;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A0H(Ljava/lang/String;[B)V
    .locals 5

    .line 52962
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52963
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52964
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52965
    .local v1, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 52966
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 52967
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    monitor-exit p0

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:[B
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52968
    .restart local p1    # null:Ljava/lang/String;
    .restart local p2    # null:[B
    :catch_0
    move-exception v4

    .line 52969
    .local v0, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    .line 52970
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A19:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 52971
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_0

    .line 52972
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 52973
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    .line 52974
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A17:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 52975
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 52976
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/N8;Ljava/lang/String;)Z
    .locals 0

    .line 52977
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N8;->A0J(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private A0J(Ljava/lang/String;)Z
    .locals 6

    .line 52978
    const/4 v5, 0x0

    .line 52979
    .local v0, "hasData":Z
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52980
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    .line 52981
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->A05()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/facebook/ads/redexgen/X/Nf;

    .line 52982
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "hasData":Z
    .end local p1    # null:Ljava/lang/String;
    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52983
    .restart local v0    # "hasData":Z
    .restart local p1    # null:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 52984
    .local v1, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    .line 52985
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Td;->A1A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 52986
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 52987
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return v5
.end method


# virtual methods
.method public final A0K()Ljava/lang/String;
    .locals 1

    .line 52988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A02:Lcom/facebook/ads/redexgen/X/N7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->A04()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0L()V
    .locals 3

    .line 52989
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A01:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A00:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 52990
    .end local v0
    :cond_0
    return-void

    .line 52991
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/N8;->A00:Ljava/lang/String;

    .line 52992
    .local v0, "encryptedAdId":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N8;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/kA;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/kA;-><init>(Lcom/facebook/ads/redexgen/X/N8;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52993
    return-void
.end method

.method public final declared-synchronized A0M()V
    .locals 4

    monitor-enter p0

    .line 52994
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x5

    const/16 v1, 0x12

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/N8;->A0F(Ljava/lang/String;)V

    .line 52995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xd

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/N8;->A0F(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52996
    monitor-exit p0

    return-void

    .line 52997
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0N(Ljava/lang/String;)V
    .locals 2

    .line 52998
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A01:Z

    if-nez v0, :cond_0

    .line 52999
    return-void

    .line 53000
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N8;->A00:Ljava/lang/String;

    .line 53001
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N8;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/kB;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/kB;-><init>(Lcom/facebook/ads/redexgen/X/N8;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53002
    return-void
.end method

.method public final A0O(Lorg/json/JSONObject;)V
    .locals 2

    .line 53003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A03:Lcom/facebook/ads/redexgen/X/T8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1E(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A01:Z

    .line 53004
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/N8;->A01:Z

    if-nez v0, :cond_0

    .line 53005
    return-void

    .line 53006
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N8;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/kC;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/kC;-><init>(Lcom/facebook/ads/redexgen/X/N8;Lorg/json/JSONObject;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53007
    return-void
.end method
