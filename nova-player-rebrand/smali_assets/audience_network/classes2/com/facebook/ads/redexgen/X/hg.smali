.class public final Lcom/facebook/ads/redexgen/X/hg;
.super Lcom/facebook/ads/redexgen/X/Qs;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7M;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 85059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hg;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qs;-><init>()V

    .line 85060
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 85061
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hg;->A00:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7M;->A1n(Ljava/lang/String;)V

    .line 85062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hg;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7M;->A0s:Lcom/facebook/ads/redexgen/X/RH;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/RH;->A0D:Z

    .line 85063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hg;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1R()V

    .line 85064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hg;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A00:Lcom/facebook/ads/redexgen/X/ht;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ht;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hg;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->requestLayout()V

    .line 85066
    :cond_0
    return-void
.end method
