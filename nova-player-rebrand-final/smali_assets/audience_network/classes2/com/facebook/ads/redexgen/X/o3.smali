.class public final Lcom/facebook/ads/redexgen/X/o3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CJ;


# static fields
.field public static A02:[B

.field public static final A03:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/facebook/ads/redexgen/X/CH;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/kT;

.field public final A01:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3316
    invoke-static {}, Lcom/facebook/ads/redexgen/X/o3;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/o3;->A00()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/o3;->A03:Landroid/util/SparseArray;

    .line 3317
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/kT;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 101952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101953
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kT;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/o3;->A00:Lcom/facebook/ads/redexgen/X/kT;

    .line 101954
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/o3;->A01:Ljava/util/concurrent/Executor;

    .line 101955
    return-void
.end method

.method public static A00()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/facebook/ads/redexgen/X/CH;",
            ">;>;"
        }
    .end annotation

    .line 101956
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 101957
    .local v0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/reflect/Constructor<+Lcom/facebook/ads/androidx/media3/exoplayer/offline/Downloader;>;>;"
    :try_start_0
    const/16 v2, 0x82

    const/16 v1, 0x4d

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o3;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 101958
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101959
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/o3;->A03(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 101960
    const/4 v0, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101961
    :catch_0
    :try_start_1
    const/16 v2, 0xcf

    const/16 v1, 0x4b

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o3;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 101962
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101963
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/o3;->A03(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 101964
    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101965
    :catch_1
    :try_start_2
    const/16 v2, 0x11a

    const/16 v1, 0x56

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o3;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 101966
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101967
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/o3;->A03(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 101968
    const/4 v0, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101969
    :catch_2
    return-object v3
.end method

.method private A01(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;I)Lcom/facebook/ads/redexgen/X/CH;
    .locals 6

    .line 101970
    sget-object v0, Lcom/facebook/ads/redexgen/X/o3;->A03:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 101971
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/facebook/ads/androidx/media3/exoplayer/offline/Downloader;>;"
    if-eqz v5, :cond_0

    .line 101972
    new-instance v1, Lcom/facebook/ads/redexgen/X/2u;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2u;-><init>()V

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A00:Landroid/net/Uri;

    .line 101973
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/2u;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A04:Ljava/util/List;

    .line 101974
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A04(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2u;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A01:Ljava/lang/String;

    .line 101975
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2u;

    move-result-object v0

    .line 101976
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2u;->A05()Lcom/facebook/ads/redexgen/X/q7;

    move-result-object v4

    .line 101977
    .local v1, "mediaItem":Lcom/facebook/ads/redexgen/X/q7;
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/o3;->A00:Lcom/facebook/ads/redexgen/X/kT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/o3;->A01:Ljava/util/concurrent/Executor;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v1, v0

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CH;

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101978
    :catch_0
    move-exception v4

    .line 101979
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1e

    const/16 v1, 0x32

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o3;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 101980
    .end local v1    # "mediaItem":Lcom/facebook/ads/redexgen/X/q7;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x50

    const/16 v1, 0x20

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o3;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/o3;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x75

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/facebook/ads/redexgen/X/CH;",
            ">;"
        }
    .end annotation

    .line 101981
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-class v0, Lcom/facebook/ads/redexgen/X/CH;

    .line 101982
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Class;

    const-class v1, Lcom/facebook/ads/redexgen/X/q7;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-class v1, Lcom/facebook/ads/redexgen/X/kT;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-class v1, Ljava/util/concurrent/Executor;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 101983
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 101984
    return-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101985
    :catch_0
    move-exception p0

    .line 101986
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o3;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x170

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/o3;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x42t
        -0x17t
        -0xft
        -0x18t
        -0x1at
        -0x17t
        -0x25t
        -0x22t
        -0x21t
        -0x14t
        -0x66t
        -0x23t
        -0x17t
        -0x18t
        -0x13t
        -0x12t
        -0x14t
        -0x11t
        -0x23t
        -0x12t
        -0x17t
        -0x14t
        -0x66t
        -0x19t
        -0x1dt
        -0x13t
        -0x13t
        -0x1dt
        -0x18t
        -0x1ft
        -0xat
        0x11t
        0x19t
        0x1ct
        0x15t
        0x14t
        -0x30t
        0x24t
        0x1ft
        -0x30t
        0x19t
        0x1et
        0x23t
        0x24t
        0x11t
        0x1et
        0x24t
        0x19t
        0x11t
        0x24t
        0x15t
        -0x30t
        0x14t
        0x1ft
        0x27t
        0x1et
        0x1ct
        0x1ft
        0x11t
        0x14t
        0x15t
        0x22t
        -0x30t
        0x16t
        0x1ft
        0x22t
        -0x30t
        0x13t
        0x1ft
        0x1et
        0x24t
        0x15t
        0x1et
        0x24t
        -0x30t
        0x24t
        0x29t
        0x20t
        0x15t
        -0x30t
        0x22t
        0x44t
        0x39t
        0x4at
        0x41t
        0x3at
        -0xbt
        0x42t
        0x3et
        0x48t
        0x48t
        0x3et
        0x43t
        0x3ct
        -0xbt
        0x3bt
        0x44t
        0x47t
        -0xbt
        0x38t
        0x44t
        0x43t
        0x49t
        0x3at
        0x43t
        0x49t
        -0xbt
        0x49t
        0x4et
        0x45t
        0x3at
        -0xbt
        -0x2t
        0x17t
        0x1ct
        0x1et
        0x19t
        0x19t
        0x18t
        0x1bt
        0x1dt
        0xet
        0xdt
        -0x37t
        0x1dt
        0x22t
        0x19t
        0xet
        -0x1dt
        -0x37t
        0x2et
        0x3at
        0x38t
        -0x7t
        0x31t
        0x2ct
        0x2et
        0x30t
        0x2dt
        0x3at
        0x3at
        0x36t
        -0x7t
        0x2ct
        0x2ft
        0x3et
        -0x7t
        0x2ct
        0x39t
        0x2ft
        0x3dt
        0x3at
        0x34t
        0x2ft
        0x43t
        -0x7t
        0x38t
        0x30t
        0x2ft
        0x34t
        0x2ct
        -0x2t
        -0x7t
        0x30t
        0x43t
        0x3at
        0x3bt
        0x37t
        0x2ct
        0x44t
        0x30t
        0x3dt
        -0x7t
        0x3et
        0x3at
        0x40t
        0x3dt
        0x2et
        0x30t
        -0x7t
        0x2ft
        0x2ct
        0x3et
        0x33t
        -0x7t
        0x3at
        0x31t
        0x31t
        0x37t
        0x34t
        0x39t
        0x30t
        -0x7t
        0xft
        0x2ct
        0x3et
        0x33t
        0xft
        0x3at
        0x42t
        0x39t
        0x37t
        0x3at
        0x2ct
        0x2ft
        0x30t
        0x3dt
        0x28t
        0x34t
        0x32t
        -0xdt
        0x2bt
        0x26t
        0x28t
        0x2at
        0x27t
        0x34t
        0x34t
        0x30t
        -0xdt
        0x26t
        0x29t
        0x38t
        -0xdt
        0x26t
        0x33t
        0x29t
        0x37t
        0x34t
        0x2et
        0x29t
        0x3dt
        -0xdt
        0x32t
        0x2at
        0x29t
        0x2et
        0x26t
        -0x8t
        -0xdt
        0x2at
        0x3dt
        0x34t
        0x35t
        0x31t
        0x26t
        0x3et
        0x2at
        0x37t
        -0xdt
        0x38t
        0x34t
        0x3at
        0x37t
        0x28t
        0x2at
        -0xdt
        0x2dt
        0x31t
        0x38t
        -0xdt
        0x34t
        0x2bt
        0x2bt
        0x31t
        0x2et
        0x33t
        0x2at
        -0xdt
        0xdt
        0x31t
        0x38t
        0x9t
        0x34t
        0x3ct
        0x33t
        0x31t
        0x34t
        0x26t
        0x29t
        0x2at
        0x37t
        0x57t
        0x63t
        0x61t
        0x22t
        0x5at
        0x55t
        0x57t
        0x59t
        0x56t
        0x63t
        0x63t
        0x5ft
        0x22t
        0x55t
        0x58t
        0x67t
        0x22t
        0x55t
        0x62t
        0x58t
        0x66t
        0x63t
        0x5dt
        0x58t
        0x6ct
        0x22t
        0x61t
        0x59t
        0x58t
        0x5dt
        0x55t
        0x27t
        0x22t
        0x59t
        0x6ct
        0x63t
        0x64t
        0x60t
        0x55t
        0x6dt
        0x59t
        0x66t
        0x22t
        0x67t
        0x63t
        0x69t
        0x66t
        0x57t
        0x59t
        0x22t
        0x67t
        0x61t
        0x63t
        0x63t
        0x68t
        0x5ct
        0x67t
        0x68t
        0x66t
        0x59t
        0x55t
        0x61t
        0x5dt
        0x62t
        0x5bt
        0x22t
        0x63t
        0x5at
        0x5at
        0x60t
        0x5dt
        0x62t
        0x59t
        0x22t
        0x47t
        0x67t
        0x38t
        0x63t
        0x6bt
        0x62t
        0x60t
        0x63t
        0x55t
        0x58t
        0x59t
        0x66t
    .end array-data
.end method


# virtual methods
.method public final A5M(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;)Lcom/facebook/ads/redexgen/X/CH;
    .locals 5

    .line 101987
    iget-object v1, p1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A00:Landroid/net/Uri;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A03:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0B(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    .line 101988
    .local v0, "contentType":I
    packed-switch v4, :pswitch_data_0

    .line 101989
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x70

    const/16 v1, 0x12

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/o3;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101990
    :pswitch_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/2u;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2u;-><init>()V

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A00:Landroid/net/Uri;

    .line 101991
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/2u;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;->A01:Ljava/lang/String;

    .line 101992
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2u;

    move-result-object v0

    .line 101993
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2u;->A05()Lcom/facebook/ads/redexgen/X/q7;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/o3;->A00:Lcom/facebook/ads/redexgen/X/kT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/o3;->A01:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/nx;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/nx;-><init>(Lcom/facebook/ads/redexgen/X/q7;Lcom/facebook/ads/redexgen/X/kT;Ljava/util/concurrent/Executor;)V

    .line 101994
    return-object v0

    .line 101995
    :pswitch_2
    invoke-direct {p0, p1, v4}, Lcom/facebook/ads/redexgen/X/o3;->A01(Lcom/facebook/ads/androidx/media3/exoplayer/offline/DownloadRequest;I)Lcom/facebook/ads/redexgen/X/CH;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
