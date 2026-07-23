.class public final Lcom/facebook/ads/redexgen/X/33;
.super Lcom/facebook/ads/redexgen/X/Dz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/DZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DZ;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 9963
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/33;->A00:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dz;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 2

    .line 9964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/33;->A00:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DZ;->A00(Lcom/facebook/ads/redexgen/X/DZ;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9965
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/33;->A00:Lcom/facebook/ads/redexgen/X/DZ;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->A09(Z)V

    .line 9966
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

    .line 9967
    check-cast p1, Lcom/facebook/ads/redexgen/X/4A;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/33;->A00(Lcom/facebook/ads/redexgen/X/4A;)V

    return-void
.end method
