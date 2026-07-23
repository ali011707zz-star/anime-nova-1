.class public Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/customui/UiImage;


# instance fields
.field private altText:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;->width:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;->height:I

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;->altText:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;->url:Ljava/lang/String;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;->width:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;->height:I

    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;->altText:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method

.method public static createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;->width()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;->height()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;->altText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method
