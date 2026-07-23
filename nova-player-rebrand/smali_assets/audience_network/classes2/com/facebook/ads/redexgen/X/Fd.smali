.class public final Lcom/facebook/ads/redexgen/X/Fd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Rk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4T;->AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Re;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/4T;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4T;Lcom/facebook/ads/redexgen/X/Re;)V
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

    .line 35958
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A01:Lcom/facebook/ads/redexgen/X/4T;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fd;->A00:Lcom/facebook/ads/redexgen/X/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAI()Z
    .locals 3

    .line 35959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A01:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0i()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 35960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A01:Lcom/facebook/ads/redexgen/X/4T;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A00:Lcom/facebook/ads/redexgen/X/Re;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0h(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 35961
    return v2

    .line 35962
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A01:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0M(Lcom/facebook/ads/redexgen/X/4T;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35963
    return v2

    .line 35964
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A01:Lcom/facebook/ads/redexgen/X/4T;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0N(Lcom/facebook/ads/redexgen/X/4T;)Z

    move-result v0

    return v0
.end method
