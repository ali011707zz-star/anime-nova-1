.class final synthetic Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzg;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpg;


# static fields
.field static final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzg;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzg;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzg;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzg;->zza:Lcom/google/ads/interactivemedia/v3/impl/data/customui/zzg;

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
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLinkImpl;->createFromJavaScriptMessage(Lcom/google/ads/interactivemedia/v3/impl/data/customui/JavaScriptUiLinkData;)Lcom/google/ads/interactivemedia/v3/impl/data/customui/UiLinkImpl;

    move-result-object p1

    return-object p1
.end method
