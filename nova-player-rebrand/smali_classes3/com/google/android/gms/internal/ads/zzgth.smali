.class final Lcom/google/android/gms/internal/ads/zzgth;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgtm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgtm;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgth;->zza:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgth;->zza:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgth;->zza:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzc()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtm;->zzi(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtm;->zzp(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgth;->zza:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzc()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgtf;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgtf;-><init>(Lcom/google/android/gms/internal/ads/zzgtm;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgth;->zza:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzc()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzh()I

    move-result v4

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzk()Ljava/lang/Object;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzl()[I

    move-result-object v6

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzm()[Ljava/lang/Object;

    move-result-object v7

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzn()[Ljava/lang/Object;

    move-result-object v8

    .line 11
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzgtn;->zze(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 12
    invoke-virtual {v0, p1, v4}, Lcom/google/android/gms/internal/ads/zzgtm;->zze(II)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzt()I

    move-result p1

    add-int/2addr p1, v1

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgtm;->zzu(I)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->zzd()V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgth;->zza:Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtm;->size()I

    move-result v0

    return v0
.end method
