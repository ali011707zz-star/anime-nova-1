.class public final Lcom/facebook/ads/redexgen/X/41;
.super Lcom/facebook/ads/redexgen/X/EA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11119
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 3

    .line 11120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Dm;->A0E(Lcom/facebook/ads/redexgen/X/Dm;Z)Z

    .line 11121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A09(Lcom/facebook/ads/redexgen/X/Dm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11122
    return-void

    .line 11123
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A04(Lcom/facebook/ads/redexgen/X/Dm;)V

    .line 11124
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    const/4 v0, 0x0

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A05(Lcom/facebook/ads/redexgen/X/Dm;ZZ)V

    .line 11125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/41;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Dm;->A0D(Lcom/facebook/ads/redexgen/X/Dm;Z)Z

    .line 11126
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

    .line 11127
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/41;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
