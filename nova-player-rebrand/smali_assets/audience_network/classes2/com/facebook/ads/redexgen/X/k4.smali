.class public final Lcom/facebook/ads/redexgen/X/k4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/SM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/81;->A0G(Lcom/facebook/ads/redexgen/X/Vp;Lcom/facebook/ads/redexgen/X/Tx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/81;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/81;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Tx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/81;ILcom/facebook/ads/redexgen/X/Tx;Lcom/facebook/ads/redexgen/X/81;)V
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

    .line 89415
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k4;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/k4;->A01:Lcom/facebook/ads/redexgen/X/81;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/k4;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/k4;->A03:Lcom/facebook/ads/redexgen/X/Tx;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/k4;->A02:Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACx()V
    .locals 3

    .line 89416
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k4;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$1;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/k4;->A01:Lcom/facebook/ads/redexgen/X/81;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/k4;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k4;->A03:Lcom/facebook/ads/redexgen/X/Tx;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/81;->A0E(Lcom/facebook/ads/redexgen/X/81;ILcom/facebook/ads/redexgen/X/Tx;)V

    .line 89417
    return-void
.end method

.method public final ACy()V
    .locals 3

    .line 89418
    .local p0, "this":Lcom/facebook/ads/redexgen/X/k4;, "Lcom/facebook/ads/internal/adapters/FacebookBannerAdapter$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/k4;->A01:Lcom/facebook/ads/redexgen/X/81;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/81;->A00(Lcom/facebook/ads/redexgen/X/81;)Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/k4;->A02:Lcom/facebook/ads/redexgen/X/81;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->AEN(Lcom/facebook/ads/redexgen/X/k8;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 89419
    return-void
.end method
