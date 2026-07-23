.class public final Lcom/facebook/ads/redexgen/X/B6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/B7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaCodecPoolOptimized"
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:Z

.field public final A01:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/ads/redexgen/X/B4;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/B7;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/B6;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/B7;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29834
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A00:Z

    .line 29836
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/B6;ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/jI;
        }
    .end annotation

    .line 29837
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/B6;->A02(ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/B6;ZLjava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29838
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/B6;->A03(ZLjava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;

    move-result-object p0

    return-object p0
.end method

.method private A02(ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/jI;
        }
    .end annotation

    .line 29839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/B7;->A0D(Lcom/facebook/ads/redexgen/X/B7;ZLcom/facebook/ads/redexgen/X/jQ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29840
    invoke-static {p4, p2}, Lcom/facebook/ads/redexgen/X/B7;->A0H(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/jQ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    monitor-enter v1

    .line 29842
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 29843
    .local v1, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    monitor-exit v1

    .line 29844
    if-eqz v3, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29845
    monitor-enter v3

    .line 29846
    :try_start_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29847
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    .line 29848
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 29849
    .local v0, "codecIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/B0;

    .line 29850
    .local v2, "ret":Lcom/facebook/ads/redexgen/X/B0;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 29851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B7;->A04(Lcom/facebook/ads/redexgen/X/B7;)Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p1, p4, p3, v0}, Lcom/facebook/ads/redexgen/X/jM;->A0A(ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/jL;I)V

    .line 29852
    monitor-exit v3

    return-object v2

    .line 29853
    .end local v0    # "codecIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    .end local v2    # "ret":Lcom/facebook/ads/redexgen/X/B0;
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 29854
    .end local v1    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 29855
    :cond_1
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    .line 29856
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B7;->A04(Lcom/facebook/ads/redexgen/X/B7;)Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p3}, Lcom/facebook/ads/redexgen/X/jM;->A05(ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/jL;)Lcom/facebook/ads/redexgen/X/jJ;

    move-result-object v3

    .line 29857
    .local v0, "creatingEvent":Lcom/facebook/ads/redexgen/X/jJ;
    invoke-direct {p0, p1, p4}, Lcom/facebook/ads/redexgen/X/B6;->A03(ZLjava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;

    move-result-object v2

    .line 29858
    .local v1, "mediaCodec":Lcom/facebook/ads/redexgen/X/B0;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B7;->A04(Lcom/facebook/ads/redexgen/X/B7;)Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/jM;->A06(Lcom/facebook/ads/redexgen/X/jJ;I)V

    .line 29859
    return-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 29860
    .end local v0    # "creatingEvent":Lcom/facebook/ads/redexgen/X/jJ;
    .end local v1    # "mediaCodec":Lcom/facebook/ads/redexgen/X/B0;
    :catch_0
    move-exception v1

    .line 29861
    .local v0, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/facebook/ads/redexgen/X/jI;

    invoke-direct {v0, p4, v1}, Lcom/facebook/ads/redexgen/X/jI;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private A03(ZLjava/lang/String;)Lcom/facebook/ads/redexgen/X/B0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29862
    const/16 v2, 0x96

    const/16 v1, 0x29

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/B7;->A0F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29863
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 29864
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 29865
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B0;

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29866
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 29867
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v4, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 29868
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 29869
    const/16 v2, 0x2b

    const/16 v1, 0x17

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29870
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/o6;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/o6;-><init>(Landroid/media/MediaCodec;)V

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/B6;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x34

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xbf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/B6;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x59t
        -0x26t
        -0x3bt
        -0x39t
        -0x2et
        -0x2at
        -0x35t
        -0x2ft
        -0x30t
        -0x7et
        -0x27t
        -0x36t
        -0x39t
        -0x30t
        -0x7et
        -0x2at
        -0x2ct
        -0x25t
        -0x35t
        -0x30t
        -0x37t
        -0x7et
        -0x2at
        -0x2ft
        -0x7et
        -0x35t
        -0x30t
        -0x2bt
        -0x2at
        -0x3dt
        -0x30t
        -0x2at
        -0x35t
        -0x3dt
        -0x2at
        -0x39t
        -0x7et
        -0x79t
        -0x2bt
        -0x64t
        -0x7et
        -0x79t
        -0x2bt
        -0x48t
        -0x30t
        -0x31t
        -0x2ct
        -0x34t
        -0x52t
        -0x26t
        -0x31t
        -0x30t
        -0x32t
        -0x45t
        -0x26t
        -0x26t
        -0x29t
        -0x46t
        -0x25t
        -0x21t
        -0x2ct
        -0x28t
        -0x2ct
        -0x1bt
        -0x30t
        -0x31t
        -0x3bt
        -0x2et
        -0x2et
        -0x31t
        -0x2et
        -0x73t
        -0x29t
        -0x38t
        -0x37t
        -0x34t
        -0x3bt
        -0x73t
        -0x2et
        -0x3bt
        -0x34t
        -0x3bt
        -0x3ft
        -0x2dt
        -0x3bt
        -0x73t
        -0x3dt
        -0x31t
        -0x3ct
        -0x3bt
        -0x3dt
        -0x73t
        -0x3at
        -0x2et
        -0x31t
        -0x33t
        -0x73t
        -0x2dt
        -0x3bt
        -0x2ct
        -0x73t
        -0x3at
        -0x37t
        -0x32t
        -0x3ft
        -0x34t
        -0x34t
        -0x27t
        -0x66t
        -0x80t
        -0x7bt
        -0x2dt
        -0x28t
        -0x1bt
        -0x1bt
        -0x1et
        -0x1bt
        -0x60t
        -0x16t
        -0x25t
        -0x24t
        -0x21t
        -0x28t
        -0x60t
        -0x1bt
        -0x28t
        -0x21t
        -0x28t
        -0x2ct
        -0x1at
        -0x28t
        -0x60t
        -0x2at
        -0x1et
        -0x29t
        -0x28t
        -0x2at
        -0x60t
        -0x27t
        -0x1bt
        -0x1et
        -0x20t
        -0x60t
        -0x1at
        -0x28t
        -0x19t
        -0x53t
        -0x6dt
        -0x68t
        -0x1at
        -0x22t
        -0xft
        -0x18t
        -0x17t
        -0x1bt
        -0x26t
        -0xet
        -0x22t
        -0x15t
        -0x55t
        -0x59t
        -0x26t
        -0x11t
        -0x56t
        -0x59t
        -0x14t
        -0x15t
        -0x24t
        -0x59t
        -0x43t
        -0x26t
        -0x11t
        -0x56t
        -0x23t
        -0x3at
        -0x22t
        -0x23t
        -0x1et
        -0x26t
        -0x44t
        -0x18t
        -0x23t
        -0x22t
        -0x24t
        -0x46t
        -0x23t
        -0x26t
        -0x17t
        -0x13t
        -0x22t
        -0x15t
    .end array-data
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/B6;ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V
    .locals 0

    .line 29871
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/B6;->A0A(ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V

    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/jL;)V
    .locals 9

    .line 29872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/B4;

    .line 29873
    .local v1, "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    const/4 v7, 0x0

    const/4 v5, 0x1

    :try_start_0
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/B4;->A05:Z

    if-eqz v0, :cond_0

    .line 29874
    const-wide/16 v2, -0x1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/B7;->A00(Lcom/facebook/ads/redexgen/X/B7;J)J

    .line 29875
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/B4;->A00:Lcom/facebook/ads/redexgen/X/B0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/B0;->reset()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 29876
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    goto :goto_1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 29877
    .local v6, "e":Ljava/lang/IllegalStateException;
    :catch_0
    :try_start_3
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/B4;->A02:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/B4;->A00:Lcom/facebook/ads/redexgen/X/B0;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A09(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29878
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    :goto_1
    invoke-static {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/B7;->A00(Lcom/facebook/ads/redexgen/X/B7;J)J

    .line 29879
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/B4;->A03:Z

    if-eqz v0, :cond_1

    .line 29880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 29881
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/B4;->A02:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 29882
    .local v5, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    monitor-exit v3

    .line 29883
    if-eqz v2, :cond_1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 29884
    :try_start_6
    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 29885
    :try_start_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/B4;->A00:Lcom/facebook/ads/redexgen/X/B0;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29886
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    .line 29887
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/jL;
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 29888
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v1
    .end local p1
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 29889
    :catchall_2
    move-exception v1

    .restart local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/jL;
    :try_start_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/B7;->A00(Lcom/facebook/ads/redexgen/X/B7;J)J

    .line 29890
    .end local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/jL;
    throw v1

    .line 29891
    .restart local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/jL;
    :cond_0
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/B4;->A01:Lcom/facebook/ads/redexgen/X/jQ;

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/B4;->A04:Z

    .line 29892
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/B4;->A00:Lcom/facebook/ads/redexgen/X/B0;

    .line 29893
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A08(Lcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/Boolean;Lcom/facebook/ads/redexgen/X/B0;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 29894
    :cond_1
    :goto_2
    :try_start_c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 29895
    :try_start_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 29896
    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .end local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/jL;
    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 29897
    .restart local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/jL;
    :catch_1
    move-exception v3

    .line 29898
    .local v4, "e":Ljava/lang/Exception;
    const/16 v2, 0x2b

    const/16 v1, 0x17

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x42

    const/16 v1, 0x2e

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v2

    .line 29899
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v7

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 29900
    :catch_2
    move-exception v6

    .line 29901
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_f
    const/16 v2, 0x2b

    const/16 v1, 0x17

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x70

    const/16 v2, 0x26

    const/16 v0, 0x3f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 29902
    .end local v4    # "e":Ljava/lang/Exception;
    :try_start_10
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 29903
    :try_start_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 29904
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .end local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/jL;
    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 29905
    .restart local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/jL;
    :catch_3
    move-exception v3

    .line 29906
    .restart local v4    # "e":Ljava/lang/Exception;
    const/16 v2, 0x2b

    const/16 v1, 0x17

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x42

    const/16 v1, 0x2e

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v2

    .line 29907
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v7

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29908
    :goto_3
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29909
    .end local v4    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 29910
    :catchall_5
    move-exception v6

    .line 29911
    .restart local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    :try_start_13
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    .line 29912
    :try_start_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 29913
    monitor-exit v1

    goto :goto_4

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .end local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/jL;
    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    .line 29914
    .restart local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/jL;
    :catch_4
    move-exception v4

    .line 29915
    .restart local v4    # "e":Ljava/lang/Exception;
    const/16 v2, 0x2b

    const/16 v1, 0x17

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x42

    const/16 v1, 0x2e

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B6;->A04(III)Ljava/lang/String;

    move-result-object v2

    .line 29916
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v7

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29917
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29918
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_4
    throw v6

    .line 29919
    .end local v1    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    :cond_2
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/Boolean;Lcom/facebook/ads/redexgen/X/B0;)V
    .locals 3

    .line 29920
    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/jQ;->A0R:Z

    if-eqz v0, :cond_0

    .line 29921
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/jQ;->A0Q:Z

    if-nez v0, :cond_1

    .line 29922
    :cond_0
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/B0;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29923
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B7;->A04(Lcom/facebook/ads/redexgen/X/B7;)Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/jM;->A08(Lcom/facebook/ads/redexgen/X/jL;I)V

    .line 29924
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/B0;->AHb()V

    .line 29925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B7;->A04(Lcom/facebook/ads/redexgen/X/B7;)Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/jM;->A07(Lcom/facebook/ads/redexgen/X/jL;I)V

    .line 29926
    return-void

    .line 29927
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B7;->A04(Lcom/facebook/ads/redexgen/X/B7;)Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/jM;->A08(Lcom/facebook/ads/redexgen/X/jL;I)V

    .line 29928
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/B0;->AHb()V

    .line 29929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B7;->A04(Lcom/facebook/ads/redexgen/X/B7;)Lcom/facebook/ads/redexgen/X/jM;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/jM;->A07(Lcom/facebook/ads/redexgen/X/jL;I)V

    .line 29930
    throw v2
.end method

.method private A09(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V
    .locals 3

    .line 29931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    monitor-enter v1

    .line 29932
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 29933
    .local v1, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    monitor-exit v1

    .line 29934
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29935
    monitor-enter v2

    .line 29936
    :try_start_1
    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29937
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    .line 29938
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 29939
    :cond_1
    :goto_0
    return-void

    .line 29940
    .end local v1    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private A0A(ZLcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V
    .locals 23

    .line 29941
    move-object/from16 v2, p0

    const/4 v12, 0x0

    .line 29942
    .local v2, "appendCodecSet":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    move-object/from16 v15, p2

    move/from16 v11, p1

    invoke-static {v0, v11, v15}, Lcom/facebook/ads/redexgen/X/B7;->A0D(Lcom/facebook/ads/redexgen/X/B7;ZLcom/facebook/ads/redexgen/X/jQ;)Z

    move-result v0

    move-object/from16 v14, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    if-eqz v0, :cond_b

    .line 29943
    invoke-static {v5, v15}, Lcom/facebook/ads/redexgen/X/B7;->A0H(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/jQ;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29944
    iget-boolean v0, v15, Lcom/facebook/ads/redexgen/X/jQ;->A0L:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/B6;->A00:Z

    if-nez v0, :cond_0

    .line 29945
    iput-boolean v7, v2, Lcom/facebook/ads/redexgen/X/B6;->A00:Z

    .line 29946
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v16

    .line 29947
    .local v0, "scheduledExecutorService":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v3, Lcom/facebook/ads/redexgen/X/B5;

    invoke-direct {v3, v2, v6}, Lcom/facebook/ads/redexgen/X/B5;-><init>(Lcom/facebook/ads/redexgen/X/B6;Lcom/facebook/ads/redexgen/X/jL;)V

    iget v1, v15, Lcom/facebook/ads/redexgen/X/jQ;->A08:I

    .line 29948
    const/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    sget-object v22, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29949
    const-wide/16 v18, 0x5

    move-wide/from16 v20, v0

    move-object/from16 v17, v3

    invoke-interface/range {v16 .. v22}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 29950
    .end local v0    # "scheduledExecutorService":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_0
    const/4 v3, 0x1

    .line 29951
    .local v4, "release":Z
    const/4 v8, 0x0

    .line 29952
    .local v5, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    iget v0, v15, Lcom/facebook/ads/redexgen/X/jQ;->A07:I

    if-ge v1, v0, :cond_6

    .line 29953
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    monitor-enter v1

    .line 29954
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 29955
    if-nez v8, :cond_1

    .line 29956
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/B7;->A07(Lcom/facebook/ads/redexgen/X/B7;)Ljava/util/Set;

    move-result-object v8

    .line 29957
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/B7;->A04:Ljava/util/Map;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29958
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29959
    monitor-enter v8

    .line 29960
    :try_start_1
    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29961
    const/4 v3, 0x0

    .end local v4    # "release":Z
    .local v0, "release":Z
    goto :goto_0

    .line 29962
    .end local v0    # "release":Z
    .restart local v4    # "release":Z
    :cond_2
    if-eqz v11, :cond_3

    iget-boolean v0, v15, Lcom/facebook/ads/redexgen/X/jQ;->A0N:Z

    if-nez v0, :cond_4

    :cond_3
    if-nez v11, :cond_5

    iget-boolean v0, v15, Lcom/facebook/ads/redexgen/X/jQ;->A0M:Z

    if-eqz v0, :cond_5

    .line 29963
    :cond_4
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v1

    iget v0, v15, Lcom/facebook/ads/redexgen/X/jQ;->A06:I

    if-ge v1, v0, :cond_5

    .line 29964
    const/4 v12, 0x1

    .line 29965
    .end local v2    # "appendCodecSet":Z
    .local v0, "appendCodecSet":Z
    const/4 v3, 0x0

    .line 29966
    .end local v0    # "appendCodecSet":Z
    .restart local v2    # "appendCodecSet":Z
    :cond_5
    :goto_0
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 29967
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 29968
    .end local v2    # "appendCodecSet":Z
    .end local v4    # "release":Z
    .end local v5    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    .local v8, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    .local v14, "appendCodecSet":Z
    .local v15, "release":Z
    :cond_6
    :goto_1
    if-nez v3, :cond_b

    .line 29969
    const-wide/16 v0, -0x1

    :try_start_3
    iget-boolean v3, v15, Lcom/facebook/ads/redexgen/X/jQ;->A0L:Z

    if-nez v3, :cond_7
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 29970
    :try_start_4
    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Lcom/facebook/ads/redexgen/X/B7;->A00(Lcom/facebook/ads/redexgen/X/B7;J)J

    .line 29971
    invoke-interface {v14}, Lcom/facebook/ads/redexgen/X/B0;->reset()V

    .line 29972
    if-eqz v12, :cond_8

    if-eqz v8, :cond_8

    .line 29973
    monitor-enter v8
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 29974
    :try_start_5
    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29975
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    iget v3, v4, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    add-int/2addr v3, v7

    iput v3, v4, Lcom/facebook/ads/redexgen/X/B7;->A00:I

    .line 29976
    monitor-exit v8

    goto :goto_2

    :catchall_2
    move-exception v3

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v8    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    .end local v14    # "appendCodecSet":Z
    .end local v15    # "release":Z
    .end local v22
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/B6;
    .end local p1    # null:Z
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/jQ;
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/jL;
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 29977
    :catchall_3
    move-exception v4

    goto :goto_6

    .line 29978
    :cond_7
    :try_start_7
    new-instance v7, Lcom/facebook/ads/redexgen/X/B4;

    const/4 v13, 0x1

    move-object v8, v14

    move-object v9, v15

    move-object v10, v5
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .end local v8
    .local v17, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    :try_start_8
    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/B4;-><init>(Lcom/facebook/ads/redexgen/X/B0;Lcom/facebook/ads/redexgen/X/jQ;Ljava/lang/String;ZZZ)V

    .line 29979
    .local v2, "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v4
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 29980
    :try_start_9
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 29981
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 29982
    .end local v2    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    :cond_8
    :goto_2
    iget-boolean v0, v15, Lcom/facebook/ads/redexgen/X/jQ;->A0L:Z

    if-nez v0, :cond_9

    .line 29983
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    const-wide/16 v0, -0x1

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/B7;->A00(Lcom/facebook/ads/redexgen/X/B7;J)J

    .line 29984
    :cond_9
    return-void

    .line 29985
    .restart local v2    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    :catchall_4
    move-exception v3

    const-wide/16 v0, -0x1

    :goto_3
    :try_start_a
    monitor-exit v4

    goto :goto_4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .restart local v2    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    :catchall_5
    move-exception v3

    goto :goto_3

    .end local v14
    .end local v15
    .end local v17    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    .end local v22
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_4
    :try_start_b
    throw v3
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 29986
    :catch_0
    const-wide/16 v0, -0x1

    goto :goto_5

    .line 29987
    .end local v17
    .restart local v8    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    :catchall_6
    move-exception v4

    .end local v8    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    .restart local v17    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    goto :goto_6

    .line 29988
    .end local v8
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v17    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    :catch_1
    :goto_5
    :try_start_c
    invoke-direct {v2, v5, v14}, Lcom/facebook/ads/redexgen/X/B6;->A09(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/B0;)V

    goto :goto_7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 29989
    :catchall_7
    move-exception v4

    goto :goto_6

    .end local v2    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    :catchall_8
    move-exception v4

    const-wide/16 v0, -0x1

    :goto_6
    iget-boolean v3, v15, Lcom/facebook/ads/redexgen/X/jQ;->A0L:Z

    if-nez v3, :cond_a

    .line 29990
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/B7;->A00(Lcom/facebook/ads/redexgen/X/B7;J)J

    .line 29991
    :cond_a
    throw v4

    .line 29992
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_7
    iget-boolean v3, v15, Lcom/facebook/ads/redexgen/X/jQ;->A0L:Z

    if-nez v3, :cond_b

    .line 29993
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/B6;->A02:Lcom/facebook/ads/redexgen/X/B7;

    invoke-static {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/B7;->A00(Lcom/facebook/ads/redexgen/X/B7;J)J

    .line 29994
    .end local v2
    .restart local v14    # "appendCodecSet":Z
    :cond_b
    iget-boolean v0, v15, Lcom/facebook/ads/redexgen/X/jQ;->A0L:Z

    if-nez v0, :cond_c

    .line 29995
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v15, v6, v0, v14}, Lcom/facebook/ads/redexgen/X/B6;->A08(Lcom/facebook/ads/redexgen/X/jQ;Lcom/facebook/ads/redexgen/X/jL;Ljava/lang/Boolean;Lcom/facebook/ads/redexgen/X/B0;)V

    .line 29996
    .end local v2
    :goto_8
    return-void

    .line 29997
    :cond_c
    new-instance v13, Lcom/facebook/ads/redexgen/X/B4;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v11

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/B4;-><init>(Lcom/facebook/ads/redexgen/X/B0;Lcom/facebook/ads/redexgen/X/jQ;Ljava/lang/String;ZZZ)V

    .line 29998
    .local v2, "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    .line 29999
    :try_start_d
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/B6;->A01:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 30000
    monitor-exit v1

    goto :goto_8

    .restart local v2    # "codecMetadata":Lcom/facebook/ads/redexgen/X/B4;
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    throw v0
.end method


# virtual methods
.method public final synthetic A0B(Lcom/facebook/ads/redexgen/X/jL;)V
    .locals 0

    .line 30001
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/B6;->A07(Lcom/facebook/ads/redexgen/X/jL;)V

    return-void
.end method
