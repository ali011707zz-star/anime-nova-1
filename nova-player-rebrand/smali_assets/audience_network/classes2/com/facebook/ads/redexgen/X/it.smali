.class public final Lcom/facebook/ads/redexgen/X/it;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7a;->A0R(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/O8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7w;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/O8;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/7a;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7a;Lcom/facebook/ads/redexgen/X/O8;Lcom/facebook/ads/redexgen/X/7w;)V
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

    .line 87562
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/it;->A02:Lcom/facebook/ads/redexgen/X/7a;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/it;->A01:Lcom/facebook/ads/redexgen/X/O8;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/it;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 87563
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/it;->A02:Lcom/facebook/ads/redexgen/X/7a;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/it;->A01:Lcom/facebook/ads/redexgen/X/O8;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0T(Lcom/facebook/ads/redexgen/X/O8;)V

    .line 87564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/it;->A02:Lcom/facebook/ads/redexgen/X/7a;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/it;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0Q(Lcom/facebook/ads/redexgen/X/N1;)V

    .line 87565
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/it;->A02:Lcom/facebook/ads/redexgen/X/7a;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 87566
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->RV_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 87567
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/it;->A02:Lcom/facebook/ads/redexgen/X/7a;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/it;->A02:Lcom/facebook/ads/redexgen/X/7a;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    const-string v1, ""

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Vm;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87569
    return-void
.end method
