.class public final Lcom/facebook/ads/redexgen/X/hn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/RR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7M;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85147
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AH9(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)V
    .locals 1

    .line 85148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7M;->A1l(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)V

    .line 85149
    return-void
.end method

.method public final AHB(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)V
    .locals 1

    .line 85150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0r:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RA;->A0Y(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 85151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7M;->A1m(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)V

    .line 85152
    return-void
.end method

.method public final AHD(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)V
    .locals 1

    .line 85153
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0d(Z)V

    .line 85154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0C:Z

    if-eqz v0, :cond_1

    .line 85155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A05:Lcom/facebook/ads/redexgen/X/Qy;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Qy;->A0R(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1O()V

    .line 85157
    :cond_0
    :goto_0
    return-void

    .line 85158
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A05:Lcom/facebook/ads/redexgen/X/Qy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Qy;->A0Q(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/Qx;Lcom/facebook/ads/redexgen/X/Qx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1O()V

    goto :goto_0
.end method

.method public final AKZ(Lcom/facebook/ads/redexgen/X/RK;)V
    .locals 3

    .line 85160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7M;->A06:Lcom/facebook/ads/redexgen/X/R2;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/RK;->A0H:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hn;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A0r:Lcom/facebook/ads/redexgen/X/RA;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/R2;->A1F(Landroid/view/View;Lcom/facebook/ads/redexgen/X/RA;)V

    .line 85161
    return-void
.end method
