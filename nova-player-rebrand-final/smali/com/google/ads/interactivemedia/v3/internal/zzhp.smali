.class public final Lcom/google/ads/interactivemedia/v3/internal/zzhp;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final zza:Z

.field final zzb:Ljava/lang/String;

.field final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhp;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhp;->zza:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhp;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzk;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzac;

    return-void
.end method
