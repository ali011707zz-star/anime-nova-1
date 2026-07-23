.class public final Lcom/facebook/ads/redexgen/X/Du;
.super Lcom/facebook/ads/redexgen/X/UL;
.source ""


# instance fields
.field public final A00:Landroid/view/MotionEvent;

.field public final A01:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 34418
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UL;-><init>()V

    .line 34419
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Du;->A01:Landroid/view/View;

    .line 34420
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Du;->A00:Landroid/view/MotionEvent;

    .line 34421
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/MotionEvent;
    .locals 1

    .line 34422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Du;->A00:Landroid/view/MotionEvent;

    return-object v0
.end method
