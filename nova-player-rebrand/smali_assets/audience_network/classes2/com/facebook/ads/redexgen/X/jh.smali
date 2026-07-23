.class public abstract Lcom/facebook/ads/redexgen/X/jh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/N1;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/RewardData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 0

    .line 88605
    iput p1, p0, Lcom/facebook/ads/redexgen/X/jh;->A00:I

    .line 88606
    return-void
.end method

.method public final A01(J)V
    .locals 0

    .line 88607
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/jh;->A01:J

    .line 88608
    return-void
.end method

.method public final A02(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 88609
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jh;->A02:Lcom/facebook/ads/RewardData;

    .line 88610
    return-void
.end method

.method public abstract A0H()I
.end method

.method public abstract A0I()Lcom/facebook/ads/redexgen/X/NQ;
.end method

.method public abstract A0J()Z
.end method

.method public final A8k()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 88611
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method
