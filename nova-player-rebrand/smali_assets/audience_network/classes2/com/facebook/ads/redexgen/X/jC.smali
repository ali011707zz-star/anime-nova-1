.class public final Lcom/facebook/ads/redexgen/X/jC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Nu;->A08(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/7n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88186
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jC;->A00:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFF(Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 88187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jC;->A00:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Nu;)Lcom/facebook/ads/redexgen/X/Nt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Nt;->ACo(Lcom/facebook/ads/AdError;)V

    .line 88188
    return-void
.end method

.method public final AFG()V
    .locals 1

    .line 88189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jC;->A00:Lcom/facebook/ads/redexgen/X/Nu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Nu;)Lcom/facebook/ads/redexgen/X/Nt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nt;->ACp()V

    .line 88190
    return-void
.end method
