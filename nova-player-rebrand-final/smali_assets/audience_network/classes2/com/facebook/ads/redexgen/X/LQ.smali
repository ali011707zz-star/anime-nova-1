.class public final Lcom/facebook/ads/redexgen/X/LQ;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/b6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/b6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50309
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 50310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A05(Lcom/facebook/ads/redexgen/X/b6;)V

    .line 50311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A06(Lcom/facebook/ads/redexgen/X/b6;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A00(Lcom/facebook/ads/redexgen/X/b6;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LQ;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A01(Lcom/facebook/ads/redexgen/X/b6;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50313
    :cond_0
    return-void
.end method
