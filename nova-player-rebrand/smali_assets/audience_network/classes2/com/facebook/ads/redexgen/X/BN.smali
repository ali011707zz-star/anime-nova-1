.class public final Lcom/facebook/ads/redexgen/X/BN;
.super Lcom/facebook/ads/redexgen/X/4C;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/p9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/4C<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public A00:Z

.field public final A01:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 30375
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BN;, "Lcom/google/common/collect/Iterators$SingletonIterator<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4C;-><init>()V

    .line 30376
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BN;->A01:Ljava/lang/Object;

    .line 30377
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 30378
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BN;, "Lcom/google/common/collect/Iterators$SingletonIterator<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BN;->A00:Z

    xor-int/lit8 v0, v0, 0x1

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

    .line 30379
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BN;, "Lcom/google/common/collect/Iterators$SingletonIterator<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BN;->A00:Z

    if-nez v0, :cond_0

    .line 30380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BN;->A00:Z

    .line 30381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BN;->A01:Ljava/lang/Object;

    return-object v0

    .line 30382
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
