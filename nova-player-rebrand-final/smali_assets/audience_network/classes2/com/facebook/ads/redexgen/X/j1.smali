.class public final Lcom/facebook/ads/redexgen/X/j1;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/j0;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/j0;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Vm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/j0;Lcom/facebook/ads/redexgen/X/Vm;)V
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

    .line 88046
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/j1;->A00:Lcom/facebook/ads/redexgen/X/j0;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/j1;->A01:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 88047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j1;->A00:Lcom/facebook/ads/redexgen/X/j0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 88048
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j1;->A01:Lcom/facebook/ads/redexgen/X/Vm;

    .line 88049
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vm;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j1;->A01:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vm;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A5g(ILjava/lang/String;)V

    .line 88050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j1;->A00:Lcom/facebook/ads/redexgen/X/j0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    if-eqz v0, :cond_0

    .line 88051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j1;->A00:Lcom/facebook/ads/redexgen/X/j0;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/j0;->A07:Lcom/facebook/ads/redexgen/X/N2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j1;->A01:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N2;->A0G(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 88052
    :cond_0
    return-void
.end method
