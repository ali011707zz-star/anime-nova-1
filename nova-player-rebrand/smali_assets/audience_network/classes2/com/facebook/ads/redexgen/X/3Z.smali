.class public final Lcom/facebook/ads/redexgen/X/3Z;
.super Lcom/facebook/ads/redexgen/X/E4;
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

    .line 10599
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3Z;->A00:Lcom/facebook/ads/redexgen/X/Dg;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E4;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 2

    .line 10600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3Z;->A00:Lcom/facebook/ads/redexgen/X/Dg;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dg;->A00(Lcom/facebook/ads/redexgen/X/Dg;)Lcom/facebook/ads/redexgen/X/fI;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fI;->setChecked(Z)V

    .line 10601
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

    .line 10602
    check-cast p1, Lcom/facebook/ads/redexgen/X/4B;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3Z;->A00(Lcom/facebook/ads/redexgen/X/4B;)V

    return-void
.end method
