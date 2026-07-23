.class public Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;
.super Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private fallbackImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private program:Ljava/lang/String;

.field private xPosition:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yPosition:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/google/ads/interactivemedia/v3/api/customui/UiImage;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p7

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;-><init>(Ljava/lang/String;ZLcom/google/ads/interactivemedia/v3/api/customui/UiImage;ZLjava/lang/String;)V

    const-string p1, ""

    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;->program:Ljava/lang/String;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;->xPosition:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;->yPosition:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;->program:Ljava/lang/String;

    iput-object p6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;->fallbackImages:Ljava/util/List;

    invoke-static {p8}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;->xPosition:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-static {p9}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;->yPosition:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method

.method public static createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;
    .locals 10

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->fallbackImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiFallbackImageData;

    .line 3
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiFallbackImageImpl;->createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiFallbackImageData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiFallbackImageImpl;

    move-result-object v1

    .line 4
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->image()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;->createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiImageData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiImageImpl;

    move-result-object v3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;

    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->id()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->required()Z

    move-result v2

    .line 8
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->clickable()Z

    move-result v4

    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->program()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->clickUrl()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->xPosition()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;->yPosition()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;-><init>(Ljava/lang/String;ZLcom/google/ads/interactivemedia/v3/api/customui/UiImage;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
