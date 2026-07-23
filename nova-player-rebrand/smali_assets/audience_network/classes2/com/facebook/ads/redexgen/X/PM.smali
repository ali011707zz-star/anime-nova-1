.class public final Lcom/facebook/ads/redexgen/X/PM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PJ;->A0e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/PJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PJ;I)V
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

    .line 57525
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PM;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/PM;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 2

    .line 57526
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PM;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0a(Lcom/facebook/ads/redexgen/X/PJ;Z)Z

    .line 57527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PM;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0c()V

    .line 57528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PM;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PM;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PJ;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 57529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PM;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/PJ;->A09:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PM;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PJ;->A08:Lcom/facebook/ads/redexgen/X/ea;

    if-eqz v0, :cond_0

    .line 57530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PM;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PJ;->A08:Lcom/facebook/ads/redexgen/X/ea;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ea;->A06()V

    .line 57531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PM;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PJ;->A0P(Lcom/facebook/ads/redexgen/X/PJ;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/MG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/MG;-><init>()V

    .line 57532
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MG;->A6l()Ljava/lang/String;

    move-result-object v0

    .line 57533
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 57534
    :cond_0
    return-void
.end method

.method public final AFV(F)V
    .locals 3

    .line 57535
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PM;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 57536
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PM;->A01:Lcom/facebook/ads/redexgen/X/PJ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/PJ;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgress(F)V

    .line 57537
    return-void
.end method
