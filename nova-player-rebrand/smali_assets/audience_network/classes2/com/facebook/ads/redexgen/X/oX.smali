.class public abstract Lcom/facebook/ads/redexgen/X/oX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use ImmutableMap.of or another implementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/oV;,
        Lcom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;,
        Lcom/google/common/collect/ImmutableMap$SerializedForm;,
        Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A03:[B = null

.field public static A04:[Ljava/lang/String; = null

.field public static final A05:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "**>;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J = 0xdecafL


# instance fields
.field public transient A00:Lcom/facebook/ads/redexgen/X/oO;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/oO<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A01:Lcom/facebook/ads/redexgen/X/BO;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BO<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient A02:Lcom/facebook/ads/redexgen/X/BO;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BO<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3332
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vKCQqMCBbbLRNayk93g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pkt0IymnSuuTvT2UABZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PNc8ARlkPwYFJqJCIOuFP53ZqzL63Ot9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eX2I8z36J32Go"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gIGV4Wf8BZM4VYT7BzYv5KONe75pspBB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tYe4jTWn6nAHNSv3aqiqFSpTtkmDAUnf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8sr0nS9u8yYglBLPy9xKZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QmruhXeOtXDmPURP7V7IzoRRfHSq4IXC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/oX;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oX;->A08()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lcom/facebook/ads/redexgen/X/oX;->A05:[Ljava/util/Map$Entry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 103211
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A03()Lcom/facebook/ads/redexgen/X/oV;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/oV<",
            "TK;TV;>;"
        }
    .end annotation

    .line 103212
    new-instance v0, Lcom/facebook/ads/redexgen/X/oV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/oV;-><init>()V

    return-object v0
.end method

.method public static A04()Lcom/facebook/ads/redexgen/X/oX;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/oX<",
            "TK;TV;>;"
        }
    .end annotation

    .line 103213
    sget-object v3, Lcom/facebook/ads/redexgen/X/B9;->A04:Lcom/facebook/ads/redexgen/X/oX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/oX;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/oX;->A04:[Ljava/lang/String;

    const-string v1, "QWSx7KQEMPZzsm7sYqB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "rV1plHJifYQu2yuYFjd"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A05(Ljava/lang/Iterable;)Lcom/facebook/ads/redexgen/X/oX;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/facebook/ads/redexgen/X/oX<",
            "TK;TV;>;"
        }
    .end annotation

    .line 103214
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 103215
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 103216
    .local v0, "initialCapacity":I
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/oV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/oV;-><init>(I)V

    .line 103217
    .local v1, "builder":Lcom/facebook/ads/redexgen/X/oV;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/oV;->A04(Ljava/lang/Iterable;)Lcom/facebook/ads/redexgen/X/oV;

    .line 103218
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oV;->A07()Lcom/facebook/ads/redexgen/X/oX;

    move-result-object v0

    return-object v0

    .line 103219
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public static A06(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/oX;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/facebook/ads/redexgen/X/oX<",
            "TK;TV;>;"
        }
    .end annotation

    .line 103220
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/oX;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedMap;

    if-nez v0, :cond_0

    .line 103221
    move-object v1, p0

    check-cast v1, Lcom/facebook/ads/redexgen/X/oX;

    .line 103222
    .local v0, "kvMap":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/oX;->A0F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103223
    return-object v1

    .line 103224
    .end local v0    # "kvMap":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oX;->A05(Ljava/lang/Iterable;)Lcom/facebook/ads/redexgen/X/oX;

    move-result-object v0

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oX;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oX;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x67t
        -0x7bt
        0x77t
        0x32t
        0x65t
        0x77t
        -0x7ct
        0x7bt
        0x73t
        0x7et
        0x7bt
        -0x74t
        0x77t
        0x76t
        0x58t
        -0x7ft
        -0x7ct
        0x7ft
    .end array-data
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 103245
    .local v2, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oX;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A09()Lcom/facebook/ads/redexgen/X/oO;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/oO<",
            "TV;>;"
        }
    .end annotation

    .line 103225
    .local v2, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/oX;->A00:Lcom/facebook/ads/redexgen/X/oO;

    .line 103226
    .local v0, "result":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TV;>;"
    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oX;->A0A()Lcom/facebook/ads/redexgen/X/oO;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/oX;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/oX;->A04:[Ljava/lang/String;

    const-string v1, "23ujWmcydF5ICCpn56C"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/oX;->A00:Lcom/facebook/ads/redexgen/X/oO;

    :cond_0
    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public abstract A0A()Lcom/facebook/ads/redexgen/X/oO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/oO<",
            "TV;>;"
        }
    .end annotation
.end method

.method public A0B()Lcom/facebook/ads/redexgen/X/BO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 103227
    .local p1, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oX;->A01:Lcom/facebook/ads/redexgen/X/BO;

    .line 103228
    .local v0, "result":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oX;->A0D()Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oX;->A01:Lcom/facebook/ads/redexgen/X/BO;

    :cond_0
    return-object v0
.end method

.method public A0C()Lcom/facebook/ads/redexgen/X/BO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "TK;>;"
        }
    .end annotation

    .line 103229
    .local p1, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oX;->A02:Lcom/facebook/ads/redexgen/X/BO;

    .line 103230
    .local v0, "result":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<TK;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oX;->A0E()Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oX;->A02:Lcom/facebook/ads/redexgen/X/BO;

    :cond_0
    return-object v0
.end method

.method public abstract A0D()Lcom/facebook/ads/redexgen/X/BO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract A0E()Lcom/facebook/ads/redexgen/X/BO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "TK;>;"
        }
    .end annotation
.end method

.method public abstract A0F()Z
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103231
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 103232
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/oX;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 103233
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oX;->A09()Lcom/facebook/ads/redexgen/X/oO;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/oO;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 103234
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oX;->A0B()Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 103235
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/po;->A0B(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 103236
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/oX;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103237
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 103238
    return-object v0

    .line 103239
    :cond_0
    return-object p2
.end method

.method public hashCode()I
    .locals 1

    .line 103240
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oX;->A0B()Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qj;->A00(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 103241
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oX;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 103242
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oX;->A0C()Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 103243
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103244
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 103246
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 103247
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/po;->A08(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 103248
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oX;->A09()Lcom/facebook/ads/redexgen/X/oO;

    move-result-object v0

    return-object v0
.end method
