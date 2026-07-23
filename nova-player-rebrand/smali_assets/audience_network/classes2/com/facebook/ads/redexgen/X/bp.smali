.class public final Lcom/facebook/ads/redexgen/X/bp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TO;


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2654
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "N9cBQFuEXnMHuOhuUHmrN1NbOn9dUH6l"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "t4327HI34dmOHxHgJ5Xqb1TMdgfhViRu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "W9WF83HwW2JJuxhyMa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tDcIRbsxuTPzi4rfI85ylCxCUvgLsm3F"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qO4Uq7mg6XVWSCx2fb2lLTULAXcH9HmN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DdhWBjv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pI4BrYZb6jEfbOR6K30piOXwM4lgsdMH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sO2hGyIlN5zgciGhFXZ1rYz4NH0oO9ru"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bp;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bp;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bp;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x71

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 4

    const/16 v0, 0x5f

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/bp;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/bp;->A01:[Ljava/lang/String;

    const-string v1, "00h"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/bp;->A00:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x46t
        -0x49t
        -0x36t
        -0x49t
        -0x2bt
        -0x3at
        -0x38t
        -0x3bt
        -0x47t
        -0x45t
        -0x37t
        -0x37t
        -0x41t
        -0x3ct
        -0x43t
        -0x2bt
        -0x3bt
        -0x3at
        -0x36t
        -0x41t
        -0x3bt
        -0x3ct
        -0x37t
        -0x2bt
        -0x47t
        -0x3bt
        -0x35t
        -0x3ct
        -0x36t
        -0x38t
        -0x31t
        -0x2bt
        -0x3ft
        -0x45t
        -0x31t
        0x30t
        0x2dt
        0x40t
        0x2dt
        0x4bt
        0x3ct
        0x3et
        0x3bt
        0x2ft
        0x31t
        0x3ft
        0x3ft
        0x35t
        0x3at
        0x33t
        0x4bt
        0x3bt
        0x3ct
        0x40t
        0x35t
        0x3bt
        0x3at
        0x3ft
        0x4bt
        0x37t
        0x31t
        0x45t
        0x5t
        0x2t
        0x15t
        0x2t
        0x20t
        0x11t
        0x13t
        0x10t
        0x4t
        0x6t
        0x14t
        0x14t
        0xat
        0xft
        0x8t
        0x20t
        0x10t
        0x11t
        0x15t
        0xat
        0x10t
        0xft
        0x14t
        0x20t
        0x14t
        0x15t
        0x2t
        0x15t
        0x6t
        0x20t
        0xct
        0x6t
        0x1at
    .end array-data
.end method


# virtual methods
.method public final ACV(Lcom/facebook/ads/redexgen/X/TN;)V
    .locals 7

    .line 78490
    sget-object v1, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sDataProcessingOptionsUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78491
    return-void

    .line 78492
    :cond_0
    sget-object v6, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    monitor-enter v6

    .line 78493
    :try_start_0
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const/16 v2, 0x23

    const/16 v1, 0x1b

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 78494
    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 78495
    .local v1, "options":[Ljava/lang/String;
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const/4 v2, 0x0

    const/16 v1, 0x23

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 78496
    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 78497
    .local v2, "country":Ljava/lang/Integer;
    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->sSettingsBundle:Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;

    const/16 v2, 0x3e

    const/16 v1, 0x21

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 78498
    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 78499
    .local v3, "state":Ljava/lang/Integer;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78500
    invoke-interface {p1, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/TN;->AFu([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 78501
    return-void

    .line 78502
    .end local v1    # "options":[Ljava/lang/String;
    .end local v2    # "country":Ljava/lang/Integer;
    .end local v3    # "state":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
