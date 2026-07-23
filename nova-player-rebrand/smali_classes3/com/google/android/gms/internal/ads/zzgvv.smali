.class final Lcom/google/android/gms/internal/ads/zzgvv;
.super Lcom/google/android/gms/internal/ads/zzgse;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final transient zza:Lcom/google/android/gms/internal/ads/zzgru;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgru;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgse;-><init>(Ljava/util/Map;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgvv;->zza:Lcom/google/android/gms/internal/ads/zzgru;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zzc()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvv;->zza:Lcom/google/android/gms/internal/ads/zzgru;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgru;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method final zzh()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsv;->zzi()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final zzl()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsv;->zzm()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
