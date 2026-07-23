.class public final Lcom/facebook/ads/redexgen/X/WX;
.super Lcom/facebook/ads/redexgen/X/UO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WW;->A05(Lcom/facebook/ads/redexgen/X/V7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/UO<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/V7;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/WW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WW;Lcom/facebook/ads/redexgen/X/V7;)V
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

    .line 71119
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:Lcom/facebook/ads/redexgen/X/WW;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:Lcom/facebook/ads/redexgen/X/V7;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UO;-><init>()V

    return-void
.end method

.method private final A00(Ljava/lang/String;)V
    .locals 1

    .line 71120
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/UO;->A02(Ljava/lang/Object;)V

    .line 71121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:Lcom/facebook/ads/redexgen/X/V7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V7;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:Lcom/facebook/ads/redexgen/X/WW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WW;->A00(Lcom/facebook/ads/redexgen/X/WW;)Lcom/facebook/ads/redexgen/X/V9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V9;->A62()V

    .line 71123
    :goto_0
    return-void

    .line 71124
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:Lcom/facebook/ads/redexgen/X/WW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WW;->A00(Lcom/facebook/ads/redexgen/X/WW;)Lcom/facebook/ads/redexgen/X/V9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V9;->A61()V

    goto :goto_0
.end method


# virtual methods
.method public final A01(ILjava/lang/String;)V
    .locals 0

    .line 71125
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/UO;->A01(ILjava/lang/String;)V

    .line 71126
    return-void
.end method

.method public final bridge synthetic A02(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71127
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WX;->A00(Ljava/lang/String;)V

    return-void
.end method
