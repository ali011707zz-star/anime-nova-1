.class public final Lcom/facebook/ads/redexgen/X/Su;
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
    name = "FileDownloaderCallable"
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
.field public final A00:Lcom/facebook/ads/redexgen/X/St;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Sx;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Su;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V
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

    .line 64412
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64413
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    .line 64414
    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 12

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return-object v4

    :cond_0
    move-object v3, p0

    .line 64415
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Su;
    const v0, 0xf00d

    :try_start_0
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 64416
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/St;->A04:Z

    if-eqz v0, :cond_2

    .line 64417
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A01(III)Ljava/lang/String;

    move-result-object v9

    .line 64418
    .local v7, "creativeType":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/LX;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/St;->A08:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/St;->A07:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/St;->A06:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/St;->A02:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    iget-boolean v11, v0, Lcom/facebook/ads/redexgen/X/St;->A05:Z

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/LX;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64419
    .local v2, "cacheModuleFileData":Lcom/facebook/ads/redexgen/X/LX;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/St;->A03:Ljava/lang/String;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/LX;->A04:Ljava/lang/String;

    .line 64420
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/St;->A01:Ljava/lang/Integer;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/LX;->A02:Ljava/lang/Integer;

    .line 64421
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/St;->A04:Z

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/LX;->A05:Z

    .line 64422
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T0;->A06(Lcom/facebook/ads/redexgen/X/T8;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64423
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sx;->A0B()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A00:Lcom/facebook/ads/redexgen/X/St;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/St;->A08:Ljava/lang/String;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64424
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Su;->A01:Lcom/facebook/ads/redexgen/X/Sx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A07(Lcom/facebook/ads/redexgen/X/Sx;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sx;->A02(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/LR;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/LR;->AIg(Lcom/facebook/ads/redexgen/X/LX;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 64425
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Su;
    :cond_2
    const/4 v2, 0x6

    const/4 v1, 0x5

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Su;->A01(III)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 64426
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "cacheModuleFileData":Lcom/facebook/ads/redexgen/X/LX;
    .end local v7    # "creativeType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v4
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Su;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x29

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

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Su;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x22t
        -0x2et
        -0x1dt
        -0x24t
        -0x1at
        -0x1ft
        -0x19t
        -0x26t
        -0x2bt
        -0x2at
        -0x20t
    .end array-data
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

    .line 64427
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Su;
    :try_start_0
    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Su;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/Su;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
