.class public final Lcom/facebook/ads/redexgen/X/6C;
.super Lcom/facebook/ads/redexgen/X/Dr;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/67;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/67;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15912
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6C;->A00:Lcom/facebook/ads/redexgen/X/67;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dr;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ds;)V
    .locals 2

    .line 15913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6C;->A00:Lcom/facebook/ads/redexgen/X/67;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A00(Lcom/facebook/ads/redexgen/X/67;)Lcom/facebook/ads/redexgen/X/Fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0P()Lcom/facebook/ads/redexgen/X/ct;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6C;->A00:Lcom/facebook/ads/redexgen/X/67;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/67;->getVideoView()Lcom/facebook/ads/redexgen/X/e8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e8;->getVolume()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ct;->setVolume(F)V

    .line 15914
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

    .line 15915
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ds;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6C;->A00(Lcom/facebook/ads/redexgen/X/Ds;)V

    return-void
.end method
