.class public final Lcom/facebook/ads/redexgen/X/30;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/qA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:F

.field public A01:F

.field public A02:J

.field public A03:J

.field public A04:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9903
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/30;->A04:J

    .line 9904
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/30;->A03:J

    .line 9905
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/30;->A02:J

    .line 9906
    const v0, -0x800001

    iput v0, p0, Lcom/facebook/ads/redexgen/X/30;->A01:F

    .line 9907
    iput v0, p0, Lcom/facebook/ads/redexgen/X/30;->A00:F

    .line 9908
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/30;)F
    .locals 0

    .line 9909
    iget p0, p0, Lcom/facebook/ads/redexgen/X/30;->A01:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/30;)F
    .locals 0

    .line 9910
    iget p0, p0, Lcom/facebook/ads/redexgen/X/30;->A00:F

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/30;)J
    .locals 1

    .line 9911
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/30;->A04:J

    return-wide v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/30;)J
    .locals 1

    .line 9912
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/30;->A03:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/30;)J
    .locals 1

    .line 9913
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/30;->A02:J

    return-wide v0
.end method


# virtual methods
.method public final A05()Lcom/facebook/ads/redexgen/X/qA;
    .locals 2

    .line 9914
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/qA;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/qA;-><init>(Lcom/facebook/ads/redexgen/X/30;Lcom/facebook/ads/redexgen/X/2r;)V

    return-object v0
.end method
