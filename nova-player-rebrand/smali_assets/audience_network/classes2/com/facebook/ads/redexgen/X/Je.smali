.class public final Lcom/facebook/ads/redexgen/X/Je;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Rk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/66;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/66;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/66;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 43250
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAI()Z
    .locals 1

    .line 43251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/66;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/66;->A09(Lcom/facebook/ads/redexgen/X/66;)Lcom/facebook/ads/redexgen/X/dC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dC;->A0l()Z

    move-result v0

    return v0
.end method
