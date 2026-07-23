.class public final Lcom/facebook/ads/redexgen/X/ng;
.super Ljava/util/AbstractCollection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValuesView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/nh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 101232
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ng;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ng;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 101233
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ng;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ng;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->clear()V

    .line 101234
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 101235
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ng;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ng;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0f()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 101236
    .local p0, "this":Lcom/facebook/ads/redexgen/X/ng;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.ValuesView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ng;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->size()I

    move-result v0

    return v0
.end method
