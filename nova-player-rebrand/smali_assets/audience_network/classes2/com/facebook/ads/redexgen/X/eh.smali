.class public final Lcom/facebook/ads/redexgen/X/eh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ek;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81802
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eh;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 81803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eh;->A00:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Du;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Du;-><init>(Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 81804
    const/4 v0, 0x0

    return v0
.end method
