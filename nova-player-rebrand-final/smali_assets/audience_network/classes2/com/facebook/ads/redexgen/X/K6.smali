.class public final Lcom/facebook/ads/redexgen/X/K6;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ji;->A0q(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ji;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ji;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 45062
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/K6;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/K6;->A01:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 45063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K6;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0J(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    .line 45064
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    if-eqz v1, :cond_0

    .line 45065
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/K6;->A01:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Yb;->A0E()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setPageDetailsVisible(Z)V

    .line 45066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K6;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ji;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 45067
    :cond_0
    return-void

    .line 45068
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
