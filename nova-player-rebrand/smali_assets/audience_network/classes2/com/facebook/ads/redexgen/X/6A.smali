.class public final Lcom/facebook/ads/redexgen/X/6A;
.super Lcom/facebook/ads/redexgen/X/E2;
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

    .line 15900
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6A;->A00:Lcom/facebook/ads/redexgen/X/67;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E2;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E3;)V
    .locals 2

    .line 15901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6A;->A00:Lcom/facebook/ads/redexgen/X/67;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A00(Lcom/facebook/ads/redexgen/X/67;)Lcom/facebook/ads/redexgen/X/Fy;

    move-result-object v0

    .line 15902
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fy;->A0O()Lcom/facebook/ads/redexgen/X/cs;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6A;->A00:Lcom/facebook/ads/redexgen/X/67;

    .line 15903
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cs;->AGY(Landroid/view/View;)V

    .line 15904
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

    .line 15905
    check-cast p1, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6A;->A00(Lcom/facebook/ads/redexgen/X/E3;)V

    return-void
.end method
