.class public final Lcom/facebook/ads/redexgen/X/F8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/gE;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ea;->A06()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ea;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35531
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AHA()V
    .locals 2

    .line 35532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ea;->A01(Lcom/facebook/ads/redexgen/X/ea;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ea;->A01(Lcom/facebook/ads/redexgen/X/ea;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    .line 35534
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ea;->A02(Lcom/facebook/ads/redexgen/X/ea;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A94()Ljava/lang/String;

    move-result-object v0

    .line 35535
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 35536
    :cond_0
    return-void
.end method

.method public final AHC(Lcom/facebook/ads/redexgen/X/gG;)V
    .locals 2

    .line 35537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ea;->A01(Lcom/facebook/ads/redexgen/X/ea;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35538
    return-void

    .line 35539
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/gG;->A00()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ea;->A00(Lcom/facebook/ads/redexgen/X/ea;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABw()V

    .line 35541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ea;->A01(Lcom/facebook/ads/redexgen/X/ea;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    .line 35542
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ea;->A02(Lcom/facebook/ads/redexgen/X/ea;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A95()Ljava/lang/String;

    move-result-object v0

    .line 35543
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 35544
    :goto_0
    return-void

    .line 35545
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ea;->A00(Lcom/facebook/ads/redexgen/X/ea;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ABv()V

    .line 35546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ea;->A01(Lcom/facebook/ads/redexgen/X/ea;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/ea;

    .line 35547
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ea;->A02(Lcom/facebook/ads/redexgen/X/ea;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A94()Ljava/lang/String;

    move-result-object v0

    .line 35548
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    goto :goto_0
.end method
