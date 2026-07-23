.class public final Lcom/facebook/ads/redexgen/X/2N;
.super Lcom/facebook/ads/redexgen/X/Br;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RandomAccessWrappedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/2L<",
        "TK;TV;>.Wrapped",
        "List;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/lang/Object;Ljava/util/List;Lcom/facebook/ads/redexgen/X/lp;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/2L;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "key",
            "delegate",
            "ancestor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/facebook/ads/redexgen/X/2L<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 9071
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2N;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.RandomAccessWrappedList;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p4, "ancestor":Lcom/facebook/ads/redexgen/X/lp;, "Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2N;->A00:Lcom/facebook/ads/redexgen/X/2L;

    .line 9072
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Br;-><init>(Lcom/facebook/ads/redexgen/X/2L;Ljava/lang/Object;Ljava/util/List;Lcom/facebook/ads/redexgen/X/lp;)V

    .line 9073
    return-void
.end method
