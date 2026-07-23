.class public final Lcom/facebook/ads/redexgen/X/LW;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/b3;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/b3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50420
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/b3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 50421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/b3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b3;->A08(Lcom/facebook/ads/redexgen/X/b3;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50422
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LW;->A00:Lcom/facebook/ads/redexgen/X/b3;

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b3;->A05(Lcom/facebook/ads/redexgen/X/b3;ILjava/lang/String;)V

    .line 50423
    :cond_0
    return-void
.end method
