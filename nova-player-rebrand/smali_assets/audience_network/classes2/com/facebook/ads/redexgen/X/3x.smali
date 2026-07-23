.class public final Lcom/facebook/ads/redexgen/X/3x;
.super Lcom/facebook/ads/redexgen/X/E2;
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

    .line 11024
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E2;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E3;)V
    .locals 4

    .line 11025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A09(Lcom/facebook/ads/redexgen/X/Dm;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A08(Lcom/facebook/ads/redexgen/X/Dm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11026
    return-void

    .line 11027
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A07(Lcom/facebook/ads/redexgen/X/Dm;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0A(Lcom/facebook/ads/redexgen/X/Dm;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Dm;->A0D(Lcom/facebook/ads/redexgen/X/Dm;Z)Z

    .line 11029
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A03:Lcom/facebook/ads/redexgen/X/fJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0C(Lcom/facebook/ads/redexgen/X/Dm;Lcom/facebook/ads/redexgen/X/fJ;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    .line 11030
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0B(Lcom/facebook/ads/redexgen/X/Dm;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11031
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Dm;->A0F(Lcom/facebook/ads/redexgen/X/Dm;Z)Z

    .line 11032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A01(Lcom/facebook/ads/redexgen/X/Dm;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/Do;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Do;-><init>(Lcom/facebook/ads/redexgen/X/3x;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    .line 11033
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A00(Lcom/facebook/ads/redexgen/X/Dm;)I

    move-result v0

    int-to-long v0, v0

    .line 11034
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11035
    :cond_2
    :goto_0
    return-void

    .line 11036
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fJ;->A02:Lcom/facebook/ads/redexgen/X/fJ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A0C(Lcom/facebook/ads/redexgen/X/Dm;Lcom/facebook/ads/redexgen/X/fJ;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A04(Lcom/facebook/ads/redexgen/X/Dm;)V

    .line 11038
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    const/4 v0, 0x1

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A05(Lcom/facebook/ads/redexgen/X/Dm;ZZ)V

    goto :goto_0
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

    .line 11039
    check-cast p1, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3x;->A00(Lcom/facebook/ads/redexgen/X/E3;)V

    return-void
.end method
