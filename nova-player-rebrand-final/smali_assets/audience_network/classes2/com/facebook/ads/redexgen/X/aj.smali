.class public final Lcom/facebook/ads/redexgen/X/aj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public final A07:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 76697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76698
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A01:J

    .line 76699
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A03:J

    .line 76700
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A04:J

    .line 76701
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A00:J

    .line 76702
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A05:J

    .line 76703
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A02:J

    .line 76704
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/aj;->A06:J

    .line 76705
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aj;->A07:Ljava/lang/String;

    .line 76706
    return-void
.end method


# virtual methods
.method public final A00(J)Lcom/facebook/ads/redexgen/X/aj;
    .locals 0

    .line 76707
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/aj;->A00:J

    .line 76708
    return-object p0
.end method

.method public final A01(J)Lcom/facebook/ads/redexgen/X/aj;
    .locals 0

    .line 76709
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/aj;->A01:J

    .line 76710
    return-object p0
.end method

.method public final A02(J)Lcom/facebook/ads/redexgen/X/aj;
    .locals 0

    .line 76711
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/aj;->A02:J

    .line 76712
    return-object p0
.end method

.method public final A03(J)Lcom/facebook/ads/redexgen/X/aj;
    .locals 0

    .line 76713
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/aj;->A03:J

    .line 76714
    return-object p0
.end method

.method public final A04(J)Lcom/facebook/ads/redexgen/X/aj;
    .locals 0

    .line 76715
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/aj;->A04:J

    .line 76716
    return-object p0
.end method

.method public final A05(J)Lcom/facebook/ads/redexgen/X/aj;
    .locals 0

    .line 76717
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/aj;->A05:J

    .line 76718
    return-object p0
.end method

.method public final A06(J)Lcom/facebook/ads/redexgen/X/aj;
    .locals 0

    .line 76719
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/aj;->A06:J

    .line 76720
    return-object p0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/ak;
    .locals 19

    .line 76721
    move-object/from16 v0, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/ak;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/aj;->A07:Ljava/lang/String;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/aj;->A01:J

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/aj;->A03:J

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/aj;->A04:J

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/aj;->A00:J

    iget-wide v12, v0, Lcom/facebook/ads/redexgen/X/aj;->A05:J

    iget-wide v14, v0, Lcom/facebook/ads/redexgen/X/aj;->A02:J

    move-object v2, v2

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/aj;->A06:J

    const/16 v18, 0x0

    move-wide/from16 v16, v0

    invoke-direct/range {v2 .. v18}, Lcom/facebook/ads/redexgen/X/ak;-><init>(Ljava/lang/String;JJJJJJJLcom/facebook/ads/redexgen/X/ai;)V

    return-object v2
.end method
