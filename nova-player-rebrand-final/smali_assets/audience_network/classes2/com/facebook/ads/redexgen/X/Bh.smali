.class public final Lcom/facebook/ads/redexgen/X/Bh;
.super Lcom/facebook/ads/redexgen/X/qK;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/qK<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;

.field public static final serialVersionUID:J


# instance fields
.field public final A00:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 667
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jVomwQRsen5vglXLuhXzBdwbPq6Ybrnn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4aFITO9kz2LhtcD79HHzI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vi18DojAtNgr3DJJSarcVnM7GKn6nndK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ML5KuQXC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "N0lS1ni31cQ1TBeJZ0107lcHpyRIIPod"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "312TaVRQAIGqwiXD4iywzyjTEypEIgK4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JELmBa89yxiLk2CDuF87Yo0NIlkJ44v9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QWcb8PBY5hKO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Bh;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 31123
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bh;, "Lcom/google/common/collect/ComparatorOrdering<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/qK;-><init>()V

    .line 31124
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A00:Ljava/util/Comparator;

    .line 31125
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 31126
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bh;, "Lcom/google/common/collect/ComparatorOrdering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A00:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
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

    .line 31127
    .local v3, "this":Lcom/facebook/ads/redexgen/X/Bh;, "Lcom/google/common/collect/ComparatorOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 31128
    const/4 v0, 0x1

    return v0

    .line 31129
    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Bh;

    if-eqz v0, :cond_1

    .line 31130
    check-cast p1, Lcom/facebook/ads/redexgen/X/Bh;

    .line 31131
    .local v0, "that":Lcom/facebook/ads/redexgen/X/Bh;, "Lcom/google/common/collect/ComparatorOrdering<*>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bh;->A00:Ljava/util/Comparator;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Bh;->A00:Ljava/util/Comparator;

    invoke-interface {v1, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 31132
    .end local v0    # "that":Lcom/facebook/ads/redexgen/X/Bh;, "Lcom/google/common/collect/ComparatorOrdering<*>;"
    :cond_1
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bh;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bh;->A01:[Ljava/lang/String;

    const-string v1, "MG7YcOvDvuMg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .line 31133
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bh;, "Lcom/google/common/collect/ComparatorOrdering<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A00:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 31134
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bh;, "Lcom/google/common/collect/ComparatorOrdering<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bh;->A00:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
