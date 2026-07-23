.class public final Lcom/google/android/gms/internal/ads/zzefd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzikp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzikp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefd;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefd;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)Lcom/google/android/gms/internal/ads/zzefd;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefd;-><init>(Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;Lcom/google/android/gms/internal/ads/zzikp;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzefc;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefd;->zza:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzikn;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzikn;->zzd()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzgzy;

    move-result-object v1

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefd;->zzb:Lcom/google/android/gms/internal/ads/zzikp;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdek;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdek;->zza()Lcom/google/android/gms/internal/ads/zzdej;

    move-result-object v2

    .line 1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzefc;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzefc;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzdej;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefd;->zza()Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object v0

    return-object v0
.end method
