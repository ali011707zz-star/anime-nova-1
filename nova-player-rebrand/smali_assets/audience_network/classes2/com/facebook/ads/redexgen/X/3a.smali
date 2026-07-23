.class public final Lcom/facebook/ads/redexgen/X/3a;
.super Lcom/facebook/ads/redexgen/X/E0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dg;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dg;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10603
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3a;->A00:Lcom/facebook/ads/redexgen/X/Dg;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E0;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 2

    .line 10604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3a;->A00:Lcom/facebook/ads/redexgen/X/Dg;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Dg;->setVisibility(I)V

    .line 10605
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

    .line 10606
    check-cast p1, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3a;->A00(Lcom/facebook/ads/redexgen/X/E1;)V

    return-void
.end method
