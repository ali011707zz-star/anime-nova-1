.class public final Lcom/facebook/ads/redexgen/X/Dk;
.super Lcom/facebook/ads/redexgen/X/UN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/UN<",
        "Lcom/facebook/ads/redexgen/X/4A;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Dj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34324
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 4

    .line 34325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A00(Lcom/facebook/ads/redexgen/X/Dj;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34326
    return-void

    .line 34327
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    .line 34328
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A00(Lcom/facebook/ads/redexgen/X/Dj;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/Dj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Dj;->A00(Lcom/facebook/ads/redexgen/X/Dj;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getCurrentPositionInMillis()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-long v0, v1

    .line 34329
    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Dj;->A03(Lcom/facebook/ads/redexgen/X/Dj;J)Ljava/lang/String;

    move-result-object v0

    .line 34330
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Dj;->setText(Ljava/lang/CharSequence;)V

    .line 34331
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/4A;",
            ">;"
        }
    .end annotation

    .line 34332
    const-class v0, Lcom/facebook/ads/redexgen/X/4A;

    return-object v0
.end method

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

    .line 34333
    check-cast p1, Lcom/facebook/ads/redexgen/X/4A;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dk;->A00(Lcom/facebook/ads/redexgen/X/4A;)V

    return-void
.end method
