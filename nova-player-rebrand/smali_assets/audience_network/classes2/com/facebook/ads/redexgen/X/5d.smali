.class public abstract Lcom/facebook/ads/redexgen/X/5d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/pF;)V
    .locals 0

    .line 15064
    if-eqz p0, :cond_0

    .line 15065
    :try_start_0
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/pF;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15066
    :catch_0
    :cond_0
    return-void
.end method
