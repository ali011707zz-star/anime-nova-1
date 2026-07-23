.class public final Lcom/facebook/ads/redexgen/X/Do;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3x;->A00(Lcom/facebook/ads/redexgen/X/E3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34407
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 34408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/3x;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dm;->A04(Lcom/facebook/ads/redexgen/X/Dm;)V

    .line 34409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Do;->A00:Lcom/facebook/ads/redexgen/X/3x;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/3x;->A00:Lcom/facebook/ads/redexgen/X/Dm;

    const/4 v0, 0x1

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Dm;->A05(Lcom/facebook/ads/redexgen/X/Dm;ZZ)V

    .line 34410
    return-void
.end method
