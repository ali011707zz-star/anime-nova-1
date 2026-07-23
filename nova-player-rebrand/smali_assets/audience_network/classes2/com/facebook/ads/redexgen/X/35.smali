.class public final Lcom/facebook/ads/redexgen/X/35;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Z

.field public static A01:Ljava/lang/String;

.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 146
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xIpC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lOutcBeb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "y6lcWPY0M5vgnnr832pPoLFOGrBEwJN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eNaaWw40USiw6vcri4oIxijcBQWus6T9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oHSXRLDm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pbRsDBVUOoB3mv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LvjaTOAqlauNDNt2xP6XrUFLIm1SBtnY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/35;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/35;->A02()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/35;->A00:Z

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/35;->A04:Ljava/util/HashSet;

    .line 148
    const/4 v2, 0x2

    const/16 v1, 0xd

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/35;->A01(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/35;->A01:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized A00()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/35;

    monitor-enter v1

    .line 10027
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/35;->A01:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/35;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5f

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
    .locals 4

    const/16 v3, 0xf

    sget-object v1, Lcom/facebook/ads/redexgen/X/35;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/35;->A03:[Ljava/lang/String;

    const-string v1, "8"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/35;->A02:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x3dt
        -0x49t
        0x31t
        0x39t
        0x39t
        0x31t
        -0x8t
        0x2ft
        0x42t
        0x39t
        -0x8t
        0x2dt
        0x39t
        0x3ct
        0x2ft
    .end array-data
.end method

.method public static declared-synchronized A03(Ljava/lang/String;)V
    .locals 5

    const-class v4, Lcom/facebook/ads/redexgen/X/35;

    monitor-enter v4

    .line 10028
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/35;->A04:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/35;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/35;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/35;->A01:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10030
    :cond_0
    monitor-exit v4

    return-void

    .line 10031
    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
