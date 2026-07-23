.class public Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;
.super Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiElementImpl;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private clickUrl:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clickable:Z

.field private image:Lcom/google/ads/interactivemedia/v3/api/customui/UiImage;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/google/ads/interactivemedia/v3/api/customui/UiImage;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiElementImpl;-><init>(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;->clickable:Z

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;->clickUrl:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;->image:Lcom/google/ads/interactivemedia/v3/api/customui/UiImage;

    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;->clickable:Z

    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;->clickUrl:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method

.method public static createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;->image()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;->createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;

    move-result-object v4

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;->required()Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;->clickable()Z

    move-result v5

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;->clickUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;-><init>(Ljava/lang/String;ZLcom/google/ads/interactivemedia/v3/api/customui/UiImage;ZLjava/lang/String;)V

    return-object v1
.end method
