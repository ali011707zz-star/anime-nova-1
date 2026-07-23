.class public final Lcom/facebook/ads/redexgen/X/XS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/XQ;,
        Lcom/facebook/ads/redexgen/X/XR;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Landroid/os/Handler;

.field public final A02:Lcom/facebook/ads/redexgen/X/jd;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/XQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2309
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hdh4k6eZclrlxxYg19ck"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OIQuDIQFpzBifrZrtJIvg4BasUaQd63c"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6y0NffGMqcG8EugdtirNjkqg6svCH2Zl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "13Ua2r6CYJwc6p6BI5coDxRAaPqMz7yS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7WkbYpbXunBRly3lB1oHckvOip2eqLp6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2PYz6J8qU0vRqLO17bgOak7iCaiihwk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gvpJ77qQnx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SLFhDDNvl2CxgKHJ1vqMDyCxDe74woQD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XS;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/XQ;)V
    .locals 2

    .line 72613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XS;->A00:Z

    .line 72615
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XS;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 72616
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/XS;->A04:Lcom/facebook/ads/redexgen/X/XQ;

    .line 72617
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XS;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 72618
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XS;->A01:Landroid/os/Handler;

    .line 72619
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/XQ;)Lcom/facebook/ads/redexgen/X/XS;
    .locals 1

    .line 72620
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/gi;->A0I()Ljava/lang/Object;

    move-result-object v0

    .line 72621
    .local v0, "creativeAsCtaLoggingHelper":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 72622
    new-instance v0, Lcom/facebook/ads/redexgen/X/XS;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XS;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/XQ;)V

    .line 72623
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/gi;->A0P(Ljava/lang/Object;)V

    .line 72624
    :cond_0
    check-cast v0, Lcom/facebook/ads/redexgen/X/XS;

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/gi;)Z
    .locals 1

    .line 72625
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A1g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72626
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/X6;->A0I(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 72627
    :goto_0
    return v0

    .line 72628
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/jd;)Lcom/facebook/ads/redexgen/X/XR;
    .locals 6

    .line 72629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XS;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1m(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 72630
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A1e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XS;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XS;->A01(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72631
    .local v0, "shouldCreativeBeClickable":Z
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/XR;

    invoke-direct {v0, v4, v4}, Lcom/facebook/ads/redexgen/X/XR;-><init>(ZZ)V

    return-object v0

    .line 72632
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 72633
    .end local v0    # "shouldCreativeBeClickable":Z
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A1e()Z

    move-result v3

    .line 72634
    .restart local v0    # "shouldCreativeBeClickable":Z
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XS;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 72635
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XS;->A01(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/XS;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XS;->A05:[Ljava/lang/String;

    const-string v1, "D5RQoHah0ZffyX7n6MMHscTeZuBHZQ8g"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "oKN8Sif1fTCm3hFJqGEcKAR8lt3N8fjA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v5, :cond_2

    :goto_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/XR;

    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/XR;-><init>(ZZ)V

    .line 72636
    return-object v0

    .line 72637
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A03()V
    .locals 2

    .line 72638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XS;->A00:Z

    .line 72639
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XS;->A01:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72640
    return-void
.end method
