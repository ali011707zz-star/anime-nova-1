.class public Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;
.super Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiElementImpl;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/customui/UiLabel;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiElementImpl;-><init>(Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;->text:Ljava/lang/String;

    return-void
.end method

.method public static createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;->required()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;->text()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLabelImpl;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method
