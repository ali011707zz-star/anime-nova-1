.class public final Lcom/facebook/ads/redexgen/X/cg;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ji;->A0q(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ji;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ji;Z)V
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

    .line 79343
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cg;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/cg;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 79344
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 79345
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cg;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cg;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0z(Lcom/facebook/ads/redexgen/X/Ji;)Z

    move-result v1

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0l(Lcom/facebook/ads/redexgen/X/Ji;ZZ)V

    .line 79346
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cg;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cg;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0E(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cg;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0E(Lcom/facebook/ads/redexgen/X/Ji;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->destroy()V

    .line 79348
    :cond_0
    return-void
.end method
