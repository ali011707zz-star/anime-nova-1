.class abstract Lcom/google/android/gms/internal/ads/zzgsv;
.super Lcom/google/android/gms/internal/ads/zzgsy;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final transient zza:Ljava/util/Map;

.field private transient zzb:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgsy;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method abstract zza(Ljava/util/Collection;)Ljava/util/Collection;
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
.end method

.method abstract zzc()Ljava/util/Collection;
.end method

.method public final zzd()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:I

    return v0
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsv;->zzc()Ljava/util/Collection;

    move-result-object v1

    .line 3
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:I

    .line 4
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:I

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final zzf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 2
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:I

    return-void
.end method

.method final zzg(Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgss;)Ljava/util/List;
    .locals 1

    .line 1
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgso;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgss;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsu;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgsu;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgss;)V

    return-object v0
.end method

.method final zzi()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zza:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgsn;

    .line 2
    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgsn;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/NavigableMap;)V

    return-object v1

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgsq;

    .line 4
    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgsq;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/SortedMap;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgsl;

    .line 5
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgsl;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/Map;)V

    return-object v1
.end method

.method final zzj()Ljava/util/Collection;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsx;-><init>(Lcom/google/android/gms/internal/ads/zzgsy;)V

    return-object v0
.end method

.method final zzk()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsf;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;)V

    return-object v0
.end method

.method final zzm()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zza:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgsm;

    .line 2
    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgsm;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/NavigableMap;)V

    return-object v1

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgsp;

    .line 4
    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgsp;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/SortedMap;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgsi;

    .line 5
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgsi;-><init>(Lcom/google/android/gms/internal/ads/zzgsv;Ljava/util/Map;)V

    return-object v1
.end method

.method final synthetic zzn(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zza:Ljava/util/Map;

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:I

    :cond_0
    return-void
.end method

.method final synthetic zzo()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zza:Ljava/util/Map;

    return-object v0
.end method

.method final synthetic zzp()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:I

    return v0
.end method

.method final synthetic zzq(I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgsv;->zzb:I

    return-void
.end method
