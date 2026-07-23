.class public final Lcom/facebook/ads/redexgen/X/Gh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ge;->A0C(ZI)Lcom/facebook/ads/redexgen/X/Ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ge;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ge;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37546
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACQ()V
    .locals 1

    .line 37547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0R(Lcom/facebook/ads/redexgen/X/Ge;)V

    .line 37548
    return-void
.end method

.method public final ADA()V
    .locals 3

    .line 37549
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0V(Lcom/facebook/ads/redexgen/X/Ge;ZI)V

    .line 37550
    return-void
.end method

.method public final ADc(I)V
    .locals 1

    .line 37551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Ge;->A03(Lcom/facebook/ads/redexgen/X/Ge;I)I

    .line 37552
    return-void
.end method

.method public final ADw(F)V
    .locals 1

    .line 37553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0c(Lcom/facebook/ads/redexgen/X/Ge;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Ge;->A0S(Lcom/facebook/ads/redexgen/X/Ge;F)V

    .line 37555
    :cond_0
    return-void
.end method

.method public final AFw(Z)V
    .locals 1

    .line 37556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Ge;->A0U(Lcom/facebook/ads/redexgen/X/Ge;Z)V

    .line 37557
    return-void
.end method

.method public final AGQ(Ljava/lang/String;)V
    .locals 3

    .line 37558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A05(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->A3a(Ljava/lang/String;)V

    .line 37559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A04(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/jT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    .line 37560
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A02(Lcom/facebook/ads/redexgen/X/Ge;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A04(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/jT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 37561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A05(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AC2()V

    .line 37562
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:I

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0V(Lcom/facebook/ads/redexgen/X/Ge;ZI)V

    .line 37563
    :goto_0
    return-void

    .line 37564
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A09(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0A(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/ZU;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A81()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 37565
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    const/4 v0, 0x3

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0T(Lcom/facebook/ads/redexgen/X/Ge;I)V

    goto :goto_0
.end method

.method public final AKc()V
    .locals 2

    .line 37566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->setUnskippableSecondsComplete(Z)V

    .line 37567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A08(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressImmediate(F)V

    .line 37568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A08(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 37569
    return-void
.end method

.method public final AKd(F)V
    .locals 2

    .line 37570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Lcom/facebook/ads/redexgen/X/Ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ge;->A08(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgress(F)V

    .line 37571
    return-void
.end method
