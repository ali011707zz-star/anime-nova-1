.class public final Lcom/facebook/ads/redexgen/X/hF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/b8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/hC;->A0W(Lcom/facebook/ads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/hC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V
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

    .line 84405
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hF;->A00:Lcom/facebook/ads/redexgen/X/hC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hF;->A01:Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AE7(Lcom/facebook/ads/redexgen/X/b7;)V
    .locals 3

    .line 84406
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hF;->A01:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b7;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/UK;->A1o(ZZ)V

    .line 84407
    return-void

    .line 84408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
