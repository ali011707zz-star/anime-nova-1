.class public Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiButtonImpl;
.super Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/customui/UiButton;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiButtonImpl;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiButtonImpl;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;->required()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;->text()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiButtonImpl;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method
