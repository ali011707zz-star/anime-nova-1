.class public final Lcom/facebook/ads/redexgen/X/W4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/VX;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Vz;->A03(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/W4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Vz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vz;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V
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

    .line 70136
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:Lcom/facebook/ads/redexgen/X/Vz;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AJU()V
    .locals 2

    .line 70137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:Lcom/facebook/ads/redexgen/X/Vz;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vz;->A00(Lcom/facebook/ads/redexgen/X/Vz;F)F

    .line 70138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    .line 70139
    return-void
.end method

.method public final AJZ(Lcom/facebook/ads/NativeAd;)V
    .locals 4

    .line 70140
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeOptions()Lcom/facebook/ads/NativeAd$NativeOptions;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A01(Lcom/facebook/ads/redexgen/X/Vz;Lcom/facebook/ads/NativeAd$NativeOptions;)Lcom/facebook/ads/NativeAd$NativeOptions;

    .line 70141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0L(Lcom/facebook/ads/redexgen/X/Vz;)V

    .line 70142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0M(Lcom/facebook/ads/redexgen/X/Vz;)V

    .line 70143
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:Lcom/facebook/ads/redexgen/X/Vz;

    .line 70144
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v2

    .line 70145
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/W0;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/W0;-><init>(Lcom/facebook/ads/redexgen/X/UK;)V

    .line 70146
    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0O(Lcom/facebook/ads/redexgen/X/Vz;Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/VV;)V

    .line 70147
    return-void
.end method

.method public final AKY()V
    .locals 1

    .line 70148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0N(Lcom/facebook/ads/redexgen/X/Vz;)V

    .line 70149
    return-void
.end method
