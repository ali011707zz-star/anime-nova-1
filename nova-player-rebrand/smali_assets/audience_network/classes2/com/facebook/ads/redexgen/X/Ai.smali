.class public abstract Lcom/facebook/ads/redexgen/X/Ai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractCollection.kt\nkotlin/collections/AbstractCollection\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,50:1\n1755#2,3:51\n1734#2,3:54\n*S KotlinDebug\n*F\n+ 1 AbstractCollection.kt\nkotlin/collections/AbstractCollection\n*L\n19#1:51,3\n22#1:54,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\'\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u00a6\u0002J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0016\u0010\u000f\u001a\u00020\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0016J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0015\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015H\u0015\u00a2\u0006\u0002\u0010\u0017J\'\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u0015\"\u0004\u0008\u0001\u0010\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u0015H\u0014\u00a2\u0006\u0002\u0010\u001aR\u0012\u0010\u0005\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlin/collections/AbstractCollection;",
        "E",
        "",
        "<init>",
        "()V",
        "size",
        "",
        "getSize",
        "()I",
        "iterator",
        "",
        "contains",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "containsAll",
        "elements",
        "isEmpty",
        "toString",
        "",
        "toArray",
        "",
        "",
        "()[Ljava/lang/Object;",
        "T",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ai;->A0B()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A08(Lcom/facebook/ads/redexgen/X/Ai;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 29341
    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    const/16 p0, 0x11

    const/16 v0, 0x21

    invoke-static {p1, p0, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Ai;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Ai;->A08(Lcom/facebook/ads/redexgen/X/Ai;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ai;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x17

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x55

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ai;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x1et
        0x42t
        0x5et
        0x5ft
        0x45t
        0x16t
        0x75t
        0x59t
        0x5at
        0x5at
        0x53t
        0x55t
        0x42t
        0x5ft
        0x59t
        0x58t
        0x1ft
        0xat
        0x6t
        0x5t
        0x3at
        0x2ft
        0x38t
        0x2bt
        0x3et
        0x23t
        0x25t
        0x24t
        0x6at
        0x23t
        0x39t
        0x6at
        0x24t
        0x25t
        0x3et
        0x6at
        0x39t
        0x3ft
        0x3at
        0x3at
        0x25t
        0x38t
        0x3et
        0x2ft
        0x2et
        0x6at
        0x2ct
        0x25t
        0x38t
        0x6at
        0x38t
        0x2ft
        0x2bt
        0x2et
        0x67t
        0x25t
        0x24t
        0x26t
        0x33t
        0x6at
        0x29t
        0x25t
        0x26t
        0x26t
        0x2ft
        0x29t
        0x3et
        0x23t
        0x25t
        0x24t
        0x21t
        0x45t
        0x2ct
        0x3ft
        0x3ft
        0x2ct
        0x34t
        0x8t
        0x1t
        0x8t
        0x0t
        0x8t
        0x3t
        0x19t
        0x1et
    .end array-data
.end method


# virtual methods
.method public abstract A0C()I
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/16 v2, 0x13

    const/16 v1, 0x33

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const/16 v2, 0x13

    const/16 v1, 0x33

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clear()V
    .locals 3

    const/16 v2, 0x13

    const/16 v1, 0x33

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 29342
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .line 29343
    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    .local v1, "$i$f$any":I
    instance-of v0, v1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29344
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :cond_0
    :goto_0
    return v2

    .line 29345
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 29346
    .local p1, "element$iv":Ljava/lang/Object;
    .local p2, "it":Ljava/lang/Object;
    .local p3, "$i$a$-any-AbstractCollection$contains$1":I
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/qY;->A0C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 29347
    .end local p2
    .end local p3
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/16 v2, 0x4d

    const/16 v1, 0x8

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29348
    check-cast p1, Ljava/lang/Iterable;

    .line 29349
    .local v0, "$this$all$iv":Ljava/lang/Iterable;
    .local v1, "$i$f$all":I
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 29350
    .end local v0    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$all":I
    :cond_0
    :goto_0
    return v2

    .line 29351
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 29352
    .local p1, "element$iv":Ljava/lang/Object;
    .local p2, "it":Ljava/lang/Object;
    .local p3, "$i$a$-all-AbstractCollection$containsAll$1":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ai;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 29353
    .end local p2
    .end local p3
    if-nez v0, :cond_2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .line 29354
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ai;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    const/16 v2, 0x13

    const/16 v1, 0x33

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/16 v2, 0x13

    const/16 v1, 0x33

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/16 v2, 0x13

    const/16 v1, 0x33

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge size()I
    .locals 1

    .line 29355
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ai;->A0C()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 29356
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qa;->A02(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/16 v2, 0x48

    const/4 v1, 0x5

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29357
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/qa;->A03(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 29358
    move-object v3, p0

    check-cast v3, Ljava/lang/Iterable;

    const/16 v2, 0x11

    const/4 v1, 0x2

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v2, 0x46

    const/4 v1, 0x1

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v2, 0x47

    const/4 v1, 0x1

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->A0A(III)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v9, Lcom/facebook/ads/redexgen/X/1t;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/1t;-><init>(Lcom/facebook/ads/redexgen/X/Ai;)V

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/0d;->A03(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/facebook/ads/redexgen/X/AZ;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29359
    return-object v0
.end method
