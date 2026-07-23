.class public final Lcom/facebook/ads/redexgen/X/H0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Gj;->A0i(ILcom/facebook/ads/redexgen/X/Wc;Lcom/facebook/ads/redexgen/X/DZ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Wc;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Gj;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/DZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gj;ILcom/facebook/ads/redexgen/X/DZ;Lcom/facebook/ads/redexgen/X/Wc;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 38241
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/H0;->A02:Lcom/facebook/ads/redexgen/X/Gj;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/H0;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/H0;->A01:Lcom/facebook/ads/redexgen/X/Wc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 1

    .line 38242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A01:Lcom/facebook/ads/redexgen/X/Wc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wc;->run()V

    .line 38243
    return-void
.end method

.method public final AFV(F)V
    .locals 3

    .line 38244
    iget v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:I

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    .line 38245
    .local v1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A02:Lcom/facebook/ads/redexgen/X/Gj;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Gj;->A09:Lcom/facebook/ads/redexgen/X/Yb;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgress(F)V

    .line 38246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    if-eqz v0, :cond_0

    .line 38247
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/H0;->A03:Lcom/facebook/ads/redexgen/X/DZ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/H0;->A00:I

    int-to-float v1, v0

    sub-float/2addr v1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/DZ;->A07(I)V

    .line 38248
    :cond_0
    return-void
.end method
