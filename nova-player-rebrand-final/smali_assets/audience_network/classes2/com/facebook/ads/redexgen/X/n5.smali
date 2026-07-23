.class public final Lcom/facebook/ads/redexgen/X/n5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Az;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/10;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/10;Lcom/facebook/ads/redexgen/X/B0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 99808
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/n5;->A00:Lcom/facebook/ads/redexgen/X/10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99809
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/redexgen/X/B0;->AJa(Lcom/facebook/ads/redexgen/X/Az;Landroid/os/Handler;)V

    .line 99810
    return-void
.end method


# virtual methods
.method public final ADz(Lcom/facebook/ads/redexgen/X/B0;JJ)V
    .locals 1

    .line 99811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n5;->A00:Lcom/facebook/ads/redexgen/X/10;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/10;->A00:Lcom/facebook/ads/redexgen/X/n5;

    if-eq p0, v0, :cond_0

    .line 99812
    return-void

    .line 99813
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n5;->A00:Lcom/facebook/ads/redexgen/X/10;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/10;->A27()V

    .line 99814
    return-void
.end method
