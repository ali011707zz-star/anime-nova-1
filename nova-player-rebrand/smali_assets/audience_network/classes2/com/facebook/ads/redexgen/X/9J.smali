.class public final Lcom/facebook/ads/redexgen/X/9J;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPositionParameters"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/px;

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/px;ZJJ)V
    .locals 0

    .line 23970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23971
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9J;->A02:Lcom/facebook/ads/redexgen/X/px;

    .line 23972
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/9J;->A03:Z

    .line 23973
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/9J;->A01:J

    .line 23974
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:J

    .line 23975
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/px;ZJJLcom/facebook/ads/redexgen/X/9B;)V
    .locals 0

    .line 23976
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Lcom/facebook/ads/redexgen/X/px;ZJJ)V

    return-void
.end method
