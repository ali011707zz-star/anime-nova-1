.class public final Lcom/facebook/ads/redexgen/X/Qe;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XO;->A07()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60397
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qe;->A00:Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 60398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qe;->A00:Lcom/facebook/ads/redexgen/X/XO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qe;->A00:Lcom/facebook/ads/redexgen/X/XO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XO;->A03(Lcom/facebook/ads/redexgen/X/XO;)V

    .line 60400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qe;->A00:Lcom/facebook/ads/redexgen/X/XO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XO;->A01(Lcom/facebook/ads/redexgen/X/XO;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qe;->A00:Lcom/facebook/ads/redexgen/X/XO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XO;->A00(Lcom/facebook/ads/redexgen/X/XO;)J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60401
    :cond_0
    return-void
.end method
