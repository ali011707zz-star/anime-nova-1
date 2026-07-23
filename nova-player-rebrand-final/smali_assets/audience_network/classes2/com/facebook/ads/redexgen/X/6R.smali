.class public final Lcom/facebook/ads/redexgen/X/6R;
.super Lcom/facebook/ads/redexgen/X/EA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6M;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6M;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 16848
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 3

    .line 16849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A05(Lcom/facebook/ads/redexgen/X/6M;)V

    .line 16850
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/6M;

    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 16851
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 16852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6R;->A00:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6M;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0N()Lcom/facebook/ads/redexgen/X/cr;

    move-result-object v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cr;->AGM(I)V

    .line 16853
    :cond_0
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

    .line 16854
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6R;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
