.class public final Lcom/facebook/ads/redexgen/X/0t;
.super Lcom/facebook/ads/redexgen/X/1A;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/q8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomListMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/1A<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public transient A00:Lcom/facebook/ads/redexgen/X/ku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/ku<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/ku;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "factory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lcom/facebook/ads/redexgen/X/ku<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 3646
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0t;, "Lcom/google/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p2, "factory":Lcom/facebook/ads/redexgen/X/ku;, "Lcom/google/common/base/Supplier<+Ljava/util/List<TV;>;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1A;-><init>(Ljava/util/Map;)V

    .line 3647
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ku;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A00:Lcom/facebook/ads/redexgen/X/ku;

    .line 3648
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
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
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3653
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0t;, "Lcom/google/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3654
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ku;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A00:Lcom/facebook/ads/redexgen/X/ku;

    .line 3655
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3656
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2L;->A0L(Ljava/util/Map;)V

    .line 3657
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
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
            Ljava/io/IOException;
        }
    .end annotation

    .line 3658
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0t;, "Lcom/google/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A00:Lcom/facebook/ads/redexgen/X/ku;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3660
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2L;->A0I()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3661
    return-void
.end method


# virtual methods
.method public final A00()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 3649
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0t;, "Lcom/google/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2L;->A0J()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A02()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 3650
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0t;, "Lcom/google/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2L;->A0K()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0D()Ljava/util/Collection;
    .locals 1

    .line 3651
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0t;, "Lcom/google/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0t;->A0M()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A0M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 3652
    .local p0, "this":Lcom/facebook/ads/redexgen/X/0t;, "Lcom/google/common/collect/Multimaps$CustomListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0t;->A00:Lcom/facebook/ads/redexgen/X/ku;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ku;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
