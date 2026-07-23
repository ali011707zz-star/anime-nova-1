.class public final Lcom/facebook/ads/redexgen/X/6S;
.super Lcom/facebook/ads/redexgen/X/Dr;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6M;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6M;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 16855
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6S;->A00:Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dr;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ds;)V
    .locals 2

    .line 16856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6S;->A00:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->getVideoView()Lcom/facebook/ads/redexgen/X/e8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6S;->A00:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6M;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0P()Lcom/facebook/ads/redexgen/X/ct;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6S;->A00:Lcom/facebook/ads/redexgen/X/6M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6M;->getVideoView()Lcom/facebook/ads/redexgen/X/e8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->getVolume()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ct;->setVolume(F)V

    .line 16858
    :cond_0
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

    .line 16859
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ds;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6S;->A00(Lcom/facebook/ads/redexgen/X/Ds;)V

    return-void
.end method
