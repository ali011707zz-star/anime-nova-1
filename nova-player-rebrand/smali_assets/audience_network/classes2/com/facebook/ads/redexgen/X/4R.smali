.class public final Lcom/facebook/ads/redexgen/X/4R;
.super Lcom/facebook/ads/redexgen/X/E7;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/eg;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/eg;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11464
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Lcom/facebook/ads/redexgen/X/eg;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E7;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4F;)V
    .locals 13

    .line 11465
    new-instance v5, Lcom/facebook/ads/redexgen/X/iT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Lcom/facebook/ads/redexgen/X/eg;

    .line 11466
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eg;->A03(Lcom/facebook/ads/redexgen/X/eg;)Ljava/lang/String;

    move-result-object v6

    .line 11467
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EC;->A03()J

    move-result-wide v7

    .line 11468
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EC;->A01()J

    move-result-wide v9

    .line 11469
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EC;->A02()J

    move-result-wide v11

    invoke-direct/range {v5 .. v12}, Lcom/facebook/ads/redexgen/X/iT;-><init>(Ljava/lang/String;JJJ)V

    .line 11470
    .local v0, "videoFrameInfo":Lcom/facebook/ads/redexgen/X/iT;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EC;->A00()F

    move-result v0

    float-to-double v3, v0

    const-wide v1, 0x3fa999999999999aL    # 0.05

    cmpl-double v0, v3, v1

    if-ltz v0, :cond_0

    .line 11471
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EC;->A01()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/iT;->A06(J)V

    .line 11472
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Lcom/facebook/ads/redexgen/X/eg;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eg;->A00(Lcom/facebook/ads/redexgen/X/eg;)I

    .line 11473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4R;->A00:Lcom/facebook/ads/redexgen/X/eg;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eg;->A01(Lcom/facebook/ads/redexgen/X/eg;)Lcom/facebook/ads/redexgen/X/iS;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/iS;->A04(Lcom/facebook/ads/redexgen/X/iT;)V

    .line 11474
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11475
    check-cast p1, Lcom/facebook/ads/redexgen/X/4F;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4R;->A00(Lcom/facebook/ads/redexgen/X/4F;)V

    return-void
.end method
