.class public Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiFallbackImageImpl;
.super Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/customui/UiImage;


# instance fields
.field private id:Ljava/lang/String;

.field private program:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiFallbackImageImpl;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiFallbackImageImpl;->program:Ljava/lang/String;

    return-void
.end method

.method public static createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiFallbackImageData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiFallbackImageImpl;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiFallbackImageImpl;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiFallbackImageData;->id()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiFallbackImageData;->program()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiFallbackImageData;->url()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiFallbackImageData;->width()I

    move-result v4

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiFallbackImageData;->height()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiFallbackImageData;->altText()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiFallbackImageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method
