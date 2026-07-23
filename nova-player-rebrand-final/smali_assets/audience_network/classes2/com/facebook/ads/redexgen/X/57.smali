.class public final Lcom/facebook/ads/redexgen/X/57;
.super Lcom/facebook/ads/redexgen/X/EA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/55;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/55;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/55;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 13704
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/57;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 3

    .line 13705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/57;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0G(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/57;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0H(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dm;->ADc(I)V

    .line 13706
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/57;->A00:Lcom/facebook/ads/redexgen/X/55;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/55;->A01(Lcom/facebook/ads/redexgen/X/55;F)F

    .line 13707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/57;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0H(Lcom/facebook/ads/redexgen/X/55;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x1c

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 13708
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

    .line 13709
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/57;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
