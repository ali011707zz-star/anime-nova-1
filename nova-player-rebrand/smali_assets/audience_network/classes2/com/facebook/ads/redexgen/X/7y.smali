.class public final Lcom/facebook/ads/redexgen/X/7y;
.super Lcom/facebook/ads/redexgen/X/j4;
.source ""


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

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/jh;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/7l;

.field public final synthetic A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7w;ZZLcom/facebook/ads/redexgen/X/7l;Lcom/facebook/ads/redexgen/X/jh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 21904
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/7y;->A03:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7y;->A02:Lcom/facebook/ads/redexgen/X/7l;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:Lcom/facebook/ads/redexgen/X/jh;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/j4;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 3

    .line 21905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:Lcom/facebook/ads/redexgen/X/jh;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFp(Lcom/facebook/ads/redexgen/X/jh;Lcom/facebook/ads/AdError;)V

    .line 21906
    return-void
.end method

.method public final A01(Z)V
    .locals 5

    .line 21907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A02(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A03:Z

    if-eqz v0, :cond_0

    .line 21908
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    .line 21909
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A02(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7y;->A02:Lcom/facebook/ads/redexgen/X/7l;

    new-instance v1, Lcom/facebook/ads/redexgen/X/jq;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/jq;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    .line 21910
    const/4 v0, 0x0

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/dD;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;ILcom/facebook/ads/redexgen/X/dA;)Lcom/facebook/ads/redexgen/X/dC;

    move-result-object v0

    .line 21911
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/7w;->A04(Lcom/facebook/ads/redexgen/X/7w;Lcom/facebook/ads/redexgen/X/dC;)Lcom/facebook/ads/redexgen/X/dC;

    .line 21912
    :goto_0
    return-void

    .line 21913
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A03(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/WK;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/WK;->A0J:Lcom/facebook/ads/redexgen/X/WK;

    if-ne v1, v0, :cond_1

    .line 21914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A02(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AER()V

    .line 21915
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A06(Lcom/facebook/ads/redexgen/X/7w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7w;->A00(Lcom/facebook/ads/redexgen/X/7w;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:Lcom/facebook/ads/redexgen/X/jh;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->AFm(Lcom/facebook/ads/redexgen/X/jh;)V

    goto :goto_0
.end method
