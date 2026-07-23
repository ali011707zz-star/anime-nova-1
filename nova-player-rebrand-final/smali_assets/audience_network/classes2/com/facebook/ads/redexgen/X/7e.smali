.class public final Lcom/facebook/ads/redexgen/X/7e;
.super Lcom/facebook/ads/redexgen/X/Q9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Q9<",
        "Lcom/facebook/ads/redexgen/X/iu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iu;)V
    .locals 0

    .line 21418
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Ljava/lang/Object;)V

    .line 21419
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 21420
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Q9;->A08()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/iu;

    .line 21421
    .local v0, "controller":Lcom/facebook/ads/redexgen/X/iu;
    if-nez v1, :cond_0

    .line 21422
    return-void

    .line 21423
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/iu;->A01(Lcom/facebook/ads/redexgen/X/iu;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A02(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21424
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/iu;->A07()V

    .line 21425
    :goto_0
    return-void

    .line 21426
    :cond_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/iu;->A00(Lcom/facebook/ads/redexgen/X/iu;)Landroid/os/Handler;

    move-result-object v3

    .line 21427
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/iu;->A02(Lcom/facebook/ads/redexgen/X/iu;)Ljava/lang/Runnable;

    move-result-object v2

    .line 21428
    const-wide/16 v0, 0x1388

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
