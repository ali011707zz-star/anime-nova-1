.class public final Lcom/facebook/ads/redexgen/X/SX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/SW;
    }
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/SW;

.field public final A02:Ljava/lang/String;

.field public final A03:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SW;)V
    .locals 6

    .line 63984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SW;J)V

    .line 63985
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SW;J)V
    .locals 0

    .line 63986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63987
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SX;->A02:Ljava/lang/String;

    .line 63988
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/SX;->A03:Z

    .line 63989
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SX;->A01:Lcom/facebook/ads/redexgen/X/SW;

    .line 63990
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/SX;->A00:J

    .line 63991
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/SX;
    .locals 6

    .line 63992
    new-instance v0, Lcom/facebook/ads/redexgen/X/SX;

    sget-object v3, Lcom/facebook/ads/redexgen/X/SW;->A05:Lcom/facebook/ads/redexgen/X/SW;

    const-wide/16 v4, -0x1

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SW;J)V

    return-object v0
.end method


# virtual methods
.method public final A01()J
    .locals 2

    .line 63993
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SX;->A00:J

    return-wide v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/SW;
    .locals 1

    .line 63994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SX;->A01:Lcom/facebook/ads/redexgen/X/SW;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 63995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SX;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Z
    .locals 1

    .line 63996
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SX;->A03:Z

    return v0
.end method
