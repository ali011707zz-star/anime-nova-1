.class public final Lcom/facebook/ads/redexgen/X/Fu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Rk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4U;->AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Re;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/4U;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4U;Lcom/facebook/ads/redexgen/X/Re;)V
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

    .line 36432
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fu;->A01:Lcom/facebook/ads/redexgen/X/4U;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fu;->A00:Lcom/facebook/ads/redexgen/X/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAI()Z
    .locals 3

    .line 36433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fu;->A01:Lcom/facebook/ads/redexgen/X/4U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0i()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 36434
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fu;->A01:Lcom/facebook/ads/redexgen/X/4U;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fu;->A00:Lcom/facebook/ads/redexgen/X/Re;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0h(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 36435
    return v2

    .line 36436
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fu;->A01:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A0M(Lcom/facebook/ads/redexgen/X/4U;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36437
    return v2

    .line 36438
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fu;->A01:Lcom/facebook/ads/redexgen/X/4U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4U;->A0N(Lcom/facebook/ads/redexgen/X/4U;)Z

    move-result v0

    return v0
.end method
