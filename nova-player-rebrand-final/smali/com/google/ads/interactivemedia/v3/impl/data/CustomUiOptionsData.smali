.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzpa;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromCustomUiOptions(Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;)Lcom/google/ads/interactivemedia/v3/impl/data/CustomUiOptionsData;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;->getSkippableSupport()Z

    move-result v1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/CustomUiOptions;->getAboutThisAdSupport()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/AutoValue_CustomUiOptionsData;-><init>(ZZ)V

    return-object v0
.end method


# virtual methods
.method public abstract aboutThisAdSupport()Z
.end method

.method public abstract skippableSupport()Z
.end method
