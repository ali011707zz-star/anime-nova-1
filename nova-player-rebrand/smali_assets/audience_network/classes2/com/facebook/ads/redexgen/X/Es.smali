.class public final Lcom/facebook/ads/redexgen/X/Es;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ek;->A0I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ek;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35220
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Es;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 35221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Es;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0U(Lcom/facebook/ads/redexgen/X/Ek;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Es;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Es;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getCurrentPositionInMillis()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4A;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4A;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Es;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A08(Lcom/facebook/ads/redexgen/X/Ek;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Es;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A07(Lcom/facebook/ads/redexgen/X/Ek;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35224
    :cond_0
    return-void
.end method
