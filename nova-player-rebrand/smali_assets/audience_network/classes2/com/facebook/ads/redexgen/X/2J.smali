.class public final Lcom/facebook/ads/redexgen/X/2J;
.super Lcom/facebook/ads/redexgen/X/BP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/BP<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient A00:I

.field public final transient A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/BP;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BP;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "offset",
            "length"
        }
    .end annotation

    .line 8966
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2J;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BP;-><init>()V

    .line 8967
    iput p2, p0, Lcom/facebook/ads/redexgen/X/2J;->A01:I

    .line 8968
    iput p3, p0, Lcom/facebook/ads/redexgen/X/2J;->A00:I

    .line 8969
    return-void
.end method


# virtual methods
.method public final A0G()I
    .locals 2

    .line 8970
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oO;->A0H()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A01:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A00:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0H()I
    .locals 2

    .line 8971
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oO;->A0H()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A01:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0K()Z
    .locals 1

    .line 8972
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    const/4 v0, 0x1

    return v0
.end method

.method public final A0L()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 8973
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A02:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oO;->A0L()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A0M(II)Lcom/facebook/ads/redexgen/X/BP;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TE;>;"
        }
    .end annotation

    .line 8974
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A00:I

    invoke-static {p1, p2, v0}, Lcom/facebook/ads/redexgen/X/ki;->A0B(III)V

    .line 8975
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2J;->A02:Lcom/facebook/ads/redexgen/X/BP;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2J;->A01:I

    add-int/2addr v1, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A01:I

    add-int/2addr v0, p2

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BP;->A0M(II)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 8976
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A00:I

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A00(II)I

    .line 8977
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2J;->A02:Lcom/facebook/ads/redexgen/X/BP;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A01:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/BP;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 8978
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BP;->A0N()Lcom/facebook/ads/redexgen/X/4C;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 8979
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BP;->A0O()Lcom/facebook/ads/redexgen/X/Au;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 8980
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/BP;->A0P(I)Lcom/facebook/ads/redexgen/X/Au;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 8981
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2J;->A00:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 8982
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2J;, "Lcom/google/common/collect/ImmutableList<TE;>.SubList;"
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2J;->A0M(II)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method
