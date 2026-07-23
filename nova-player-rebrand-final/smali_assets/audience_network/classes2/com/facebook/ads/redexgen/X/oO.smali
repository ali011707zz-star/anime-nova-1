.class public abstract Lcom/facebook/ads/redexgen/X/oO;
.super Ljava/util/AbstractCollection;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use ImmutableList.of or another implementation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/BR;,
        Lcom/facebook/ads/redexgen/X/oN;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A00:[B = null

.field public static final A01:[Ljava/lang/Object;

.field public static final serialVersionUID:J = 0xdecafL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3329
    invoke-static {}, Lcom/facebook/ads/redexgen/X/oO;->A0F()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/oO;->A01:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 103041
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method public static A0E(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oO;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x59

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0F()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oO;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x7t
        0x17t
        0x9t
        -0x3ct
        -0x9t
        0x9t
        0x16t
        0xdt
        0x5t
        0x10t
        0xdt
        0x1et
        0x9t
        0x8t
        -0x16t
        0x13t
        0x16t
        0x11t
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

    .line 103048
    .local v2, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oO;->A0E(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A0G()I
    .locals 1

    .line 103042
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public A0H()I
    .locals 1

    .line 103043
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract A0I([Ljava/lang/Object;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "offset"
        }
    .end annotation
.end method

.method public abstract A0J()Lcom/facebook/ads/redexgen/X/BP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract A0K()Z
.end method

.method public A0L()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 103044
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103045
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103046
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "newElements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103047
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract contains(Ljava/lang/Object;)Z
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
.end method

.method public final remove(Ljava/lang/Object;)Z
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103049
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103050
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "oldElements":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementsToKeep"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103051
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    .local p1, "elementsToKeep":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 103052
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    const/16 v0, 0x510

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 103053
    .local p0, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/oO;->A01:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/oO;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 103054
    .local p1, "this":Lcom/facebook/ads/redexgen/X/oO;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    .local p2, "other":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103055
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oO;->size()I

    move-result v1

    .line 103056
    .local v0, "size":I
    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 103057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oO;->A0L()[Ljava/lang/Object;

    move-result-object v2

    .line 103058
    .local v1, "internal":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 103059
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oO;->A0H()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oO;->A0G()I

    move-result v0

    invoke-static {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/qN;->A02([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 103060
    :cond_0
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/qG;->A05([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 103061
    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_2

    .line 103062
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 103063
    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/oO;->A0I([Ljava/lang/Object;I)I

    .line 103064
    return-object p1
.end method
