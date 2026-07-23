.class final Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

.field static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;


# instance fields
.field final zzc:Z

.field final zzd:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzg:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    return-void

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzc:Z

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsr$zza;->zzd:Ljava/lang/Throwable;

    return-void
.end method
