.class public final Lcom/facebook/ads/redexgen/X/Di;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/f7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/f7;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/f7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34299
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Di;->A00:Lcom/facebook/ads/redexgen/X/f7;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 34300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A00:Lcom/facebook/ads/redexgen/X/f7;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/f7;->A00:Lcom/facebook/ads/redexgen/X/3c;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3c;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A0E(Lcom/facebook/ads/redexgen/X/Dh;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A00:Lcom/facebook/ads/redexgen/X/f7;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/f7;->A00:Lcom/facebook/ads/redexgen/X/3c;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3c;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A0C(Lcom/facebook/ads/redexgen/X/Dh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A00:Lcom/facebook/ads/redexgen/X/f7;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/f7;->A00:Lcom/facebook/ads/redexgen/X/3c;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3c;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A09(Lcom/facebook/ads/redexgen/X/Dh;)V

    .line 34302
    :cond_0
    return-void
.end method
