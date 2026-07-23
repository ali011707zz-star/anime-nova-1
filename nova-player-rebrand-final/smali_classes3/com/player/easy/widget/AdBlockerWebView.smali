.class public final Lcom/player/easy/widget/AdBlockerWebView;
.super Landroid/webkit/WebView;
.source "AdBlockerWebView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000fJ\u0008\u0010\u001d\u001a\u00020\u001bH\u0002R\u000e\u0010\u000c\u001a\u00020\rX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/player/easy/widget/AdBlockerWebView;",
        "Landroid/webkit/WebView;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttrs",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mTag",
        "",
        "_blockAds",
        "",
        "adBlockerUtil",
        "Lcom/player/easy/util/AdBlockerUtil;",
        "emptyResponse",
        "Landroid/webkit/WebResourceResponse;",
        "progress",
        "Landroid/widget/ProgressBar;",
        "getProgress",
        "()Landroid/widget/ProgressBar;",
        "setProgress",
        "(Landroid/widget/ProgressBar;)V",
        "setAdBlockerEnabled",
        "",
        "isEnabled",
        "setAdBlockerWebViewClient",
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


# instance fields
.field private _blockAds:Z

.field private final adBlockerUtil:Lcom/player/easy/util/AdBlockerUtil;

.field private final emptyResponse:Landroid/webkit/WebResourceResponse;

.field private final mTag:Ljava/lang/String;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/player/easy/widget/AdBlockerWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/player/easy/widget/AdBlockerWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const-string p1, "AdBlockerWebView"

    iput-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView;->mTag:Ljava/lang/String;

    .line 21
    sget-object p1, Lcom/player/easy/util/AdBlockerUtil;->Companion:Lcom/player/easy/util/AdBlockerUtil$Companion;

    invoke-virtual {p1}, Lcom/player/easy/util/AdBlockerUtil$Companion;->getInstance()Lcom/player/easy/util/AdBlockerUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView;->adBlockerUtil:Lcom/player/easy/util/AdBlockerUtil;

    .line 22
    invoke-virtual {p1}, Lcom/player/easy/util/AdBlockerUtil;->createEmptyResponse()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView;->emptyResponse:Landroid/webkit/WebResourceResponse;

    .line 35
    invoke-direct {p0}, Lcom/player/easy/widget/AdBlockerWebView;->setAdBlockerWebViewClient()V

    return-void
.end method

.method public static final synthetic access$getAdBlockerUtil$p(Lcom/player/easy/widget/AdBlockerWebView;)Lcom/player/easy/util/AdBlockerUtil;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/player/easy/widget/AdBlockerWebView;->adBlockerUtil:Lcom/player/easy/util/AdBlockerUtil;

    return-object p0
.end method

.method public static final synthetic access$getEmptyResponse$p(Lcom/player/easy/widget/AdBlockerWebView;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/player/easy/widget/AdBlockerWebView;->emptyResponse:Landroid/webkit/WebResourceResponse;

    return-object p0
.end method

.method public static final synthetic access$get_blockAds$p(Lcom/player/easy/widget/AdBlockerWebView;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/player/easy/widget/AdBlockerWebView;->_blockAds:Z

    return p0
.end method

.method private final setAdBlockerWebViewClient()V
    .locals 1

    .line 45
    new-instance v0, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/player/easy/widget/AdBlockerWebView$setAdBlockerWebViewClient$1;-><init>(Lcom/player/easy/widget/AdBlockerWebView;)V

    .line 44
    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public final getProgress()Landroid/widget/ProgressBar;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/player/easy/widget/AdBlockerWebView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final setAdBlockerEnabled(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/player/easy/widget/AdBlockerWebView;->_blockAds:Z

    return-void
.end method

.method public final setProgress(Landroid/widget/ProgressBar;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/player/easy/widget/AdBlockerWebView;->progress:Landroid/widget/ProgressBar;

    return-void
.end method
