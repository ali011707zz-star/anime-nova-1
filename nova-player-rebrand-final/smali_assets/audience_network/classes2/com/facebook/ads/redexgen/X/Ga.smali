.class public final Lcom/facebook/ads/redexgen/X/Ga;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4x;->A0h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37173
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ga;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 37174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ga;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4x;->A02(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ga;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4x;->A02(Lcom/facebook/ads/redexgen/X/4x;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c3;->A1F()V

    .line 37176
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ga;->A00:Lcom/facebook/ads/redexgen/X/4x;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ga;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4x;->A00(Lcom/facebook/ads/redexgen/X/4x;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 37177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ga;->A00:Lcom/facebook/ads/redexgen/X/4x;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0A()V

    .line 37178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ga;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4x;->A04(Lcom/facebook/ads/redexgen/X/4x;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37179
    return-void
.end method
