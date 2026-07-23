.class public final Lcom/facebook/ads/redexgen/X/5J;
.super Lcom/facebook/ads/redexgen/X/EA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5F;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14582
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5J;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 3

    .line 14583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0I(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0J(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dm;->ADc(I)V

    .line 14584
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A00:Lcom/facebook/ads/redexgen/X/5F;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A03(Lcom/facebook/ads/redexgen/X/5F;F)F

    .line 14585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0J(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x1c

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 14586
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

    .line 14587
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5J;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
