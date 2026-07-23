.class public final Lcom/facebook/ads/redexgen/X/GE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4V;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37044
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9l()V
    .locals 4

    .line 37045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A07(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/6H;

    if-eqz v0, :cond_0

    .line 37046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A07(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6H;->A1X()V

    .line 37047
    sget-object v3, Lcom/facebook/ads/redexgen/X/VH;->A0e:Lcom/facebook/ads/redexgen/X/VH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37048
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 37049
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    .line 37050
    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;->A02(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 37051
    :cond_0
    return-void
.end method

.method public final AJz()V
    .locals 4

    .line 37052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A07(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/6H;

    if-eqz v0, :cond_0

    .line 37053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A07(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6H;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A09(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/4L;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A1b(Lcom/facebook/ads/redexgen/X/4L;)V

    .line 37054
    sget-object v3, Lcom/facebook/ads/redexgen/X/VH;->A0e:Lcom/facebook/ads/redexgen/X/VH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A03:Lcom/facebook/ads/redexgen/X/jd;

    .line 37055
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gj;->A05:Lcom/facebook/ads/redexgen/X/gi;

    .line 37056
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    .line 37057
    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;->A02(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 37058
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4V;->A0n()V

    .line 37059
    return-void
.end method

.method public final AKE()V
    .locals 2

    .line 37060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Gj;->A0e()V

    .line 37061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A07(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/6H;

    if-eqz v0, :cond_0

    .line 37062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A07(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/c3;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ka;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/bF;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->setVisibility(I)V

    .line 37063
    :cond_0
    return-void
.end method
