.class public final Lcom/facebook/ads/redexgen/X/jA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Sp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/O5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableAdCacheListener"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/No;

.field public final A01:Lcom/facebook/ads/redexgen/X/O3;

.field public final A02:Lcom/facebook/ads/redexgen/X/Sx;

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O3;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/No;Z)V
    .locals 0

    .line 88152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88153
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jA;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 88154
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/jA;->A01:Lcom/facebook/ads/redexgen/X/O3;

    .line 88155
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/jA;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    .line 88156
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/jA;->A00:Lcom/facebook/ads/redexgen/X/No;

    .line 88157
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/jA;->A04:Z

    .line 88158
    return-void
.end method

.method private final A00()V
    .locals 5

    .line 88159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jA;->A03:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 88160
    .local v0, "precacheWebView":Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 88161
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/jA;->A00:Lcom/facebook/ads/redexgen/X/No;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jA;->A01:Lcom/facebook/ads/redexgen/X/O3;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jA;->A04:Z

    new-instance v1, Lcom/facebook/ads/redexgen/X/O4;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/O4;-><init>(Lcom/facebook/ads/redexgen/X/No;Lcom/facebook/ads/redexgen/X/O3;Z)V

    .line 88162
    .local v1, "playableWebViewClient":Lcom/facebook/ads/redexgen/X/O4;
    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jA;->A00:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 88164
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/O4;->A04(Lcom/facebook/ads/redexgen/X/O4;)V

    .line 88165
    return-void
.end method

.method private A01(Z)V
    .locals 2

    .line 88166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jA;->A00:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0G()Lcom/facebook/ads/redexgen/X/Np;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Np;->A05:Lcom/facebook/ads/redexgen/X/Np;

    if-ne v1, v0, :cond_0

    .line 88167
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/jA;->A00()V

    .line 88168
    return-void

    .line 88169
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jA;->A00:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0L()Ljava/lang/String;

    move-result-object v1

    .line 88170
    .local v0, "markupUrlResult":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 88171
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jA;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jA;->A00:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88172
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jA;->A00:Lcom/facebook/ads/redexgen/X/No;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/No;->A0T(Ljava/lang/String;)V

    .line 88173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jA;->A01:Lcom/facebook/ads/redexgen/X/O3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/O3;->AFG()V

    .line 88174
    return-void
.end method


# virtual methods
.method public final ADL()V
    .locals 2

    .line 88175
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/jA;->A04:Z

    if-eqz v0, :cond_0

    .line 88176
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jA;->A01:Lcom/facebook/ads/redexgen/X/O3;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/O3;->AFF(Lcom/facebook/ads/AdError;)V

    .line 88177
    :goto_0
    return-void

    .line 88178
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jA;->A01(Z)V

    goto :goto_0
.end method

.method public final ADT()V
    .locals 1

    .line 88179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/jA;->A01(Z)V

    .line 88180
    return-void
.end method
