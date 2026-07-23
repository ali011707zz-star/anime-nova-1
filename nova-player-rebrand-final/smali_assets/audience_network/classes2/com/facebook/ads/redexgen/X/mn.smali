.class public Lcom/facebook/ads/redexgen/X/mn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/HY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unseekable"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/HX;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 99521
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/mn;-><init>(JJ)V

    .line 99522
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .line 99523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99524
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/mn;->A00:J

    .line 99525
    const-wide/16 v1, 0x0

    cmp-long v0, p3, v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/HZ;->A04:Lcom/facebook/ads/redexgen/X/HZ;

    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mn;->A01:Lcom/facebook/ads/redexgen/X/HX;

    .line 99526
    return-void

    .line 99527
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    goto :goto_0
.end method


# virtual methods
.method public final A7t()J
    .locals 2

    .line 99528
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/mn;->A00:J

    return-wide v0
.end method

.method public final A91(J)Lcom/facebook/ads/redexgen/X/HX;
    .locals 1

    .line 99529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mn;->A01:Lcom/facebook/ads/redexgen/X/HX;

    return-object v0
.end method

.method public final AAj()Z
    .locals 1

    .line 99530
    const/4 v0, 0x0

    return v0
.end method
