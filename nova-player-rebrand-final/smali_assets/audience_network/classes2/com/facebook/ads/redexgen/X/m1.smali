.class public final Lcom/facebook/ads/redexgen/X/m1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OggSeekMap"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/m0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/m0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 95411
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/m0;Lcom/facebook/ads/redexgen/X/JV;)V
    .locals 0

    .line 95412
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/m1;-><init>(Lcom/facebook/ads/redexgen/X/m0;)V

    return-void
.end method


# virtual methods
.method public final A7t()J
    .locals 3

    .line 95413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/m0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m0;->A06(Lcom/facebook/ads/redexgen/X/m0;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/m0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m0;->A04(Lcom/facebook/ads/redexgen/X/m0;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Jb;->A05(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A91(J)Lcom/facebook/ads/redexgen/X/HX;
    .locals 12

    .line 95414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/m0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m0;->A06(Lcom/facebook/ads/redexgen/X/m0;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jb;->A06(J)J

    move-result-wide v4

    .line 95415
    .local v0, "targetGranule":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/m0;

    .line 95416
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m0;->A02(Lcom/facebook/ads/redexgen/X/m0;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/m0;

    .line 95417
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m0;->A03(Lcom/facebook/ads/redexgen/X/m0;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/m0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m0;->A02(Lcom/facebook/ads/redexgen/X/m0;)J

    move-result-wide v0

    sub-long/2addr v2, v0

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/m0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m0;->A04(Lcom/facebook/ads/redexgen/X/m0;)J

    move-result-wide v0

    div-long/2addr v2, v0

    add-long/2addr v6, v2

    const-wide/16 v0, 0x7530

    sub-long/2addr v6, v0

    .line 95418
    .local v2, "estimatedPosition":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/m0;

    .line 95419
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m0;->A02(Lcom/facebook/ads/redexgen/X/m0;)J

    move-result-wide v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/m1;->A00:Lcom/facebook/ads/redexgen/X/m0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/m0;->A03(Lcom/facebook/ads/redexgen/X/m0;)J

    move-result-wide v10

    const-wide/16 v0, 0x1

    sub-long/2addr v10, v0

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/5C;->A0T(JJJ)J

    move-result-wide v2

    .line 95420
    new-instance v1, Lcom/facebook/ads/redexgen/X/HZ;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/facebook/ads/redexgen/X/HZ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HX;-><init>(Lcom/facebook/ads/redexgen/X/HZ;)V

    return-object v0
.end method

.method public final AAj()Z
    .locals 1

    .line 95421
    const/4 v0, 0x1

    return v0
.end method
