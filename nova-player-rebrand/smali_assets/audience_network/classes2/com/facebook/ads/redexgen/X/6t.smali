.class public final Lcom/facebook/ads/redexgen/X/6t;
.super Lcom/facebook/ads/redexgen/X/E4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 18028
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E4;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4B;)V
    .locals 1

    .line 18029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/6r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6r;->A00(Lcom/facebook/ads/redexgen/X/6r;)Lcom/facebook/ads/redexgen/X/Yv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18030
    return-void

    .line 18031
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6t;->A00:Lcom/facebook/ads/redexgen/X/6r;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6r;->A00(Lcom/facebook/ads/redexgen/X/6r;)Lcom/facebook/ads/redexgen/X/Yv;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yv;->onPause()V

    .line 18032
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

    .line 18033
    check-cast p1, Lcom/facebook/ads/redexgen/X/4B;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6t;->A00(Lcom/facebook/ads/redexgen/X/4B;)V

    return-void
.end method
