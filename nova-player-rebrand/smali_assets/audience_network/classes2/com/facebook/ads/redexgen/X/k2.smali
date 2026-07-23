.class public final Lcom/facebook/ads/redexgen/X/k2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/d1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/81;->A0C(ILcom/facebook/ads/redexgen/X/Tx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/81;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/81;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89395
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k2;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/k2;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAn()V
    .locals 4

    .line 89396
    .local p1, "this":Lcom/facebook/ads/redexgen/X/k2;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k2;->A00:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A02(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/7o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A00()Ljava/lang/String;

    move-result-object v1

    .line 89397
    .local v0, "adChoice":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89398
    new-instance v3, Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/X6;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k2;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 89399
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A03(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/76;

    move-result-object v2

    .line 89400
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k2;->A00:Lcom/facebook/ads/redexgen/X/81;

    .line 89401
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/81;->A7O()Ljava/lang/String;

    move-result-object v0

    .line 89402
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/X6;->A0O(Lcom/facebook/ads/redexgen/X/X6;Lcom/facebook/ads/redexgen/X/gi;Landroid/net/Uri;Ljava/lang/String;)Z

    .line 89403
    :cond_0
    return-void
.end method

.method public final ADm(Lcom/facebook/ads/redexgen/X/62;)V
    .locals 4

    .line 89404
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k2;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/k3;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/k3;-><init>(Lcom/facebook/ads/redexgen/X/k2;Lcom/facebook/ads/redexgen/X/62;)V

    .line 89405
    const-wide/16 v0, 0x1

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89406
    return-void
.end method

.method public final AE2()V
    .locals 0

    .line 89407
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k2;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    return-void
.end method

.method public final AGC(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 89408
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k2;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$2;"
    return-void
.end method
