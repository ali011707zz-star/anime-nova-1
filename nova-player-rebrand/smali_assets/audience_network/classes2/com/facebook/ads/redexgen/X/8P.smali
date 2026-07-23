.class public abstract Lcom/facebook/ads/redexgen/X/8P;
.super Lcom/facebook/ads/redexgen/X/oz;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jj;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/Jj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22882
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oz;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0A()V
    .locals 1

    .line 22883
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/5u;->A0A()V

    .line 22884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8P;->A01:Lcom/facebook/ads/redexgen/X/Jj;

    .line 22885
    return-void
.end method

.method public abstract A0B()V
.end method

.method public final A0C(JLcom/facebook/ads/redexgen/X/Jj;J)V
    .locals 3

    .line 22886
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/oz;->A01:J

    .line 22887
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8P;->A01:Lcom/facebook/ads/redexgen/X/Jj;

    .line 22888
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, p4, v1

    if-nez v0, :cond_0

    iget-wide p4, p0, Lcom/facebook/ads/redexgen/X/oz;->A01:J

    :cond_0
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/8P;->A00:J

    .line 22889
    return-void
.end method

.method public final A7X(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 22890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8P;->A01:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Jj;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8P;->A00:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/Jj;->A7X(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A83(I)J
    .locals 4

    .line 22891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8P;->A01:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Jj;->A83(I)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8P;->A00:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A84()I
    .locals 1

    .line 22892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8P;->A01:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A84()I

    move-result v0

    return v0
.end method

.method public final A8a(J)I
    .locals 3

    .line 22893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8P;->A01:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Jj;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8P;->A00:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/Jj;->A8a(J)I

    move-result v0

    return v0
.end method
