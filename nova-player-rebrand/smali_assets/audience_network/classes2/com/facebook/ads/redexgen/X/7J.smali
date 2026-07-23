.class public final Lcom/facebook/ads/redexgen/X/7J;
.super Lcom/facebook/ads/redexgen/X/E2;
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

    .line 18982
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7J;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E2;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E3;)V
    .locals 2

    .line 18983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 18984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rz;->A08:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v1

    .line 18985
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1o(ZZ)V

    .line 18986
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7J;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A00(Lcom/facebook/ads/redexgen/X/Rz;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPlayed()V

    .line 18987
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

    .line 18988
    check-cast p1, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7J;->A00(Lcom/facebook/ads/redexgen/X/E3;)V

    return-void
.end method
