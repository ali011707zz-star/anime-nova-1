.class public final Lcom/facebook/ads/redexgen/X/3c;
.super Lcom/facebook/ads/redexgen/X/Dt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dh;
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

    .line 10607
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3c;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dt;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Du;)V
    .locals 2

    .line 10608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A02(Lcom/facebook/ads/redexgen/X/Dh;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10609
    return-void

    .line 10610
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Du;->A00()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 10611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3c;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dh;->A00(Lcom/facebook/ads/redexgen/X/Dh;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10612
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3c;->A00:Lcom/facebook/ads/redexgen/X/Dh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/f7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/f7;-><init>(Lcom/facebook/ads/redexgen/X/3c;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A0B(Lcom/facebook/ads/redexgen/X/Dh;Landroid/animation/AnimatorListenerAdapter;)V

    .line 10613
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 10614
    check-cast p1, Lcom/facebook/ads/redexgen/X/Du;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3c;->A00(Lcom/facebook/ads/redexgen/X/Du;)V

    return-void
.end method
