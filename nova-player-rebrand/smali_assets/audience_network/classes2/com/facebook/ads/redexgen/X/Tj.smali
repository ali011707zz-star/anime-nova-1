.class public abstract Lcom/facebook/ads/redexgen/X/Tj;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Ljava/lang/String;)V
    .locals 2

    .line 66030
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T7;->A00()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v1

    .line 66031
    .local v0, "sdkContext":Lcom/facebook/ads/redexgen/X/ge;
    if-eqz v1, :cond_0

    .line 66032
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Up;->A2V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66033
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Tc;->AA4(Ljava/lang/String;)V

    .line 66034
    :cond_0
    return-void
.end method
