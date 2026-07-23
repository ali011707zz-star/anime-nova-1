.class public final Lcom/facebook/ads/redexgen/X/D6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3U;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/fX;->A0G(Lcom/facebook/ads/redexgen/X/fU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/fU;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/fX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fX;Lcom/facebook/ads/redexgen/X/fU;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33446
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D6;->A01:Lcom/facebook/ads/redexgen/X/fX;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Lcom/facebook/ads/redexgen/X/fU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ADZ(Lcom/facebook/ads/redexgen/X/pR;)V
    .locals 0

    return-void
.end method

.method public final synthetic ADa(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final AFI(Lcom/facebook/ads/redexgen/X/px;)V
    .locals 0

    .line 33447
    return-void
.end method

.method public final AFK(Lcom/facebook/ads/redexgen/X/pz;)V
    .locals 2

    .line 33448
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Lcom/facebook/ads/redexgen/X/fU;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/fX;->A01(Lcom/facebook/ads/redexgen/X/pz;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/fU;->AFL(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 33449
    return-void
.end method

.method public final AFM(ZI)V
    .locals 1

    .line 33450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Lcom/facebook/ads/redexgen/X/fU;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/fU;->AFM(ZI)V

    .line 33451
    return-void
.end method

.method public final AFt()V
    .locals 0

    .line 33452
    return-void
.end method

.method public final synthetic AGA(Lcom/facebook/ads/androidx/media3/common/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/3T;->A00(Lcom/facebook/ads/redexgen/X/3U;Lcom/facebook/ads/androidx/media3/common/Timeline;I)V

    return-void
.end method

.method public final AGE(Lcom/facebook/ads/redexgen/X/pY;)V
    .locals 0

    .line 33453
    return-void
.end method
