.class public final Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;
.super Landroid/webkit/WebViewClient;
.source "AdBlockerWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/widget/AdBlockerWebView;->setAdBlockerWebViewClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0085\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001c\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017J\u001c\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J$\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0012\u001a\u00020\u000bH\u0016J.\u0010\u0013\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0016J&\u0010\u0013\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001c\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J0\u0010\u001d\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\t2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\t2\u0008\u0010 \u001a\u0004\u0018\u00010\tH\u0016J&\u0010!\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\"\u001a\u0004\u0018\u00010\u0003H\u0016J&\u0010#\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\"\u0010&\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(H\u0016J\u001c\u0010*\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010+\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001c\u0010,\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010-H\u0016J0\u0010.\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u00101\u001a\u0004\u0018\u00010\t2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0016J&\u00102\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010/\u001a\u0004\u0018\u0001032\u0008\u0010\u0018\u001a\u0004\u0018\u000104H\u0016J&\u00105\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u00106\u001a\u0004\u0018\u0001072\u0008\u00108\u001a\u0004\u0018\u000107H\u0016J&\u00109\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010:\u001a\u0004\u0018\u0001072\u0008\u0010;\u001a\u0004\u0018\u000107H\u0016J\u001c\u0010<\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006="
    }
    d2 = {
        "com/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1",
        "Landroid/webkit/WebViewClient;",
        "shouldInterceptRequest",
        "Landroid/webkit/WebResourceResponse;",
        "view",
        "Landroid/webkit/WebView;",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "url",
        "",
        "shouldOverrideKeyEvent",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "shouldOverrideUrlLoading",
        "onPageFinished",
        "",
        "doUpdateVisitedHistory",
        "isReload",
        "onReceivedError",
        "errorCode",
        "",
        "description",
        "failingUrl",
        "error",
        "Landroid/webkit/WebResourceError;",
        "onRenderProcessGone",
        "detail",
        "Landroid/webkit/RenderProcessGoneDetail;",
        "onReceivedLoginRequest",
        "realm",
        "account",
        "args",
        "onReceivedHttpError",
        "errorResponse",
        "onPageStarted",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onScaleChanged",
        "oldScale",
        "",
        "newScale",
        "onPageCommitVisible",
        "onUnhandledKeyEvent",
        "onReceivedClientCertRequest",
        "Landroid/webkit/ClientCertRequest;",
        "onReceivedHttpAuthRequest",
        "handler",
        "Landroid/webkit/HttpAuthHandler;",
        "host",
        "onReceivedSslError",
        "Landroid/webkit/SslErrorHandler;",
        "Landroid/net/http/SslError;",
        "onTooManyRedirects",
        "cancelMsg",
        "Landroid/os/Message;",
        "continueMsg",
        "onFormResubmission",
        "dontResend",
        "resend",
        "onLoadResource",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdBlockerWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdBlockerWebView.kt\ncom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,248:1\n257#2,2:249\n257#2,2:251\n257#2,2:253\n257#2,2:255\n257#2,2:257\n*S KotlinDebug\n*F\n+ 1 AdBlockerWebView.kt\ncom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1\n*L\n95#1:249,2\n136#1:251,2\n148#1:253,2\n179#1:255,2\n185#1:257,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/player/easy/widget/AdBlockerWebView;


# direct methods
.method constructor <init>(Lcom/player/easy/widget/AdBlockerWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    .line 45
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 235
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 242
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-virtual {p2}, Lcom/player/easy/widget/AdBlockerWebView;->getProgress()Landroid/widget/ProgressBar;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    .line 249
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_1
    iget-object p2, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/player/easy/widget/AdBlockerWebView;->setProgress(Landroid/widget/ProgressBar;)V

    .line 122
    const-string p2, "\n                    // Find all video elements in the page\n                    document.querySelectorAll(\'video\').forEach(video => {\n                        // Listen for play event\n                        video.addEventListener(\'play\', () => {\n                            console.log(\'Video play event detected for URL:\', video.currentSrc);\n                            AndroidBridge.onVideoEvent(\'play\', video.currentSrc || video.src);\n                        });\n    \n                        // Listen for pause event\n                        video.addEventListener(\'pause\', () => {\n                            console.log(\'Video pause event detected for URL:\', video.currentSrc);\n                            AndroidBridge.onVideoEvent(\'pause\', video.currentSrc || video.src);\n                        });\n    \n                        // Listen for ended event\n                        video.addEventListener(\'ended\', () => {\n                            console.log(\'Video ended event detected for URL:\', video.currentSrc);\n                            AndroidBridge.onVideoEvent(\'ended\', video.currentSrc || video.src);\n                        });\n                    });\n                "

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 185
    iget-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-virtual {p1}, Lcom/player/easy/widget/AdBlockerWebView;->getProgress()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 257
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-virtual {p1}, Lcom/player/easy/widget/AdBlockerWebView;->getProgress()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 251
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/player/easy/widget/AdBlockerWebView;->setProgress(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 148
    iget-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-virtual {p1}, Lcom/player/easy/widget/AdBlockerWebView;->getProgress()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 253
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/player/easy/widget/AdBlockerWebView;->setProgress(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 179
    iget-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-virtual {p1}, Lcom/player/easy/widget/AdBlockerWebView;->getProgress()Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 255
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/player/easy/widget/AdBlockerWebView;->setProgress(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 222
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 157
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1

    .line 159
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    .line 189
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 230
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0

    .line 199
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-static {v0}, Lcom/player/easy/widget/AdBlockerWebView;->access$get_blockAds$p(Lcom/player/easy/widget/AdBlockerWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 53
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-static {v0}, Lcom/player/easy/widget/AdBlockerWebView;->access$getAdBlockerUtil$p(Lcom/player/easy/widget/AdBlockerWebView;)Lcom/player/easy/util/AdBlockerUtil;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/player/easy/util/AdBlockerUtil;->isAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-static {p1}, Lcom/player/easy/widget/AdBlockerWebView;->access$getEmptyResponse$p(Lcom/player/easy/widget/AdBlockerWebView;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-static {v0}, Lcom/player/easy/widget/AdBlockerWebView;->access$get_blockAds$p(Lcom/player/easy/widget/AdBlockerWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-static {v0}, Lcom/player/easy/widget/AdBlockerWebView;->access$getAdBlockerUtil$p(Lcom/player/easy/widget/AdBlockerWebView;)Lcom/player/easy/util/AdBlockerUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/player/easy/util/AdBlockerUtil;->isAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;->this$0:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-static {p1}, Lcom/player/easy/widget/AdBlockerWebView;->access$getEmptyResponse$p(Lcom/player/easy/widget/AdBlockerWebView;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 86
    const-string p2, ""

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
