.class public final Lcom/facebook/ads/redexgen/X/Ym;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6x;->A0H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74385
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 74386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ym;->A00:Lcom/facebook/ads/redexgen/X/6x;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/PZ;->A08:Lcom/facebook/ads/redexgen/X/Re;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Re;->finish(I)V

    .line 74387
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 74388
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 74389
    return-void
.end method
