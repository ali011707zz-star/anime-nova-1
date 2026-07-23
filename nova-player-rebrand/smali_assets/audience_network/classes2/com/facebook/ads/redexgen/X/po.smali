.class public abstract Lcom/facebook/ads/redexgen/X/po;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/BJ;,
        Lcom/google/common/collect/Maps$MapDifferenceImpl;,
        Lcom/google/common/collect/Maps$SortedMapDifferenceImpl;,
        Lcom/google/common/collect/Maps$ValueDifferenceImpl;,
        Lcom/google/common/collect/Maps$AsMapView;,
        Lcom/google/common/collect/Maps$SortedAsMapView;,
        Lcom/google/common/collect/Maps$NavigableAsMapView;,
        Lcom/google/common/collect/Maps$UnmodifiableEntrySet;,
        Lcom/google/common/collect/Maps$BiMapConverter;,
        Lcom/google/common/collect/Maps$UnmodifiableBiMap;,
        Lcom/google/common/collect/Maps$EntryTransformer;,
        Lcom/google/common/collect/Maps$TransformedEntriesMap;,
        Lcom/google/common/collect/Maps$TransformedEntriesSortedMap;,
        Lcom/google/common/collect/Maps$TransformedEntriesNavigableMap;,
        Lcom/google/common/collect/Maps$AbstractFilteredMap;,
        Lcom/google/common/collect/Maps$FilteredKeyMap;,
        Lcom/google/common/collect/Maps$FilteredEntryMap;,
        Lcom/google/common/collect/Maps$FilteredEntrySortedMap;,
        Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;,
        Lcom/google/common/collect/Maps$FilteredEntryBiMap;,
        Lcom/google/common/collect/Maps$UnmodifiableNavigableMap;,
        Lcom/google/common/collect/Maps$DescendingMap;,
        Lcom/facebook/ads/redexgen/X/BI;,
        Lcom/facebook/ads/redexgen/X/pm;,
        Lcom/google/common/collect/Maps$NavigableKeySet;,
        Lcom/google/common/collect/Maps$SortedKeySet;,
        Lcom/facebook/ads/redexgen/X/BH;,
        Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;,
        Lcom/facebook/ads/redexgen/X/pn;,
        Lcom/google/common/collect/Maps$FilteredMapValues;,
        Lcom/google/common/collect/Maps$UnmodifiableEntries;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3453
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TjwGK8026J8LuqpHpLFvP2qkj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KunvWIfGJHX7HbktOkm4MkD4kcFcu9wT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QjUrIUPqRg1gsQtfLrmUPiSj1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hJhvRorUNw8eJjUCTMSK9XaE24mC2alD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Tu6zUEMe1bl4a7998mqTIFcXwEKbBm8m"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "M1p7igLEPvcmLPbfEPVmBOai"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JVDSc2uxo9h85gcqbpEojEewGNrzMl9R"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xry660e9EuWNkwUeRbJOaxl6l4kfk7Fh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/po;->A09()V

    return-void
.end method

.method public static A00(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedSize"
        }
    .end annotation

    .line 104874
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    .line 104875
    const/4 v2, 0x2

    const/16 v1, 0xc

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/po;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/nJ;->A00(ILjava/lang/String;)I

    .line 104876
    add-int/lit8 p0, p0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    const-string v1, "v9VFtcyEVV9ymySR9OVMr7RkF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Yfss3f07HcaF8zCrtbecDwNdH"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 104877
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    .line 104878
    int-to-double v2, p0

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    div-double/2addr v2, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    return v0

    .line 104879
    :cond_2
    const v0, 0x7fffffff

    return v0
.end method

.method public static A01(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BQ;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 104880
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/BQ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/BQ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static A02(Ljava/util/Iterator;)Lcom/facebook/ads/redexgen/X/BL;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryIterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 104881
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/BL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/BL;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static A03(Ljava/util/Iterator;)Lcom/facebook/ads/redexgen/X/BK;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryIterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 104882
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/BK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/BK;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static A04()Lcom/facebook/ads/redexgen/X/BJ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/kO<",
            "Ljava/util/Map$Entry<",
            "*TV;>;TV;>;"
        }
    .end annotation

    .line 104883
    sget-object v3, Lcom/facebook/ads/redexgen/X/BJ;->A03:Lcom/facebook/ads/redexgen/X/BJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    const-string v1, "R0MoS7T4JZROoHrLtuxkN6DM2XkxoreU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 104884
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104885
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104886
    .local p0, "e":Ljava/lang/RuntimeException;
    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static A06(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 104887
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104888
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104889
    .local p0, "e":Ljava/lang/RuntimeException;
    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/po;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
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
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 104890
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nc;->A01(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104891
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 104892
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 104893
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    if-nez v2, :cond_0

    .line 104894
    const/4 v6, 0x0

    const/4 v5, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    const-string v1, "LuqjCLBVeKEi1AZvZkL9PbjPH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "FpOiwMODSylVfNj2ewxL0FWcD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x79

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/po;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104895
    :cond_0
    const/4 v2, 0x0

    .line 104896
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104897
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 104898
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/po;->A00:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    const-string v1, "l4YJgmx6qI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x4ct
        0x40t
        0x0t
        0x1dt
        0x15t
        0x0t
        0x6t
        0x11t
        0x0t
        0x1t
        0x36t
        0xct
        0x1ft
        0x0t
    .end array-data
.end method

.method public static A0A(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 0
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 104899
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/po;->A03(Ljava/util/Iterator;)Lcom/facebook/ads/redexgen/X/BK;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/p9;->A0D(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static A0B(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 104900
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-ne p0, p1, :cond_0

    .line 104901
    const/4 v0, 0x1

    return v0

    .line 104902
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 104903
    check-cast p1, Ljava/util/Map;

    .line 104904
    .local v0, "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 104905
    .end local v0    # "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_1
    const/4 p1, 0x0

    sget-object p0, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, p0, v0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object p0, Lcom/facebook/ads/redexgen/X/po;->A01:[Ljava/lang/String;

    const-string v1, "0gxsrdth"

    const/4 v0, 0x5

    aput-object v1, p0, v0

    return p1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 0
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 104906
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104907
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104908
    .local p0, "e":Ljava/lang/RuntimeException;
    :catch_0
    const/4 p0, 0x0

    return p0
.end method
