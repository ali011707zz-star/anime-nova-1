.class public final Lcom/facebook/ads/redexgen/X/lz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacOggSeeker"
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/HI;

.field public A03:Lcom/facebook/ads/redexgen/X/HJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HJ;Lcom/facebook/ads/redexgen/X/HI;)V
    .locals 2

    .line 95298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95299
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lz;->A03:Lcom/facebook/ads/redexgen/X/HJ;

    .line 95300
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/lz;->A02:Lcom/facebook/ads/redexgen/X/HI;

    .line 95301
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A00:J

    .line 95302
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A01:J

    .line 95303
    return-void
.end method


# virtual methods
.method public final A00(J)V
    .locals 0

    .line 95304
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/lz;->A00:J

    .line 95305
    return-void
.end method

.method public final A5Z()Lcom/facebook/ads/redexgen/X/HY;
    .locals 5

    .line 95306
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/lz;->A00:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 95307
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/lz;->A03:Lcom/facebook/ads/redexgen/X/HJ;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lz;->A00:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/mp;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/mp;-><init>(Lcom/facebook/ads/redexgen/X/HJ;J)V

    return-object v0

    .line 95308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AHN(Lcom/facebook/ads/redexgen/X/ms;)J
    .locals 8

    .line 95309
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/lz;->A01:J

    const-wide/16 v1, 0x0

    const-wide/16 v4, -0x1

    cmp-long v0, v6, v1

    if-ltz v0, :cond_0

    .line 95310
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lz;->A01:J

    const-wide/16 v0, 0x2

    add-long/2addr v2, v0

    neg-long v0, v2

    .line 95311
    .local v0, "result":J
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/lz;->A01:J

    .line 95312
    return-wide v0

    .line 95313
    .end local v0    # "result":J
    :cond_0
    return-wide v4
.end method

.method public final AKC(J)V
    .locals 2

    .line 95314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A02:Lcom/facebook/ads/redexgen/X/HI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/HI;->A01:[J

    .line 95315
    .local v0, "seekPointGranules":[J
    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0L([JJZZ)I

    move-result v0

    .line 95316
    .local v1, "index":I
    aget-wide v0, v1, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lz;->A01:J

    .line 95317
    return-void
.end method
