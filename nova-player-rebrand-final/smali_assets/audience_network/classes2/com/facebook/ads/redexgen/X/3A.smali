.class public final Lcom/facebook/ads/redexgen/X/3A;
.super Lcom/facebook/ads/redexgen/X/E4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/34;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/34;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/34;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10138
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3A;->A00:Lcom/facebook/ads/redexgen/X/34;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E4;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 2

    .line 10139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3A;->A00:Lcom/facebook/ads/redexgen/X/34;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/34;->A06(Lcom/facebook/ads/redexgen/X/34;)Lcom/facebook/ads/redexgen/X/fI;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fI;->setChecked(Z)V

    .line 10140
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

    .line 10141
    check-cast p1, Lcom/facebook/ads/redexgen/X/4B;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3A;->A00(Lcom/facebook/ads/redexgen/X/4B;)V

    return-void
.end method
