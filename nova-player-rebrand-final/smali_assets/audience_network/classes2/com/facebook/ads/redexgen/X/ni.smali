.class public final Lcom/facebook/ads/redexgen/X/ni;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ez;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllocationNode"
.end annotation


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/ni;

.field public A03:Lcom/facebook/ads/redexgen/X/Ey;


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 101522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101523
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/ni;->A02(JI)V

    .line 101524
    return-void
.end method


# virtual methods
.method public final A00(J)I
    .locals 2

    .line 101525
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A01:J

    sub-long/2addr p1, v0

    long-to-int v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ey;->A00:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/ni;
    .locals 2

    .line 101526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    .line 101527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A02:Lcom/facebook/ads/redexgen/X/ni;

    .line 101528
    .local v1, "temp":Lcom/facebook/ads/redexgen/X/ni;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/ni;->A02:Lcom/facebook/ads/redexgen/X/ni;

    .line 101529
    return-object v0
.end method

.method public final A02(JI)V
    .locals 2

    .line 101530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 101531
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/ni;->A01:J

    .line 101532
    int-to-long v0, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A00:J

    .line 101533
    return-void

    .line 101534
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Ey;Lcom/facebook/ads/redexgen/X/ni;)V
    .locals 0

    .line 101535
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    .line 101536
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ni;->A02:Lcom/facebook/ads/redexgen/X/ni;

    .line 101537
    return-void
.end method

.method public final A6u()Lcom/facebook/ads/redexgen/X/Ey;
    .locals 1

    .line 101538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ey;

    return-object v0
.end method

.method public final ACc()Lcom/facebook/ads/redexgen/X/ni;
    .locals 1

    .line 101539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A02:Lcom/facebook/ads/redexgen/X/ni;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A02:Lcom/facebook/ads/redexgen/X/ni;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ni;->A03:Lcom/facebook/ads/redexgen/X/Ey;

    if-nez v0, :cond_1

    .line 101540
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 101541
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ni;->A02:Lcom/facebook/ads/redexgen/X/ni;

    return-object v0
.end method
