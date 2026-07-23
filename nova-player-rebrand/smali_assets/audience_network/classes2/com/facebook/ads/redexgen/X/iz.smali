.class public final Lcom/facebook/ads/redexgen/X/iz;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7j;->A0R(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/O8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/jz;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/O8;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/7j;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7j;Lcom/facebook/ads/redexgen/X/O8;Lcom/facebook/ads/redexgen/X/jz;)V
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

    .line 87747
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iz;->A02:Lcom/facebook/ads/redexgen/X/7j;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iz;->A01:Lcom/facebook/ads/redexgen/X/O8;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/iz;->A00:Lcom/facebook/ads/redexgen/X/jz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 87748
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iz;->A02:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iz;->A01:Lcom/facebook/ads/redexgen/X/O8;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0T(Lcom/facebook/ads/redexgen/X/O8;)V

    .line 87749
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iz;->A02:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iz;->A00:Lcom/facebook/ads/redexgen/X/jz;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/j0;->A0Q(Lcom/facebook/ads/redexgen/X/N1;)V

    .line 87750
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iz;->A02:Lcom/facebook/ads/redexgen/X/7j;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/j0;->A00:Lcom/facebook/ads/redexgen/X/N1;

    .line 87751
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v3

    .line 87752
    .local v0, "error":Lcom/facebook/ads/redexgen/X/Vm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iz;->A02:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 87753
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    .line 87754
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vm;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 87755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iz;->A02:Lcom/facebook/ads/redexgen/X/7j;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 87756
    return-void
.end method
