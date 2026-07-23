.class public final Lcom/facebook/ads/redexgen/X/VT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Vz;->onPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Vz;

.field public final synthetic A01:Z

.field public final synthetic A02:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vz;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69407
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VT;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/VT;->A02:Z

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/VT;->A01:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 69408
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VT;->A02:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VT;->A01:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VT;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    .line 69409
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A02(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69410
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 69411
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
