.class public final Lcom/facebook/ads/redexgen/X/GD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/GB;->A0A()Lcom/facebook/ads/redexgen/X/4V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/GB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GB;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37025
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AIY()V
    .locals 5

    .line 37026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A0D(Lcom/facebook/ads/redexgen/X/GB;)V

    .line 37027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A0E(Lcom/facebook/ads/redexgen/X/GB;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GB;->A01:Lcom/facebook/ads/redexgen/X/Yi;

    if-eqz v0, :cond_1

    .line 37028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GB;->A01:Lcom/facebook/ads/redexgen/X/Yi;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/MW;

    if-eqz v0, :cond_0

    .line 37029
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GB;->A01:Lcom/facebook/ads/redexgen/X/Yi;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A07(Lcom/facebook/ads/redexgen/X/GB;Lcom/facebook/ads/redexgen/X/Yi;)Lcom/facebook/ads/redexgen/X/Yi;

    .line 37030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A06(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/MW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0b()V

    .line 37031
    :cond_0
    return-void

    .line 37032
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A03(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 37033
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    .line 37034
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A09(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    .line 37035
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A03(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/No;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    .line 37036
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A02(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 37037
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GB;->A08(Lcom/facebook/ads/redexgen/X/GB;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/No;Ljava/lang/Boolean;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v0

    .line 37038
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/GB;->A07(Lcom/facebook/ads/redexgen/X/GB;Lcom/facebook/ads/redexgen/X/Yi;)Lcom/facebook/ads/redexgen/X/Yi;

    .line 37039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A00(Lcom/facebook/ads/redexgen/X/GB;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GB;->A00:Lcom/facebook/ads/redexgen/X/Re;

    if-eqz v0, :cond_2

    .line 37040
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A06(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/Yi;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A00(Lcom/facebook/ads/redexgen/X/GB;)Landroid/content/Intent;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A01(Lcom/facebook/ads/redexgen/X/GB;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GB;->A00:Lcom/facebook/ads/redexgen/X/Re;

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yi;->AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V

    .line 37041
    :cond_2
    :goto_0
    return-void

    .line 37042
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A04(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A09(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A81()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 37043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A04(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GD;->A00:Lcom/facebook/ads/redexgen/X/GB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GB;->A09(Lcom/facebook/ads/redexgen/X/GB;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    goto :goto_0
.end method
