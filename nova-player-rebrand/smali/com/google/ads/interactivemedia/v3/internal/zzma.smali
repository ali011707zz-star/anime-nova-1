.class public final Lcom/google/ads/interactivemedia/v3/internal/zzma;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzlx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "gads:ad_key_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:adshield:enable_adshield_instrumentation"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    return-void
.end method
