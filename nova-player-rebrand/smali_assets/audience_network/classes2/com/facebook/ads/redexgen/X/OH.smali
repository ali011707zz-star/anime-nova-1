.class public final Lcom/facebook/ads/redexgen/X/OH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/if;->A0F(Lcom/facebook/ads/redexgen/X/N1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/jd;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/if;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/if;Lcom/facebook/ads/redexgen/X/jd;)V
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

    .line 55414
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OH;->A00:Lcom/facebook/ads/redexgen/X/jd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 55415
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 55416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 55417
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 55418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A02(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;

    .line 55419
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OH;->A00:Lcom/facebook/ads/redexgen/X/jd;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A2J(Z)V

    .line 55420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 55421
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 55422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A0C(Lcom/facebook/ads/redexgen/X/id;Z)Z

    .line 55423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ih;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ih;-><init>(Lcom/facebook/ads/redexgen/X/OH;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0S(Lcom/facebook/ads/redexgen/X/N2;)V

    .line 55425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0N()V

    .line 55426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A06(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/7j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/j0;->A0K()V

    .line 55427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/id;->A07(Lcom/facebook/ads/redexgen/X/id;Lcom/facebook/ads/redexgen/X/7j;)Lcom/facebook/ads/redexgen/X/7j;

    .line 55428
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A03(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:Lcom/facebook/ads/redexgen/X/if;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/if;->A00:Lcom/facebook/ads/redexgen/X/id;

    .line 55429
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/id;->A08(Lcom/facebook/ads/redexgen/X/id;)Lcom/facebook/ads/redexgen/X/iY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/iY;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    .line 55430
    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    .line 55431
    return-void
.end method

.method public final onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 55432
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 55433
    return-void
.end method
