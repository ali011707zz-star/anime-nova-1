.class public final Lcom/facebook/ads/redexgen/X/GY;
.super Lcom/facebook/ads/redexgen/X/YA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/GX;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/GX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GX;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37164
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GY;->A00:Lcom/facebook/ads/redexgen/X/GX;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YA;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 37165
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GY;->A00:Lcom/facebook/ads/redexgen/X/GX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GX;->A01:Lcom/facebook/ads/redexgen/X/dq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 37166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GY;->A00:Lcom/facebook/ads/redexgen/X/GX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GX;->A00:Lcom/facebook/ads/redexgen/X/dp;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dp;->AEL()V

    .line 37167
    return-void
.end method
