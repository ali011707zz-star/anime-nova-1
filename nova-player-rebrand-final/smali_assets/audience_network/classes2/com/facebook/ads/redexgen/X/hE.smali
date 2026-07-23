.class public final Lcom/facebook/ads/redexgen/X/hE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/hC;->setListener(Lcom/facebook/ads/MediaViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/MediaViewListener;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/hC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/MediaViewListener;)V
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

    .line 84388
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hE;->A01:Lcom/facebook/ads/redexgen/X/hC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hE;->A00:Lcom/facebook/ads/MediaViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADQ()V
    .locals 2

    .line 84389
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hE;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hE;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A00(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onComplete(Lcom/facebook/ads/MediaView;)V

    .line 84390
    return-void
.end method

.method public final ADn()V
    .locals 2

    .line 84391
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hE;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hE;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A00(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onEnterFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 84392
    return-void
.end method

.method public final ADt()V
    .locals 2

    .line 84393
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hE;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hE;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A00(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onExitFullscreen(Lcom/facebook/ads/MediaView;)V

    .line 84394
    return-void
.end method

.method public final AE1()V
    .locals 2

    .line 84395
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hE;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hE;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A00(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenBackground(Lcom/facebook/ads/MediaView;)V

    .line 84396
    return-void
.end method

.method public final AE3()V
    .locals 2

    .line 84397
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hE;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hE;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A00(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onFullscreenForeground(Lcom/facebook/ads/MediaView;)V

    .line 84398
    return-void
.end method

.method public final AFC()V
    .locals 2

    .line 84399
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hE;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hE;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A00(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPlay(Lcom/facebook/ads/MediaView;)V

    .line 84400
    return-void
.end method

.method public final AGe()V
    .locals 3

    .line 84401
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hE;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hE;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A00(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hE;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A01(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVolume()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/MediaViewListener;->onVolumeChange(Lcom/facebook/ads/MediaView;F)V

    .line 84402
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 84403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hE;->A00:Lcom/facebook/ads/MediaViewListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hE;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A00(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/MediaViewListener;->onPause(Lcom/facebook/ads/MediaView;)V

    .line 84404
    return-void
.end method
