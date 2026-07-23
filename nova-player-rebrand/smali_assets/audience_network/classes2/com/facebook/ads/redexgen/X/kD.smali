.class public final Lcom/facebook/ads/redexgen/X/kD;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/N8;->A0A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89536
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kD;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 89537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kD;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A0B(Lcom/facebook/ads/redexgen/X/N8;)V

    .line 89538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kD;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A00(Lcom/facebook/ads/redexgen/X/N8;)Lcom/facebook/ads/redexgen/X/N7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N7;->A06()V

    .line 89539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kD;->A00:Lcom/facebook/ads/redexgen/X/N8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N8;->A05(Lcom/facebook/ads/redexgen/X/N8;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 89540
    return-void
.end method
