.class public Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;
    }
.end annotation


# instance fields
.field public initData:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

.field public omidInitializer:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzfe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->initData:Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData$JavaScriptNativeBridgeInitData;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/WebViewInitData;->omidInitializer:Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    return-void
.end method
