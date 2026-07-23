.class public Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLinkImpl;
.super Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/customui/UiLabel;


# instance fields
.field private clickUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLinkImpl;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public static createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLinkImpl;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLinkImpl;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;->required()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;->clickUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLinkImpl;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
