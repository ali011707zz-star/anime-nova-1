.class public final Lcom/facebook/ads/redexgen/X/jr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/SM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7w;->A0G(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7w;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7w;Z)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89003
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/jr;->A01:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACx()V
    .locals 5

    .line 89004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A02(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A01:Z

    if-eqz v0, :cond_0

    .line 89005
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    .line 89006
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A02(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    .line 89007
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A01(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NQ;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/7l;

    new-instance v1, Lcom/facebook/ads/redexgen/X/js;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/js;-><init>(Lcom/facebook/ads/redexgen/X/jr;)V

    .line 89008
    const/4 v0, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/dD;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/dA;)Lcom/facebook/ads/redexgen/X/dC;

    move-result-object v0

    .line 89009
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(Lcom/facebook/ads/redexgen/X/7w;Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/dC;

    .line 89010
    :goto_0
    return-void

    .line 89011
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A06(Lcom/facebook/ads/redexgen/X/7w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFm(Lcom/facebook/ads/redexgen/X/jh;)V

    goto :goto_0
.end method

.method public final ACy()V
    .locals 3

    .line 89013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jr;->A00:Lcom/facebook/ads/redexgen/X/7w;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    .line 89014
    return-void
.end method
