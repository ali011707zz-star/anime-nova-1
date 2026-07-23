.class public final Lcom/facebook/ads/redexgen/X/42;
.super Lcom/facebook/ads/redexgen/X/E4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11128
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/42;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E4;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 3

    .line 11129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/42;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A01(Lcom/facebook/ads/redexgen/X/Dm;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11130
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/42;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A04:Lcom/facebook/ads/redexgen/X/fJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0C(Lcom/facebook/ads/redexgen/X/Dm;Lcom/facebook/ads/redexgen/X/fJ;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 11131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/42;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A04(Lcom/facebook/ads/redexgen/X/Dm;)V

    .line 11132
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/42;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A05(Lcom/facebook/ads/redexgen/X/Dm;ZZ)V

    .line 11133
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/42;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Dm;->A0D(Lcom/facebook/ads/redexgen/X/Dm;Z)Z

    .line 11134
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11135
    check-cast p1, Lcom/facebook/ads/redexgen/X/4B;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/42;->A00(Lcom/facebook/ads/redexgen/X/4B;)V

    return-void
.end method
