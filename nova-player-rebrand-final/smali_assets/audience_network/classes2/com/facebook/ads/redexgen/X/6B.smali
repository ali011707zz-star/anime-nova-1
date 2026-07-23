.class public final Lcom/facebook/ads/redexgen/X/6B;
.super Lcom/facebook/ads/redexgen/X/EA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/67;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/67;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15906
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/67;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 3

    .line 15907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/67;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A00(Lcom/facebook/ads/redexgen/X/67;)Lcom/facebook/ads/redexgen/X/Fy;

    move-result-object v0

    .line 15908
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0N()Lcom/facebook/ads/redexgen/X/cr;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/67;

    .line 15909
    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/67;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/cr;->AGM(I)V

    .line 15910
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

    .line 15911
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6B;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
