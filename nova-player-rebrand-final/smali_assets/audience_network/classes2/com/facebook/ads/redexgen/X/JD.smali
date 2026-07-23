.class public final Lcom/facebook/ads/redexgen/X/JD;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yi;


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A02:Lcom/facebook/ads/redexgen/X/dC;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 821
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wtXzJScKRPxajxCcdRbPmb0KadlxC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7nKoFE8ui8VEpuvPlBMmVCUEP2sqkB6T"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "33CWdOtYDTa7rzeiAlLBu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "strpzcWL7DajPBiGDWIDQH24h3nkF6Q8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KD2NqWHNK6oFw2qGkV253wUFP2DdgfCk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fVTYPEGDbO1sEyo8c0rX1ThQbYeRG1Ca"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mBAzb1XhvrptTGzmv2edBpTADNq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JD;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/dC;Ljava/lang/String;)V
    .locals 0

    .line 42655
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42656
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/JD;->A02:Lcom/facebook/ads/redexgen/X/dC;

    .line 42657
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JD;->A01:Lcom/facebook/ads/redexgen/X/Yh;

    .line 42658
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/JD;->A00:Ljava/lang/String;

    .line 42659
    return-void
.end method


# virtual methods
.method public final AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 3

    .line 42660
    invoke-static {}, Lcom/facebook/ads/redexgen/X/dC;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 42661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JD;->A02:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0V()V

    .line 42662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JD;->A02:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 42663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JD;->A02:Lcom/facebook/ads/redexgen/X/dC;

    .line 42664
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0O()Lcom/facebook/ads/redexgen/X/It;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42665
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/JD;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42666
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JD;->A01:Lcom/facebook/ads/redexgen/X/Yh;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 42667
    return-void
.end method

.method public final AFA(Z)V
    .locals 0

    .line 42668
    return-void
.end method

.method public final AFi(Z)V
    .locals 0

    .line 42669
    return-void
.end method

.method public final AIv(Landroid/os/Bundle;)V
    .locals 0

    .line 42670
    return-void
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 42671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JD;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 42672
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 42673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JD;->A02:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0U()V

    .line 42674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JD;->A02:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0N()Lcom/facebook/ads/redexgen/X/d1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JD;->A02:Lcom/facebook/ads/redexgen/X/dC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0N()Lcom/facebook/ads/redexgen/X/d1;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/d1;->AE2()V

    .line 42676
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/dC;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/JD;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/JD;->A03:[Ljava/lang/String;

    const-string v1, "U60adJ6O15pnx6aeoiW8dFURNXF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "aGZEm4xR2YGCAhvP8isAV9os5hRSz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 42677
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 0

    .line 42678
    return-void
.end method
