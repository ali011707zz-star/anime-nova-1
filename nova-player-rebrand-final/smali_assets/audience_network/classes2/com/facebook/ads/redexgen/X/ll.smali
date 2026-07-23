.class public final Lcom/facebook/ads/redexgen/X/ll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final A01:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Bt;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ll;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bt;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 94912
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ll;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ll;->A02:Lcom/facebook/ads/redexgen/X/Bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A02:Lcom/facebook/ads/redexgen/X/Bt;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Bt;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A01:Ljava/util/Iterator;

    .line 94914
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ll;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A01()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 94915
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ll;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94916
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A00:Ljava/util/Collection;

    .line 94917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A02:Lcom/facebook/ads/redexgen/X/Bt;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Bt;->A0A(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ll;->A03:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xet
        -0x41t
        0x2t
        0x0t
        0xbt
        0xbt
        0x12t
        -0x41t
        0x13t
        0xet
        -0x41t
        0xdt
        0x4t
        0x17t
        0x13t
        -0x39t
        -0x38t
        -0x41t
        0x12t
        0x8t
        0xdt
        0x2t
        0x4t
        -0x41t
        0x13t
        0x7t
        0x4t
        -0x41t
        0xbt
        0x0t
        0x12t
        0x13t
        -0x41t
        0x2t
        0x0t
        0xbt
        0xbt
        -0x41t
        0x13t
        0xet
        -0x41t
        0x11t
        0x4t
        0xct
        0xet
        0x15t
        0x4t
        -0x39t
        -0x38t
    .end array-data
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 94918
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ll;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 94919
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ll;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ll;->A01()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 4

    .line 94920
    .local v2, "this":Lcom/facebook/ads/redexgen/X/ll;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A00:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ll;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/ki;->A0F(ZLjava/lang/Object;)V

    .line 94921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 94922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A02:Lcom/facebook/ads/redexgen/X/Bt;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bt;->A01:Lcom/facebook/ads/redexgen/X/2L;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A00:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A03(Lcom/facebook/ads/redexgen/X/2L;I)I

    .line 94923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A00:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 94924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ll;->A00:Ljava/util/Collection;

    .line 94925
    return-void

    .line 94926
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
