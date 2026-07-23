.class public abstract Lcom/facebook/ads/redexgen/X/Oh;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/Og;

.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1496
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "j"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XC0Rp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xmnbF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZVN1dtOIFAKzm8JTATZerxuQP9zv55g"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kSPLn3WG70"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Oh;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oh;->A02()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/Og;
    .locals 4

    .line 56075
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A00:Lcom/facebook/ads/redexgen/X/Og;

    if-nez v0, :cond_1

    .line 56076
    const-class v3, Lcom/facebook/ads/redexgen/X/Og;

    monitor-enter v3

    .line 56077
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A00:Lcom/facebook/ads/redexgen/X/Og;

    if-nez v0, :cond_0

    .line 56078
    const/4 v2, 0x0

    const/16 v1, 0x24

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A01(III)Ljava/lang/String;

    move-result-object v0

    .line 56079
    invoke-static {v0, p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 56080
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ge;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/iB;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/iB;-><init>(Landroid/content/SharedPreferences;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Og;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Og;-><init>(Lcom/facebook/ads/redexgen/X/Om;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A00:Lcom/facebook/ads/redexgen/X/Og;

    .line 56081
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56082
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A00:Lcom/facebook/ads/redexgen/X/Og;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oh;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    xor-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oh;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oh;->A02:[Ljava/lang/String;

    const-string v1, "w"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "P"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    xor-int/lit8 v0, p1, 0x5c

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x56t
        0x5at
        0x58t
        0x1bt
        0x53t
        0x54t
        0x56t
        0x50t
        0x57t
        0x5at
        0x5at
        0x5et
        0x1bt
        0x54t
        0x51t
        0x46t
        0x1bt
        0x74t
        0x71t
        0x6at
        0x67t
        0x70t
        0x65t
        0x7at
        0x67t
        0x61t
        0x7ct
        0x7bt
        0x72t
        0x6at
        0x76t
        0x7at
        0x7bt
        0x73t
        0x7ct
        0x72t
    .end array-data
.end method
