.class public final Lcom/facebook/ads/redexgen/X/f8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Dh;->A05()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82176
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/f8;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 82177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/f8;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A01(Lcom/facebook/ads/redexgen/X/Dh;)Landroid/view/View;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82178
    return-void
.end method
