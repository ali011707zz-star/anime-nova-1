.class public final Lcom/facebook/ads/redexgen/X/KG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/c7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46640
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACt()V
    .locals 2

    .line 46641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jd;->A2H(Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 46642
    return-void
.end method

.method public final AEm()V
    .locals 2

    .line 46643
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0x(Lcom/facebook/ads/redexgen/X/KE;Z)Z

    .line 46644
    return-void
.end method

.method public final AEn()V
    .locals 2

    .line 46645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KG;->A00:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0x(Lcom/facebook/ads/redexgen/X/KE;Z)Z

    .line 46646
    return-void
.end method
