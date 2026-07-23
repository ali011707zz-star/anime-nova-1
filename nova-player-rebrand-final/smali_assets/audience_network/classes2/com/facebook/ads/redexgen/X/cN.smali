.class public final Lcom/facebook/ads/redexgen/X/cN;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KE;->A0i(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KE;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KE;Z)V
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

    .line 79155
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cN;->A00:Lcom/facebook/ads/redexgen/X/KE;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/cN;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 79156
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 79157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cN;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0F(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/cd;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cd;->setTranslationY(F)V

    .line 79158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cN;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0Y(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 79159
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cN;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cN;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0D(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cN;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0D(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/M3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M3;->destroy()V

    .line 79161
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cN;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0G(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cN;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0A(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1i()Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_3

    .line 79163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cN;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0G(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cN;->A01:Z

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/DZ;->setVisibility(I)V

    .line 79164
    :cond_1
    :goto_1
    return-void

    .line 79165
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 79166
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cN;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0G(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/DZ;->setVisibility(I)V

    goto :goto_1
.end method
