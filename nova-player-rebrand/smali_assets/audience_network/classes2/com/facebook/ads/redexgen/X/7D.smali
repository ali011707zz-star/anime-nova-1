.class public final Lcom/facebook/ads/redexgen/X/7D;
.super Lcom/facebook/ads/redexgen/X/E8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Rz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rz;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 18683
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E8;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 3

    .line 18684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 18685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v2

    .line 18686
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1o(ZZ)V

    .line 18687
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7D;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A00(Lcom/facebook/ads/redexgen/X/Rz;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onError()V

    .line 18688
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 18689
    check-cast p1, Lcom/facebook/ads/redexgen/X/E9;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7D;->A00(Lcom/facebook/ads/redexgen/X/E9;)V

    return-void
.end method
