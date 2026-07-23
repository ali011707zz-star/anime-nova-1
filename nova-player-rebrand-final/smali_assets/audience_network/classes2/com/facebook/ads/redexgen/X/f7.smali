.class public final Lcom/facebook/ads/redexgen/X/f7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3c;->A00(Lcom/facebook/ads/redexgen/X/Du;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3c;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82173
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/f7;->A00:Lcom/facebook/ads/redexgen/X/3c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 82174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/f7;->A00:Lcom/facebook/ads/redexgen/X/3c;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3c;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A00(Lcom/facebook/ads/redexgen/X/Dh;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/Di;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Di;-><init>(Lcom/facebook/ads/redexgen/X/f7;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82175
    return-void
.end method
