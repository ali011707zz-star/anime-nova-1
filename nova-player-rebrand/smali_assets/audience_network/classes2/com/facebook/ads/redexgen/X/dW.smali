.class public final Lcom/facebook/ads/redexgen/X/dW;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5F;->A0j(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5F;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5F;Z)V
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

    .line 80212
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:Lcom/facebook/ads/redexgen/X/5F;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/dW;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 80213
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 80214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0H(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/cd;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cd;->setTranslationY(F)V

    .line 80215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0a(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 80216
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0G(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0G(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->destroy()V

    .line 80218
    :cond_0
    return-void
.end method
