.class public Lcom/facebook/ads/redexgen/X/PF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:I

.field public static A04:I

.field public static A05:[Ljava/lang/Object;

.field public static A06:[Ljava/lang/Object;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:[I

.field public A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1529
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8z1HmzrTIPy39LL5zlYrlacFIwKg5dSL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BF3wuf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SqgiIkCbsFt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0ewbfDqWIohK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kTJoDQcQ4hAXz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5fxnXFw2KP9B"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "f0gXGPwWqu0hk91oP6YtPFY8hQ1GOrGw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wtH1M9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/PF;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57008
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57009
    sget-object v0, Lcom/facebook/ads/redexgen/X/P5;->A01:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57010
    sget-object v0, Lcom/facebook/ads/redexgen/X/P5;->A03:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57011
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    .line 57012
    return-void
.end method

.method private final A00()I
    .locals 6

    .line 57013
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    .line 57014
    .local v0, "N":I
    if-nez v4, :cond_0

    .line 57015
    const/4 v0, -0x1

    return v0

    .line 57016
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    const/4 v0, 0x0

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/PF;->A02([III)I

    move-result v2

    .line 57017
    .local v1, "index":I
    if-gez v2, :cond_1

    .line 57018
    return v2

    .line 57019
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_2

    .line 57020
    return v2

    .line 57021
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .local v2, "end":I
    :goto_0
    if-ge v3, v4, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    aget v0, v0, v3

    if-nez v0, :cond_4

    .line 57022
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_3

    return v3

    .line 57023
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57024
    :cond_4
    add-int/lit8 v5, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v5, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    aget v0, v0, v5

    if-nez v0, :cond_7

    .line 57025
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const-string v1, "nljZKXIH96LM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "33MSJmaTT2hK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    shl-int/lit8 v0, v5, 0x1

    aget-object v0, v4, v0

    if-nez v0, :cond_6

    return v5

    .line 57026
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 57027
    .end local v3    # "i":I
    :cond_7
    not-int v0, v3

    return v0
.end method

.method private final A01(Ljava/lang/Object;I)I
    .locals 6

    .line 57028
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    .line 57029
    .local v0, "N":I
    if-nez v4, :cond_0

    .line 57030
    const/4 v0, -0x1

    return v0

    .line 57031
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    invoke-static {v0, v4, p2}, Lcom/facebook/ads/redexgen/X/PF;->A02([III)I

    move-result v2

    .line 57032
    .local v1, "index":I
    if-gez v2, :cond_1

    .line 57033
    return v2

    .line 57034
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57035
    return v2

    .line 57036
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .local v2, "end":I
    :goto_0
    if-ge v3, v4, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    aget v0, v0, v3

    if-ne v0, p2, :cond_4

    .line 57037
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 57038
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57039
    :cond_4
    add-int/lit8 v5, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v5, :cond_7

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const-string v1, "0KWp7g9eUEy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aget v0, v4, v5

    if-ne v0, p2, :cond_7

    .line 57040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v5, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v5

    .line 57041
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 57042
    .end local v3    # "i":I
    :cond_7
    not-int v0, v3

    return v0
.end method

.method public static A02([III)I
    .locals 0

    .line 57043
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/P5;->A02([III)I

    move-result p0

    return p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57044
    .local p0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/PF;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/PF;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x70t
        0x6ct
        0x6dt
        0x77t
        0x24t
        0x49t
        0x65t
        0x74t
        0x2dt
        0x22t
        0x2et
        0x3ft
        0x39t
    .end array-data
.end method

.method private A05(I)V
    .locals 6

    .line 57045
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/16 v0, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    .line 57046
    const-class v2, Lcom/facebook/ads/redexgen/X/i7;

    monitor-enter v2

    .line 57047
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/PF;->A06:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 57048
    sget-object v1, Lcom/facebook/ads/redexgen/X/PF;->A06:[Ljava/lang/Object;

    .line 57049
    .local v4, "array":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57050
    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/PF;->A06:[Ljava/lang/Object;

    .line 57051
    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57052
    aput-object v5, v1, v3

    aput-object v5, v1, v4

    .line 57053
    sget v0, Lcom/facebook/ads/redexgen/X/PF;->A04:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/PF;->A04:I

    .line 57054
    monitor-exit v2

    return-void

    .line 57055
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 57056
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 57057
    const-class v2, Lcom/facebook/ads/redexgen/X/i7;

    monitor-enter v2

    .line 57058
    :try_start_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/PF;->A05:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 57059
    sget-object v1, Lcom/facebook/ads/redexgen/X/PF;->A05:[Ljava/lang/Object;

    .line 57060
    .restart local v4    # "array":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57061
    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/PF;->A05:[Ljava/lang/Object;

    .line 57062
    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57063
    aput-object v5, v1, v3

    aput-object v5, v1, v4

    .line 57064
    sget v0, Lcom/facebook/ads/redexgen/X/PF;->A03:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/PF;->A03:I

    .line 57065
    monitor-exit v2

    return-void

    .line 57066
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 57067
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57068
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57069
    return-void
.end method

.method public static A06([I[Ljava/lang/Object;I)V
    .locals 7

    .line 57070
    array-length v1, p0

    const/16 v0, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2

    .line 57071
    const-class v1, Lcom/facebook/ads/redexgen/X/i7;

    monitor-enter v1

    .line 57072
    :try_start_0
    sget v0, Lcom/facebook/ads/redexgen/X/PF;->A04:I

    if-ge v0, v3, :cond_1

    .line 57073
    sget-object v0, Lcom/facebook/ads/redexgen/X/PF;->A06:[Ljava/lang/Object;

    aput-object v0, p1, v5

    .line 57074
    aput-object p0, p1, v2

    .line 57075
    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v2

    .local v1, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 57076
    aput-object v6, p1, v0

    .line 57077
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 57078
    .end local v1    # "i":I
    :cond_0
    sput-object p1, Lcom/facebook/ads/redexgen/X/PF;->A06:[Ljava/lang/Object;

    .line 57079
    sget v0, Lcom/facebook/ads/redexgen/X/PF;->A04:I

    add-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/PF;->A04:I

    .line 57080
    :cond_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 57081
    :cond_2
    array-length v1, p0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    .line 57082
    const-class v1, Lcom/facebook/ads/redexgen/X/i7;

    monitor-enter v1

    .line 57083
    :try_start_1
    sget v0, Lcom/facebook/ads/redexgen/X/PF;->A03:I

    if-ge v0, v3, :cond_4

    .line 57084
    sget-object v0, Lcom/facebook/ads/redexgen/X/PF;->A05:[Ljava/lang/Object;

    aput-object v0, p1, v5

    .line 57085
    aput-object p0, p1, v2

    .line 57086
    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v2

    .restart local v1    # "i":I
    :goto_1
    if-lt v0, v4, :cond_3

    .line 57087
    aput-object v6, p1, v0

    .line 57088
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 57089
    .end local v1    # "i":I
    :cond_3
    sput-object p1, Lcom/facebook/ads/redexgen/X/PF;->A05:[Ljava/lang/Object;

    .line 57090
    sget v0, Lcom/facebook/ads/redexgen/X/PF;->A03:I

    add-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/PF;->A03:I

    .line 57091
    :cond_4
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 57092
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final A07(Ljava/lang/Object;)I
    .locals 7

    .line 57093
    .local v4, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    mul-int/lit8 v6, v0, 0x2

    .line 57094
    .local v0, "N":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57095
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 57096
    const/4 v1, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v1, v6, :cond_5

    .line 57097
    aget-object v0, v5, v1

    if-nez v0, :cond_0

    .line 57098
    shr-int/lit8 v0, v1, 0x1

    return v0

    .line 57099
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 57100
    :cond_1
    const/4 v4, 0x1

    .restart local v2    # "i":I
    :goto_1
    if-ge v4, v6, :cond_5

    .line 57101
    aget-object v0, v5, v4

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const-string v1, "bt44SpsCW8by"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Iovdsjym1Cx2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 57102
    shr-int/lit8 v3, v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57103
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const-string v1, "ZvOUY6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "nVlZAl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 57104
    .end local v2    # "i":I
    :cond_5
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const-string v1, "MKm6k3UubQ6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const-string v1, "2Vghj6DMfX1I"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "igqcF6KEPQ66"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method

.method public final A08(Ljava/lang/Object;)I
    .locals 1

    .line 57105
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PF;->A00()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/PF;->A01(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public final A09(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 57106
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0A(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 57107
    .local p2, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    const/4 v5, 0x1

    add-int/2addr v0, v5

    aget-object v8, v1, v0

    .line 57108
    .local v0, "old":Ljava/lang/Object;
    iget v4, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    .line 57109
    .local v1, "osize":I
    if-gt v4, v5, :cond_1

    .line 57110
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/PF;->A06([I[Ljava/lang/Object;I)V

    .line 57111
    sget-object v0, Lcom/facebook/ads/redexgen/X/P5;->A01:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57112
    sget-object v0, Lcom/facebook/ads/redexgen/X/P5;->A03:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57113
    const/4 v3, 0x0

    .line 57114
    .local v2, "nsize":I
    .end local v3
    .restart local v2    # "nsize":I
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-ne v4, v0, :cond_8

    .line 57115
    iput v3, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_7

    .line 57116
    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const-string v1, "hOF5xMBjbG58"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "k56GqMXOqoxT"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v8

    .line 57117
    .end local v2    # "nsize":I
    :cond_1
    add-int/lit8 v3, v4, -0x1

    .line 57118
    .local v3, "nsize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    array-length v0, v0

    const/16 v6, 0x8

    if-le v0, v6, :cond_5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    if-ge v1, v0, :cond_5

    .line 57119
    if-le v4, v6, :cond_2

    shr-int/lit8 v0, v4, 0x1

    add-int v6, v4, v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 57120
    .local v4, "n":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57121
    .local v5, "ohashes":[I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57122
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/PF;->A05(I)V

    .line 57123
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-ne v4, v0, :cond_9

    .line 57124
    :goto_1
    if-lez p1, :cond_3

    .line 57125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    const/4 v7, 0x0

    invoke-static {v2, v7, v0, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57126
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    invoke-static {v1, v7, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57127
    :cond_3
    if-ge p1, v3, :cond_0

    .line 57128
    add-int/lit8 v7, p1, 0x1

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    sub-int v0, v3, p1

    invoke-static {v2, v7, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57129
    add-int/lit8 v6, p1, 0x1

    shl-int/2addr v6, v5

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v2, p1, 0x1

    sub-int v0, v3, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v6, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 57130
    .local v4, "n":I
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const-string v1, "WH99ujY4Es6AewxBY41FF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57131
    .local v5, "ohashes":[I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57132
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/PF;->A05(I)V

    .line 57133
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-ne v4, v0, :cond_9

    goto :goto_1

    .line 57134
    .end local v4    # "n":I
    .end local v5    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_5
    if-ge p1, v3, :cond_6

    .line 57135
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    sub-int v0, v3, p1

    invoke-static {v6, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57136
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    shl-int/2addr v6, v5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    sub-int v0, v3, p1

    shl-int/2addr v0, v5

    invoke-static {v7, v6, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57137
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 57138
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v5

    aput-object v2, v1, v0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57139
    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 57140
    .restart local v4    # "n":I
    .restart local v5    # "ohashes":[I
    .restart local v6    # "oarray":[Ljava/lang/Object;
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final A0B(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 57141
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0C(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 57142
    .local v2, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 57143
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/PF;
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    aget-object v1, v0, v2

    .line 57144
    .local p0, "old":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 57145
    return-object v1
.end method

.method public final A0D(I)V
    .locals 6

    .line 57146
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v5, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    .line 57147
    .local v0, "osize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 57148
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57149
    .local v1, "ohashes":[I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57150
    .local v2, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PF;->A05(I)V

    .line 57151
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-lez v0, :cond_0

    .line 57152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    const/4 v2, 0x0

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57153
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v5, 0x1

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57154
    :cond_0
    invoke-static {v4, v3, v5}, Lcom/facebook/ads/redexgen/X/PF;->A06([I[Ljava/lang/Object;I)V

    .line 57155
    .end local v1    # "ohashes":[I
    .end local v2    # "oarray":[Ljava/lang/Object;
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-ne v0, v5, :cond_2

    .line 57156
    return-void

    .line 57157
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 4

    .line 57158
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-lez v0, :cond_0

    .line 57159
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 57160
    .local v0, "ohashes":[I
    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const-string v1, "UNrHeFRST0N9gyLTBJ6FVG6osgOV0jla"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Uxp69fMHdnF3RanJB6hneAcQQEE567qn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57161
    .local v1, "oarray":[Ljava/lang/Object;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    .line 57162
    .local v2, "osize":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/P5;->A01:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57163
    sget-object v0, Lcom/facebook/ads/redexgen/X/P5;->A03:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57164
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    .line 57165
    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/PF;->A06([I[Ljava/lang/Object;I)V

    .line 57166
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "osize":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-gtz v0, :cond_1

    .line 57167
    return-void

    .line 57168
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 57169
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/PF;->A08(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 57170
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/PF;->A07(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 57171
    .local p2, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 57172
    return v5

    .line 57173
    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/PF;

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 57174
    check-cast p1, Lcom/facebook/ads/redexgen/X/PF;

    .line 57175
    .local v1, "map":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<**>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PF;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PF;->size()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 57176
    return v4

    .line 57177
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-ge v3, v0, :cond_5

    .line 57178
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/PF;->A09(I)Ljava/lang/Object;

    move-result-object v2

    .line 57179
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/PF;->A0B(I)Ljava/lang/Object;

    move-result-object v1

    .line 57180
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/PF;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57181
    .local p0, "theirs":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 57182
    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/PF;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 57183
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 57184
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local p0    # "theirs":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57185
    :cond_4
    :goto_1
    return v4

    .line 57186
    :goto_2
    return v4

    .line 57187
    .end local v3    # "i":I
    :cond_5
    return v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57188
    .local v0, "ignored":Ljava/lang/ClassCastException;
    :catch_0
    return v4

    .line 57189
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    .local v0, "ignored":Ljava/lang/NullPointerException;
    :catch_1
    return v4

    .line 57190
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "map":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<**>;"
    :cond_6
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 57191
    check-cast p1, Ljava/util/Map;

    .line 57192
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PF;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 57193
    return v4

    .line 57194
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-ge v3, v0, :cond_b

    .line 57195
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/PF;->A09(I)Ljava/lang/Object;

    move-result-object v2

    .line 57196
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/PF;->A0B(I)Ljava/lang/Object;

    move-result-object v1

    .line 57197
    .restart local v5    # "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57198
    .restart local p0    # "theirs":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 57199
    if-nez v0, :cond_a

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 57200
    :cond_8
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    .line 57201
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local p0    # "theirs":Ljava/lang/Object;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 57202
    :cond_a
    :goto_4
    return v4

    .line 57203
    :goto_5
    return v4

    .line 57204
    .end local v3    # "i":I
    :cond_b
    return v5
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 57205
    .local v0, "ignored":Ljava/lang/ClassCastException;
    :catch_2
    return v4

    .line 57206
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    .local v0, "ignored":Ljava/lang/NullPointerException;
    :catch_3
    return v4

    .line 57207
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_c
    return v4
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 57208
    .local p1, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/PF;->A08(Ljava/lang/Object;)I

    move-result v0

    .line 57209
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 8

    .line 57210
    .local p1, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57211
    .local v0, "hashes":[I
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57212
    .local v1, "array":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 57213
    .local v2, "result":I
    const/4 v4, 0x0

    .local v3, "i":I
    const/4 v3, 0x1

    .local v4, "v":I
    iget v2, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    .local v5, "s":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 57214
    aget-object v0, v6, v3

    .line 57215
    .local v6, "value":Ljava/lang/Object;
    aget v1, v7, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v1, v0

    add-int/2addr v5, v1

    .line 57216
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 57217
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 57218
    .end local v3    # "i":I
    .end local v4    # "v":I
    .end local v5    # "s":I
    :cond_1
    return v5
.end method

.method public final isEmpty()Z
    .locals 1

    .line 57219
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 57220
    .local p1, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v7, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    .line 57221
    .local v0, "osize":I
    if-nez p1, :cond_0

    .line 57222
    const/4 v4, 0x0

    .line 57223
    .local v1, "hash":I
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PF;->A00()I

    move-result v0

    .line 57224
    .local v2, "index":I
    .restart local v2    # "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 57225
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 57226
    .end local v2    # "index":I
    .local v3, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    aget-object v1, v0, v2

    .line 57227
    .local v2, "old":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    aput-object p2, v0, v2

    .line 57228
    return-object v1

    .line 57229
    .end local v1    # "hash":I
    .end local v2    # "old":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 57230
    .restart local v1    # "hash":I
    invoke-direct {p0, p1, v4}, Lcom/facebook/ads/redexgen/X/PF;->A01(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    .line 57231
    .end local v3    # "index":I
    .local v2, "index":I
    :cond_1
    not-int v3, v0

    .line 57232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    array-length v0, v0

    if-lt v7, v0, :cond_3

    .line 57233
    const/16 v1, 0x8

    if-lt v7, v1, :cond_5

    shr-int/lit8 v1, v7, 0x1

    add-int/2addr v1, v7

    .line 57234
    .local v3, "n":I
    :goto_1
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    .line 57235
    .local v4, "ohashes":[I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    .line 57236
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/PF;->A05(I)V

    .line 57237
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-ne v7, v0, :cond_9

    .line 57238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 57239
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    array-length v0, v6

    const/4 v2, 0x0

    invoke-static {v6, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57240
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    array-length v0, v5

    invoke-static {v5, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57241
    :cond_2
    invoke-static {v6, v5, v7}, Lcom/facebook/ads/redexgen/X/PF;->A06([I[Ljava/lang/Object;I)V

    .line 57242
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_3
    if-ge v3, v7, :cond_4

    .line 57243
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    add-int/lit8 v1, v3, 0x1

    sub-int v0, v7, v3

    invoke-static {v5, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57244
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    shl-int/lit8 v1, v0, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    sub-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v6, v5, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57245
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-ne v7, v0, :cond_8

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57246
    :cond_5
    const/4 v0, 0x4

    if-lt v7, v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/PF;->A08:[Ljava/lang/String;

    const-string v1, "wNq2gfAl4zWIB1XFoKeYdvHUl0gsJJAY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "ABvHOLLiQ2Gbe1PeIygvGpsQN2lfiJ3N"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    array-length v0, v5

    if-ge v3, v0, :cond_8

    .line 57247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A01:[I

    aput v4, v0, v3

    .line 57248
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    aput-object p1, v1, v0

    .line 57249
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    aput-object p2, v1, v0

    .line 57250
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    .line 57251
    const/4 v0, 0x0

    return-object v0

    .line 57252
    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 57253
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 57254
    .local p1, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/PF;->A08(Ljava/lang/Object;)I

    move-result v0

    .line 57255
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 57256
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/PF;->A0A(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 57257
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 57258
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 57259
    .local v5, "this":Lcom/facebook/ads/redexgen/X/PF;, "Lcom/facebook/ads/internal/androidx/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57260
    const/16 v2, 0xc

    const/4 v1, 0x2

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PF;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57261
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57262
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v0, 0x7b

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57263
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    if-ge v4, v0, :cond_4

    .line 57264
    if-lez v4, :cond_1

    .line 57265
    const/16 v2, 0xa

    const/4 v1, 0x2

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PF;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57266
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/PF;->A09(I)Ljava/lang/Object;

    move-result-object v3

    .line 57267
    .local v2, "key":Ljava/lang/Object;
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PF;->A03(III)Ljava/lang/String;

    move-result-object v1

    if-eq v3, p0, :cond_3

    .line 57268
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57269
    :goto_1
    const/16 v0, 0x3d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57270
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/PF;->A0B(I)Ljava/lang/Object;

    move-result-object v0

    .line 57271
    .local v4, "value":Ljava/lang/Object;
    if-eq v0, p0, :cond_2

    .line 57272
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57273
    .end local v2    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57274
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 57275
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 57276
    .end local v1    # "i":I
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57277
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
