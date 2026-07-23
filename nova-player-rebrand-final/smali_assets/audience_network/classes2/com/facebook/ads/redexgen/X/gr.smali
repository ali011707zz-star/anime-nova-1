.class public final Lcom/facebook/ads/redexgen/X/gr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sj;


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Sh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2905
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XX81oR58WpEsQKvqY2LExbYJLqP9XswE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "az8CKzVkexBjitPsCylcg2AVWlGeK3EI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bGZ3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xIFKC7mmnDHSKxOkrjRNDYdlMsmKF1A7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XScWVG1X4Mc8JZxVJlT03KGo8WKkDIiE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ymPwCIBu7cN5wKkxYqt2Z3a"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4biB1nxlWznGwE3vHvSlKad"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lswyJVFYW7lcf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/gr;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/gr;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/gr;->A00:Ljava/util/Map;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/gr;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/gr;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/gr;->A02:[Ljava/lang/String;

    const-string v1, "T1kvqoJ1cX6i4DSx7n80qqGN8Qg91HVj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "zM5VtNN21yuLINvrTPslJyIzIvAVUrXA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gr;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x31t
        0x2at
        0x16t
        0x31t
        0x37t
        0x2ct
        0x2bt
        0x22t
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized AIb()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 83540
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83541
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gr;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83542
    .local v2, "stat":Lcom/facebook/ads/redexgen/X/Sh;
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/gr;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83543
    .end local p1
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 83544
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 83545
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gr;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83546
    monitor-exit p0

    return-void

    .line 83547
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/gr;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
