.class public final Lcom/facebook/ads/redexgen/X/FZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FY;->A05(Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Y2;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/e5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/e5;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/FY;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/e5;)V
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

    .line 35938
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FZ;->A01:Lcom/facebook/ads/redexgen/X/FY;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FZ;->A00:Lcom/facebook/ads/redexgen/X/e5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACz()V
    .locals 1

    .line 35939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FZ;->A00:Lcom/facebook/ads/redexgen/X/e5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/e5;->A02()I

    move-result v0

    if-nez v0, :cond_0

    .line 35940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FZ;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FY;->A03(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 35941
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FZ;->A01:Lcom/facebook/ads/redexgen/X/FY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FY;->A04(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0U()V

    .line 35942
    return-void
.end method
