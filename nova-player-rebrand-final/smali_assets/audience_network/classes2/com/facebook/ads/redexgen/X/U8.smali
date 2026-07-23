.class public final Lcom/facebook/ads/redexgen/X/U8;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1914
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iAmMZEnTjRyKTNBZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vq5cthhr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "805H8tMQ6F09oxi1Jl38UficVRLMtQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JBRmxZg7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Cn5UKxgX5LOr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xwoZ6hhdKgqxJaNY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yguqyABz11m3k"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UOBi89mTAaMo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/U8;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U8;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/U8;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/U8;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/U8;->A02:[Ljava/lang/String;

    const-string v1, "gDribvuqSsGNU0u3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x46

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static declared-synchronized A01(Lcom/facebook/ads/redexgen/X/T8;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/T8;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v4, Lcom/facebook/ads/redexgen/X/U8;

    monitor-enter v4

    .line 66644
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/U8;->A00:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 66645
    sget-object v1, Lcom/facebook/ads/redexgen/X/U8;->A00:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    .line 66646
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/U8;->A00:Ljava/util/HashMap;

    .line 66647
    sget-object v3, Lcom/facebook/ads/redexgen/X/U8;->A00:Ljava/util/HashMap;

    const/16 v2, 0x16

    const/4 v1, 0x6

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66648
    sget-object v1, Lcom/facebook/ads/redexgen/X/U8;->A00:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A03(Lcom/facebook/ads/redexgen/X/T8;Ljava/util/Map;Ljava/lang/String;)V

    .line 66649
    sget-object v1, Lcom/facebook/ads/redexgen/X/U8;->A00:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v0

    .line 66650
    .end local v4
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x48

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U8;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x45t
        -0x36t
        -0x36t
        -0x44t
        -0x31t
        -0x3dt
        -0x3at
        -0x42t
        -0x3ct
        -0x2dt
        -0x2dt
        -0x2ft
        -0x3ct
        -0x30t
        -0x38t
        0x6t
        0x15t
        0x15t
        0x1bt
        0xat
        0x17t
        0x18t
        -0xft
        0x4t
        -0x3t
        -0xdt
        -0x5t
        -0xct
        -0x26t
        -0x24t
        -0x2ft
        -0x2et
        -0x27t
        -0x22t
        -0x1et
        0x0t
        0x4t
        0x7t
        -0xat
        0x3t
        0x4t
        0x8t
        -0x7t
        0x0t
        -0x33t
        -0x42t
        -0x3bt
        -0x27t
        -0x30t
        -0x41t
        -0x34t
        -0x33t
        -0x3dt
        -0x37t
        -0x38t
        -0x1ft
        -0x2dt
        -0x1ft
        -0x1ft
        -0x29t
        -0x23t
        -0x24t
        -0x13t
        -0x29t
        -0x2et
        -0x36t
        -0x29t
        -0x33t
        -0x25t
        -0x28t
        -0x2et
        -0x33t
    .end array-data
.end method

.method public static declared-synchronized A03(Lcom/facebook/ads/redexgen/X/T8;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/T8;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p0, "envDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v4, Lcom/facebook/ads/redexgen/X/U8;

    monitor-enter v4

    .line 66651
    :try_start_0
    const/16 v2, 0x29

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x41

    const/4 v2, 0x7

    const/16 v0, 0x23

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66652
    const/16 v2, 0x2c

    const/16 v1, 0xb

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/TD;->A9T()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66653
    const/16 v2, 0x21

    const/4 v1, 0x2

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/TD;->A9S()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66654
    const/16 v2, 0x23

    const/4 v1, 0x6

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/To;->A04:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66655
    new-instance v3, Lcom/facebook/ads/redexgen/X/To;

    invoke-direct {v3, p0, p2}, Lcom/facebook/ads/redexgen/X/To;-><init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V

    .line 66656
    .local v1, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/To;
    const/16 v2, 0xf

    const/4 v1, 0x7

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/To;->A06()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66657
    const/16 v2, 0x8

    const/4 v1, 0x7

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/To;->A05()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66658
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/To;->A04()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66659
    const/16 v2, 0x1c

    const/4 v1, 0x5

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/To;->A0A()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66660
    const/16 v2, 0x37

    const/16 v1, 0xa

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U8;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A09()Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/U7;->A02()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66661
    monitor-exit v4

    return-void

    .line 66662
    .end local v1    # "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/To;
    .end local v4
    .end local p0    # "envDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # null:Ljava/util/Map;
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
