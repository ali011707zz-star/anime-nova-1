.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzd;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpg;


# static fields
.field static final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzd;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzd;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzd;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzd;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;->createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiIconData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiIconImpl;

    move-result-object p1

    return-object p1
.end method
