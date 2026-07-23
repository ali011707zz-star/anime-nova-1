.class public final Lcom/facebook/ads/redexgen/X/h7;
.super Lcom/facebook/ads/redexgen/X/WP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/h6;->A00()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/h6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/h6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83747
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/h7;->A00:Lcom/facebook/ads/redexgen/X/h6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WP;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 83748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h7;->A00:Lcom/facebook/ads/redexgen/X/h6;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A01(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/S6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S6;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h7;->A00:Lcom/facebook/ads/redexgen/X/h6;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A01(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/S6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S6;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdsLoaded()V

    .line 83750
    :cond_0
    return-void
.end method
