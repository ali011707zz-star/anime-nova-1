.class public final Lcom/facebook/ads/redexgen/X/hN;
.super Lcom/facebook/ads/redexgen/X/WP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/hM;->A0D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/hM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hM;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84502
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hN;->A00:Lcom/facebook/ads/redexgen/X/hM;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WP;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 84503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hN;->A00:Lcom/facebook/ads/redexgen/X/hM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hM;->A01(Lcom/facebook/ads/redexgen/X/hM;)Lcom/facebook/ads/redexgen/X/Rd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hN;->A00:Lcom/facebook/ads/redexgen/X/hM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hM;->A01(Lcom/facebook/ads/redexgen/X/hM;)Lcom/facebook/ads/redexgen/X/Rd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A06()Lcom/facebook/ads/AdListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hN;->A00:Lcom/facebook/ads/redexgen/X/hM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/hM;->A01(Lcom/facebook/ads/redexgen/X/hM;)Lcom/facebook/ads/redexgen/X/Rd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rd;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/AdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 84505
    :cond_0
    return-void
.end method
