.class public final Lcom/facebook/ads/redexgen/X/O4;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/O5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableWebViewClient"
.end annotation


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/No;

.field public final A02:Lcom/facebook/ads/redexgen/X/O3;

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/No;Lcom/facebook/ads/redexgen/X/O3;Z)V
    .locals 1

    .line 55213
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 55214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:Z

    .line 55215
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O4;->A01:Lcom/facebook/ads/redexgen/X/No;

    .line 55216
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/O4;->A02:Lcom/facebook/ads/redexgen/X/O3;

    .line 55217
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/O4;->A03:Z

    .line 55218
    return-void
.end method

.method private A00()V
    .locals 2

    .line 55219
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A03:Z

    if-eqz v0, :cond_0

    .line 55220
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O4;->A02:Lcom/facebook/ads/redexgen/X/O3;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/O3;->AFF(Lcom/facebook/ads/AdError;)V

    .line 55221
    :goto_0
    return-void

    .line 55222
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A01()V

    goto :goto_0
.end method

.method private A01()V
    .locals 1

    .line 55223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A02:Lcom/facebook/ads/redexgen/X/O3;

    if-eqz v0, :cond_0

    .line 55224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A02:Lcom/facebook/ads/redexgen/X/O3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O3;->AFG()V

    .line 55225
    :cond_0
    return-void
.end method

.method private A02()V
    .locals 0

    .line 55226
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A00()V

    .line 55227
    return-void
.end method

.method private A03()V
    .locals 4

    .line 55228
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/j5;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/j5;-><init>(Lcom/facebook/ads/redexgen/X/O4;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A01:Lcom/facebook/ads/redexgen/X/No;

    .line 55229
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0F()I

    move-result v0

    int-to-long v0, v0

    .line 55230
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55231
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 0

    .line 55232
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A03()V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 0

    .line 55233
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A02()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 55234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:Z

    .line 55235
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A01()V

    .line 55236
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 55237
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 55238
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A03()V

    .line 55239
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 55240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:Z

    .line 55241
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A02()V

    .line 55242
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 55243
    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A2g:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ay;->A0D(I)V

    .line 55244
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A00()V

    .line 55245
    const/4 v0, 0x1

    return v0
.end method
