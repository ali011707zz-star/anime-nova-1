.class public final Lcom/facebook/ads/redexgen/X/h8;
.super Lcom/facebook/ads/redexgen/X/WP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/h5;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/h5;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Vm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/h5;Lcom/facebook/ads/redexgen/X/Vm;)V
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

    .line 83751
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/h8;->A00:Lcom/facebook/ads/redexgen/X/h5;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/h8;->A01:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WP;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 83752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h8;->A00:Lcom/facebook/ads/redexgen/X/h5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A01(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/S6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S6;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h8;->A00:Lcom/facebook/ads/redexgen/X/h5;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/h5;->A01(Lcom/facebook/ads/redexgen/X/h5;)Lcom/facebook/ads/redexgen/X/S6;

    move-result-object v0

    .line 83754
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S6;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h8;->A01:Lcom/facebook/ads/redexgen/X/Vm;

    .line 83755
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XE;->A00(Lcom/facebook/ads/redexgen/X/Vm;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdError(Lcom/facebook/ads/AdError;)V

    .line 83756
    :cond_0
    return-void
.end method
