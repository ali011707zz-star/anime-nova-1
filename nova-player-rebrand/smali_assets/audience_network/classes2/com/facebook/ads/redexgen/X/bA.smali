.class public final Lcom/facebook/ads/redexgen/X/bA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bB;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77537
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bA;->A00:Lcom/facebook/ads/redexgen/X/bB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 77538
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 77539
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bA;->A00:Lcom/facebook/ads/redexgen/X/bB;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bB;->A00(FF)V

    .line 77540
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
