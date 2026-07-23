.class public abstract Lcom/facebook/ads/redexgen/X/1d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TF;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backingIterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TF;>;)V"
        }
    .end annotation

    .line 7079
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1d;, "Lcom/google/common/collect/TransformedIterator<TF;TT;>;"
    .local p1, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7080
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1d;->A00:Ljava/util/Iterator;

    .line 7081
    return-void
.end method


# virtual methods
.method public abstract A01(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 1

    .line 7082
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1d;, "Lcom/google/common/collect/TransformedIterator<TF;TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1d;->A00:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 7083
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1d;, "Lcom/google/common/collect/TransformedIterator<TF;TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1d;->A00:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1d;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 7084
    .local p0, "this":Lcom/facebook/ads/redexgen/X/1d;, "Lcom/google/common/collect/TransformedIterator<TF;TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1d;->A00:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7085
    return-void
.end method
