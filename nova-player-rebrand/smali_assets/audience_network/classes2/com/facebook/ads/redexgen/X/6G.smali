.class public final Lcom/facebook/ads/redexgen/X/6G;
.super Lcom/facebook/ads/redexgen/X/E2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/KD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KD;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15929
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Lcom/facebook/ads/redexgen/X/KD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E2;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E3;)V
    .locals 1

    .line 15930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Lcom/facebook/ads/redexgen/X/KD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KD;->A04(Lcom/facebook/ads/redexgen/X/KD;)Lcom/facebook/ads/redexgen/X/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Lcom/facebook/ads/redexgen/X/KD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KD;->A04(Lcom/facebook/ads/redexgen/X/KD;)Lcom/facebook/ads/redexgen/X/dx;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dx;->AKE()V

    .line 15932
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 15933
    check-cast p1, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6G;->A00(Lcom/facebook/ads/redexgen/X/E3;)V

    return-void
.end method
