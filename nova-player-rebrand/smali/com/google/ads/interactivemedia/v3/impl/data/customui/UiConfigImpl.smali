.class public Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/customui/UiConfig;


# instance fields
.field private adTitle:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private attribution:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Lcom/google/ads/interactivemedia/v3/api/customui/UiLabel;",
            ">;"
        }
    .end annotation
.end field

.field private authorIcon:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private authorName:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private callToAction:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Lcom/google/ads/interactivemedia/v3/api/customui/UiButton;",
            ">;"
        }
    .end annotation
.end field

.field private icons:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private skip:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private videoOverlay:Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/zzpl<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->videoOverlay:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->callToAction:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->attribution:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->skip:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->videoOverlay:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->callToAction:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->attribution:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->skip:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->icons:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->adTitle:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->authorIcon:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->authorName:Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    return-void
.end method

.method public static createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->videoOverlay()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiElementData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzc;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzc;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpg;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v3

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->callToAction()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiButtonData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zza;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zza;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpg;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->attribution()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLabelData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zze;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zze;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpg;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->skip()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiSkipData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzh;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzh;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpg;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v6

    .line 8
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->icons()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzb;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzb;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpg;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v7

    .line 10
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->adTitle()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzg;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzg;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpg;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v8

    .line 11
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->authorIcon()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzd;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzd;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpg;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v9

    .line 13
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiConfigData;->authorName()Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    move-result-object p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzf;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzf;

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpg;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object v10

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;

    invoke-direct/range {v2 .. v10}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;Lcom/google/ads/interactivemedia/v3/internal/zzpl;)V

    return-object v2
.end method

.method private static synthetic lambda$createFromJavaScriptMessage$0(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;

    .line 3
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;->createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiVastIconData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiVastIconImpl;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic zza(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiConfigImpl;->lambda$createFromJavaScriptMessage$0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
