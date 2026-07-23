.class public final Lcom/facebook/ads/redexgen/X/UI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UJ;->A02(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/T8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66778
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UI;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()Ljava/lang/String;
    .locals 3

    .line 66779
    sget-object v0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66780
    .local v0, "browserUserAgent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 66781
    return-object v0

    .line 66782
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UI;->A00:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 66783
    .local v1, "webView":Landroid/webkit/WebView;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UH;-><init>(Lcom/facebook/ads/redexgen/X/UI;)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 66784
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 66785
    .local v2, "resultUA":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 66786
    if-eqz v1, :cond_1

    .line 66787
    sget-object v0, Lcom/facebook/ads/redexgen/X/UJ;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 66788
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66789
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UI;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
