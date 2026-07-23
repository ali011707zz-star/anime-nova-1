.class public final Lcom/facebook/ads/redexgen/X/2B;
.super Lcom/facebook/ads/redexgen/X/BO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/B9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/BO<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient A00:Lcom/facebook/ads/redexgen/X/BP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final transient A01:Lcom/facebook/ads/redexgen/X/oX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/oX<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/oX;Lcom/facebook/ads/redexgen/X/BP;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/oX<",
            "TK;*>;",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TK;>;)V"
        }
    .end annotation

    .line 8897
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2B;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    .local p1, "map":Lcom/facebook/ads/redexgen/X/oX;, "Lcom/google/common/collect/ImmutableMap<TK;*>;"
    .local p2, "list":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<TK;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BO;-><init>()V

    .line 8898
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2B;->A01:Lcom/facebook/ads/redexgen/X/oX;

    .line 8899
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2B;->A00:Lcom/facebook/ads/redexgen/X/BP;

    .line 8900
    return-void
.end method


# virtual methods
.method public final A0I([Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "offset"
        }
    .end annotation

    .line 8901
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2B;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2B;->A0J()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/BP;->A0I([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/BP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TK;>;"
        }
    .end annotation

    .line 8902
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2B;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A00:Lcom/facebook/ads/redexgen/X/BP;

    return-object v0
.end method

.method public final A0K()Z
    .locals 1

    .line 8903
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2B;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/4C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/4C<",
            "TK;>;"
        }
    .end annotation

    .line 8904
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2B;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2B;->A0J()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->A0N()Lcom/facebook/ads/redexgen/X/4C;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
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

    .line 8905
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2B;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A01:Lcom/facebook/ads/redexgen/X/oX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/oX;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 8906
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2B;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2B;->A0N()Lcom/facebook/ads/redexgen/X/4C;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 8907
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2B;, "Lcom/google/common/collect/RegularImmutableMap$KeySet<TK;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2B;->A01:Lcom/facebook/ads/redexgen/X/oX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oX;->size()I

    move-result v0

    return v0
.end method
