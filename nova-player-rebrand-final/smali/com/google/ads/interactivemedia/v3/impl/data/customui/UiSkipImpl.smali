.class public Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiSkipImpl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private button:Lcom/google/ads/interactivemedia/v3/api/customui/UiButton;

.field private countdown:Lcom/google/ads/interactivemedia/v3/api/customui/UiLabel;


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/api/customui/UiButton;Lcom/google/ads/interactivemedia/v3/api/customui/UiLabel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiSkipImpl;->button:Lcom/google/ads/interactivemedia/v3/api/customui/UiButton;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiSkipImpl;->countdown:Lcom/google/ads/interactivemedia/v3/api/customui/UiLabel;

    return-void
.end method

.method public static createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiSkipImpl;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;->button()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiButtonImpl;->createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiButtonImpl;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;->countdown()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    move-result-object p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;->createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;

    move-result-object p0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiSkipImpl;

    invoke-direct {v1, v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiSkipImpl;-><init>(Lcom/google/ads/interactivemedia/v3/api/customui/UiButton;Lcom/google/ads/interactivemedia/v3/api/customui/UiLabel;)V

    return-object v1
.end method
