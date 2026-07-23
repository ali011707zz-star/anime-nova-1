.class public final Lcom/facebook/ads/redexgen/X/Ke;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/b8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderDownloadListener"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/6M;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6M;)V
    .locals 1

    .line 48255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48256
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ke;->A00:Ljava/lang/ref/WeakReference;

    .line 48257
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/6S;)V
    .locals 0

    .line 48258
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ke;-><init>(Lcom/facebook/ads/redexgen/X/6M;)V

    return-void
.end method


# virtual methods
.method public final AE7(Lcom/facebook/ads/redexgen/X/b7;)V
    .locals 2

    .line 48259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ke;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6M;

    .line 48260
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/6M;
    if-eqz v1, :cond_0

    .line 48261
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b7;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->A09(Lcom/facebook/ads/redexgen/X/6M;Z)Z

    .line 48262
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/6M;->A07(Lcom/facebook/ads/redexgen/X/6M;)V

    .line 48263
    :cond_0
    return-void

    .line 48264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
