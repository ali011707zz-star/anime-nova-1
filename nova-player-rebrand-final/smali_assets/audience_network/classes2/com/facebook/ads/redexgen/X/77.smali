.class public final Lcom/facebook/ads/redexgen/X/77;
.super Lcom/facebook/ads/redexgen/X/hS;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 0

    .line 18471
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/hS;-><init>(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 18472
    return-void
.end method


# virtual methods
.method public final bridge synthetic A44(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 18473
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/hS;->A44(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public final bridge synthetic A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18474
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hS;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public final A4j(Ljava/lang/String;)V
    .locals 3

    .line 18475
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/hS;->A4j(Ljava/lang/String;)V

    .line 18476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18477
    return-void

    .line 18478
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/ez;->A08:Lcom/facebook/ads/redexgen/X/ez;

    .line 18479
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ez;->A03()Ljava/lang/String;

    move-result-object v2

    .line 18480
    .local v0, "rewardedVideoEndActivity":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/ez;->A09:Lcom/facebook/ads/redexgen/X/ez;

    .line 18481
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ez;->A03()Ljava/lang/String;

    move-result-object v1

    .line 18482
    .local v1, "rewardedVideoError":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Re;

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 18484
    return-void

    .line 18485
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hS;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Re;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 18487
    :cond_2
    return-void
.end method

.method public final bridge synthetic A4k(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18488
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hS;->A4k(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/UL;)V

    return-void
.end method

.method public final bridge synthetic AAo(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18489
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/hS;->AAo(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nm;)V

    return-void
.end method

.method public final bridge synthetic ADJ(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 18490
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/hS;->ADJ(I)V

    return-void
.end method
