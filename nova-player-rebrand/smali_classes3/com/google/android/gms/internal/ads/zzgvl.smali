.class abstract Lcom/google/android/gms/internal/ads/zzgvl;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private transient zza:Ljava/util/Set;

.field private transient zzc:Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvl;->zza:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvl;->zza()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvl;->zza:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvl;->zzc:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgvk;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvl;->zzc:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method abstract zza()Ljava/util/Set;
.end method
