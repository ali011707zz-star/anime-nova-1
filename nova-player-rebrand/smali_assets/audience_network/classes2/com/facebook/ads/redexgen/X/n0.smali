.class public final Lcom/facebook/ads/redexgen/X/n0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/H2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinarySearchSeekMap"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Lcom/facebook/ads/redexgen/X/Gx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gx;JJJJJJ)V
    .locals 0

    .line 99758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99759
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/n0;->A06:Lcom/facebook/ads/redexgen/X/Gx;

    .line 99760
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/n0;->A03:J

    .line 99761
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/n0;->A05:J

    .line 99762
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/n0;->A02:J

    .line 99763
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/n0;->A04:J

    .line 99764
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/n0;->A01:J

    .line 99765
    iput-wide p12, p0, Lcom/facebook/ads/redexgen/X/n0;->A00:J

    .line 99766
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/n0;)J
    .locals 1

    .line 99767
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/n0;->A05:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/n0;)J
    .locals 1

    .line 99768
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/n0;->A02:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/n0;)J
    .locals 1

    .line 99769
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/n0;->A04:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/n0;)J
    .locals 1

    .line 99770
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/n0;->A01:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/n0;)J
    .locals 1

    .line 99771
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/n0;->A00:J

    return-wide v0
.end method


# virtual methods
.method public final A05(J)J
    .locals 2

    .line 99772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n0;->A06:Lcom/facebook/ads/redexgen/X/Gx;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gx;->AKQ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7t()J
    .locals 2

    .line 99773
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/n0;->A03:J

    return-wide v0
.end method

.method public final A91(J)Lcom/facebook/ads/redexgen/X/HX;
    .locals 12

    .line 99774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n0;->A06:Lcom/facebook/ads/redexgen/X/Gx;

    .line 99775
    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gx;->AKQ(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/n0;->A05:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/n0;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/n0;->A04:J

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/n0;->A01:J

    iget-wide v10, p0, Lcom/facebook/ads/redexgen/X/n0;->A00:J

    .line 99776
    invoke-static/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/Gw;->A05(JJJJJJ)J

    move-result-wide v2

    .line 99777
    .local v0, "nextSearchPosition":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0
.end method

.method public final AAj()Z
    .locals 1

    .line 99778
    const/4 v0, 0x1

    return v0
.end method
