.class public final Lcom/facebook/ads/redexgen/X/XO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/XN;
    }
.end annotation


# instance fields
.field public A00:F

.field public A01:F

.field public A02:J

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/redexgen/X/XN;


# direct methods
.method public constructor <init>(IFJLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/XN;)V
    .locals 0

    .line 72528
    invoke-direct {p0, p1, p6, p5}, Lcom/facebook/ads/redexgen/X/XO;-><init>(ILcom/facebook/ads/redexgen/X/XN;Landroid/os/Handler;)V

    .line 72529
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:J

    .line 72530
    iput p2, p0, Lcom/facebook/ads/redexgen/X/XO;->A01:F

    .line 72531
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/XN;)V
    .locals 1

    .line 72532
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/XO;-><init>(ILcom/facebook/ads/redexgen/X/XN;Landroid/os/Handler;)V

    .line 72533
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/XN;Landroid/os/Handler;)V
    .locals 2

    .line 72534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    .line 72536
    int-to-float v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:F

    .line 72537
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:Lcom/facebook/ads/redexgen/X/XN;

    .line 72538
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/XO;->A05:Landroid/os/Handler;

    .line 72539
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:J

    .line 72540
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A01:F

    .line 72541
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/XO;)J
    .locals 1

    .line 72542
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/XO;)Landroid/os/Handler;
    .locals 0

    .line 72543
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/XO;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method private A02()V
    .locals 2

    .line 72544
    iget v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A01:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:F

    .line 72545
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:Lcom/facebook/ads/redexgen/X/XN;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:F

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/XN;->AFV(F)V

    .line 72546
    iget v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:F

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A03:Z

    if-nez v0, :cond_0

    .line 72547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A03:Z

    .line 72548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:Lcom/facebook/ads/redexgen/X/XN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/XN;->ADS()V

    .line 72549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    .line 72550
    :cond_0
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/XO;)V
    .locals 0

    .line 72551
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XO;->A02()V

    return-void
.end method


# virtual methods
.method public final A04()Z
    .locals 2

    .line 72552
    iget v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:F

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A05()Z
    .locals 1

    .line 72553
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    return v0
.end method

.method public final A06()Z
    .locals 2

    .line 72554
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XO;->A05()Z

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 72555
    return v0

    .line 72556
    :cond_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    .line 72557
    const/4 v0, 0x1

    return v0
.end method

.method public final A07()Z
    .locals 5

    .line 72558
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XO;->A04()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A03:Z

    if-nez v0, :cond_0

    .line 72559
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/XO;->A03:Z

    .line 72560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:Lcom/facebook/ads/redexgen/X/XN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/XN;->ADS()V

    .line 72561
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XO;->A04()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XO;->A05()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72562
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 72563
    :cond_2
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    .line 72564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:Lcom/facebook/ads/redexgen/X/XN;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:F

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/XN;->AFV(F)V

    .line 72565
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XO;->A05:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Qe;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Qe;-><init>(Lcom/facebook/ads/redexgen/X/XO;)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:J

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72566
    return v4
.end method
