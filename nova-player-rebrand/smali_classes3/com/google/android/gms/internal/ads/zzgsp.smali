.class Lcom/google/android/gms/internal/ads/zzgsp;
.super Lcom/google/android/gms/internal/ads/zzgsi;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/SortedMap;


# instance fields
.field zzd:Ljava/util/SortedSet;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzgsv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/SortedMap;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsp;->zze:Lcom/google/android/gms/internal/ads/zzgsv;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgsi;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zzg()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zzg()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zzg()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsp;->zze:Lcom/google/android/gms/internal/ads/zzgsv;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgsp;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zzf()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zzg()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zzg()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgsp;->zze:Lcom/google/android/gms/internal/ads/zzgsv;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzgsp;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zzg()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsp;->zze:Lcom/google/android/gms/internal/ads/zzgsv;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgsp;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method zze()Ljava/util/SortedSet;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgsp;->zze:Lcom/google/android/gms/internal/ads/zzgsv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zzg()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgsq;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public zzf()Ljava/util/SortedSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsp;->zzd:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsp;->zze()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsp;->zzd:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method zzg()Ljava/util/SortedMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsi;->zza:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method
