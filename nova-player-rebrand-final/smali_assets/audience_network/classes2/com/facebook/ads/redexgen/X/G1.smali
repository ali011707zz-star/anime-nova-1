.class public final Lcom/facebook/ads/redexgen/X/G1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Fy;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Fy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36650
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G1;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVolume()F
    .locals 1

    .line 36651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:F

    return v0
.end method

.method public final setVolume(F)V
    .locals 1

    .line 36652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G1;->A00:Lcom/facebook/ads/redexgen/X/Fy;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/Fy;->A00:F

    .line 36653
    return-void
.end method
