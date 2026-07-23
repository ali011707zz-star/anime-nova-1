.class public final Lcom/facebook/ads/redexgen/X/31;
.super Lcom/facebook/ads/redexgen/X/E4;
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

    .line 9915
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/31;->A00:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E4;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 1

    .line 9916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/31;->A00:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DZ;->A04(Lcom/facebook/ads/redexgen/X/DZ;)V

    .line 9917
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

    .line 9918
    check-cast p1, Lcom/facebook/ads/redexgen/X/4B;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/31;->A00(Lcom/facebook/ads/redexgen/X/4B;)V

    return-void
.end method
