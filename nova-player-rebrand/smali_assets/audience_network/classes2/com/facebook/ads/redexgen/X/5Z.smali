.class public final Lcom/facebook/ads/redexgen/X/5Z;
.super Lcom/facebook/ads/redexgen/X/Dz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5S;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5S;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15031
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 2

    .line 15032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/5S;->A0O(Lcom/facebook/ads/redexgen/X/5S;Lcom/facebook/ads/redexgen/X/4A;)V

    .line 15033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:Lcom/facebook/ads/redexgen/X/5S;

    .line 15034
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A00(Lcom/facebook/ads/redexgen/X/5S;)F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A0A(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/EB;->A00()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    .line 15035
    .local v0, "currentPosMs":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5S;->A09(Lcom/facebook/ads/redexgen/X/5S;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/dm;->ADw(F)V

    .line 15036
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

    .line 15037
    check-cast p1, Lcom/facebook/ads/redexgen/X/4A;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5Z;->A00(Lcom/facebook/ads/redexgen/X/4A;)V

    return-void
.end method
