.class public final Lcom/facebook/ads/redexgen/X/1z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/qQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioAttributesV21"
.end annotation


# instance fields
.field public final A00:Landroid/media/AudioAttributes;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/qQ;)V
    .locals 3

    .line 8744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8745
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A02:I

    .line 8746
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A03:I

    .line 8747
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A05:I

    .line 8748
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 8749
    .local v0, "builder":Landroid/media/AudioAttributes$Builder;
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    .line 8750
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A01:I

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/1x;->A00(Landroid/media/AudioAttributes$Builder;I)V

    .line 8751
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x20

    if-lt v1, v0, :cond_1

    .line 8752
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A04:I

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/1y;->A00(Landroid/media/AudioAttributes$Builder;I)V

    .line 8753
    :cond_1
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1z;->A00:Landroid/media/AudioAttributes;

    .line 8754
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/qQ;Lcom/facebook/ads/redexgen/X/1w;)V
    .locals 0

    .line 8755
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1z;-><init>(Lcom/facebook/ads/redexgen/X/qQ;)V

    return-void
.end method
