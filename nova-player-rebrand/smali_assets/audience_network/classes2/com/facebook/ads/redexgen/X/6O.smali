.class public final Lcom/facebook/ads/redexgen/X/6O;
.super Lcom/facebook/ads/redexgen/X/E4;
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

    .line 16834
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6O;->A00:Lcom/facebook/ads/redexgen/X/6M;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E4;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 2

    .line 16835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6O;->A00:Lcom/facebook/ads/redexgen/X/6M;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6M;->A05(Lcom/facebook/ads/redexgen/X/6M;)V

    .line 16836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6O;->A00:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6M;->A07:Lcom/facebook/ads/redexgen/X/Fy;

    .line 16837
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0O()Lcom/facebook/ads/redexgen/X/cs;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6O;->A00:Lcom/facebook/ads/redexgen/X/6M;

    .line 16838
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cs;->AGW(Landroid/view/View;)V

    .line 16839
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

    .line 16840
    check-cast p1, Lcom/facebook/ads/redexgen/X/4B;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6O;->A00(Lcom/facebook/ads/redexgen/X/4B;)V

    return-void
.end method
