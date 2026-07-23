.class public final Lcom/facebook/ads/redexgen/X/jq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7y;->A01(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88998
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jq;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGh()V
    .locals 2

    .line 88999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A02(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AFD()V

    .line 89000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A06(Lcom/facebook/ads/redexgen/X/7w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jq;->A00:Lcom/facebook/ads/redexgen/X/7y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7y;->A01:Lcom/facebook/ads/redexgen/X/jh;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFm(Lcom/facebook/ads/redexgen/X/jh;)V

    .line 89002
    return-void
.end method
