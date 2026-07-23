.class public final Lcom/facebook/ads/redexgen/X/2K;
.super Lcom/facebook/ads/redexgen/X/BR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/BR<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8983
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2K;-><init>(I)V

    .line 8984
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 8985
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BR;-><init>(I)V

    .line 8986
    return-void
.end method


# virtual methods
.method public final A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/facebook/ads/redexgen/X/2K<",
            "TE;>;"
        }
    .end annotation

    .line 8987
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/BR;->A03(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BR;

    .line 8988
    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/BP;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TE;>;"
        }
    .end annotation

    .line 8989
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A01:Z

    .line 8990
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:[Ljava/lang/Object;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BP;->A09([Ljava/lang/Object;I)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method
