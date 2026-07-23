.class public final Lcom/facebook/ads/redexgen/X/P7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public final A03:I

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/PC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PC;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 56789
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P7;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P7;->A04:Lcom/facebook/ads/redexgen/X/PC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A02:Z

    .line 56791
    iput p2, p0, Lcom/facebook/ads/redexgen/X/P7;->A03:I

    .line 56792
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PC;->A04()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A01:I

    .line 56793
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 56794
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P7;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/P7;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A01:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 56795
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P7;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/P7;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56796
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P7;->A04:Lcom/facebook/ads/redexgen/X/PC;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/P7;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A03:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PC;->A0B(II)Ljava/lang/Object;

    move-result-object v2

    .line 56797
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/P7;->A00:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/P7;->A00:I

    .line 56798
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A02:Z

    .line 56799
    return-object v2

    .line 56800
    .end local v0    # "res":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 56801
    .local p0, "this":Lcom/facebook/ads/redexgen/X/P7;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A02:Z

    if-eqz v0, :cond_0

    .line 56802
    iget v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A00:I

    .line 56803
    iget v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A01:I

    .line 56804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A02:Z

    .line 56805
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P7;->A04:Lcom/facebook/ads/redexgen/X/PC;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/P7;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PC;->A0E(I)V

    .line 56806
    return-void

    .line 56807
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
