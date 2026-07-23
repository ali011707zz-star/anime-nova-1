.class public final Lcom/facebook/ads/redexgen/X/lF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/L8;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/qI;

.field public A01:Lcom/facebook/ads/redexgen/X/53;

.field public A02:Lcom/facebook/ads/redexgen/X/Hd;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 93005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93006
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 93007
    return-void
.end method

.method private A00()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "timestampAdjuster",
            "output"
        }
    .end annotation

    .line 93008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A01:Lcom/facebook/ads/redexgen/X/53;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93009
    return-void
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 11

    .line 93010
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lF;->A00()V

    .line 93011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A01:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A03()J

    move-result-wide v5

    .line 93012
    .local v8, "sampleTimestampUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A01:Lcom/facebook/ads/redexgen/X/53;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/53;->A04()J

    move-result-wide v1

    .line 93013
    .local v10, "subsampleOffsetUs":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-eqz v0, :cond_0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 93014
    .end local v0
    :cond_0
    return-void

    .line 93015
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A00:Lcom/facebook/ads/redexgen/X/qI;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/qI;->A0M:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 93016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qI;->A07()Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/2p;->A0s(J)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 93017
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lF;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 93018
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v8

    .line 93019
    .local v0, "sampleSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    invoke-interface {v0, p1, v8}, Lcom/facebook/ads/redexgen/X/Hd;->AIr(Lcom/facebook/ads/redexgen/X/4v;I)V

    .line 93020
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/lF;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Hd;->AIu(JIIILcom/facebook/ads/redexgen/X/Hb;)V

    .line 93021
    return-void
.end method

.method public final AAA(Lcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 2

    .line 93022
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lF;->A01:Lcom/facebook/ads/redexgen/X/53;

    .line 93023
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/LG;->A05()V

    .line 93024
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/LG;->A03()I

    move-result v1

    const/4 v0, 0x5

    invoke-interface {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->AKS(II)Lcom/facebook/ads/redexgen/X/Hd;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    .line 93025
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lF;->A02:Lcom/facebook/ads/redexgen/X/Hd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lF;->A00:Lcom/facebook/ads/redexgen/X/qI;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A6e(Lcom/facebook/ads/redexgen/X/qI;)V

    .line 93026
    return-void
.end method
