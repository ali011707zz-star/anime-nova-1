.class public final Lcom/facebook/ads/redexgen/X/UY;
.super Lcom/facebook/ads/redexgen/X/N4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/UK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeAdImpressionHelper"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 67797
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UY;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/N4;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/Vx;)V
    .locals 0

    .line 67798
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/UY;-><init>(Lcom/facebook/ads/redexgen/X/UK;)V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 67799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0N(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UY;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UK;->A0N(Lcom/facebook/ads/redexgen/X/UK;)Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VP;->AEl()V

    .line 67801
    :cond_0
    return-void
.end method
