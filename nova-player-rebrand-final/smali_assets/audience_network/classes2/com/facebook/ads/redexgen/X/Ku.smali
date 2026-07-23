.class public final Lcom/facebook/ads/redexgen/X/Ku;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/YI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bR;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bR;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48811
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ku;->A00:Lcom/facebook/ads/redexgen/X/bR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFx()V
    .locals 1

    .line 48812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ku;->A00:Lcom/facebook/ads/redexgen/X/bR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bR;->A0B(Lcom/facebook/ads/redexgen/X/bR;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ku;->A00:Lcom/facebook/ads/redexgen/X/bR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bR;->A03(Lcom/facebook/ads/redexgen/X/bR;)Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->performClick()Z

    .line 48814
    :cond_0
    return-void
.end method

.method public final AG8()V
    .locals 1

    .line 48815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ku;->A00:Lcom/facebook/ads/redexgen/X/bR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bR;->A09(Lcom/facebook/ads/redexgen/X/bR;)V

    .line 48816
    return-void
.end method
