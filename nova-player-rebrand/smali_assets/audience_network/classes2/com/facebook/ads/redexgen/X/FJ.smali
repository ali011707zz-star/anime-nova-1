.class public final Lcom/facebook/ads/redexgen/X/FJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/n7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorAction"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 35618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35619
    iput p1, p0, Lcom/facebook/ads/redexgen/X/FJ;->A00:I

    .line 35620
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/FJ;->A01:J

    .line 35621
    return-void
.end method

.method public synthetic constructor <init>(IJLcom/facebook/ads/redexgen/X/FG;)V
    .locals 0

    .line 35622
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/FJ;-><init>(IJ)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FJ;)I
    .locals 0

    .line 35623
    iget p0, p0, Lcom/facebook/ads/redexgen/X/FJ;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/FJ;)J
    .locals 1

    .line 35624
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FJ;->A01:J

    return-wide v0
.end method


# virtual methods
.method public final A02()Z
    .locals 2

    .line 35625
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FJ;->A00:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FJ;->A00:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
