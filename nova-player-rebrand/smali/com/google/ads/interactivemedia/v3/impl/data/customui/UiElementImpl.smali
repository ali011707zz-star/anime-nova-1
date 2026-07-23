.class public Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiElementImpl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private id:Ljava/lang/String;

.field private required:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiElementImpl;->id:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiElementImpl;->required:Z

    return-void
.end method

.method public static createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiElementImpl;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiElementImpl;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;->required()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiElementImpl;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
