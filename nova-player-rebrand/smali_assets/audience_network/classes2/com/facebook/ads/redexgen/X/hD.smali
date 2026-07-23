.class public final Lcom/facebook/ads/redexgen/X/hD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/hC;->A0P(Lcom/facebook/ads/redexgen/X/UK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/hC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hC;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84381
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/hC;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 1

    .line 84382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A02(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABa()V

    .line 84383
    return-void
.end method

.method public final AFV(F)V
    .locals 3

    .line 84384
    iget v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 84385
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A03(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/redexgen/X/bX;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hD;->A01:Lcom/facebook/ads/redexgen/X/hC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hC;->A03(Lcom/facebook/ads/redexgen/X/hC;)Lcom/facebook/ads/redexgen/X/bX;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bX;->setProgressWithAnimation(F)V

    .line 84387
    :cond_0
    return-void
.end method
