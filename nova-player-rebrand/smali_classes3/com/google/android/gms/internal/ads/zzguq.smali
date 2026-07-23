.class public final Lcom/google/android/gms/internal/ads/zzguq;
.super Lcom/google/android/gms/internal/ads/zzgul;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgul;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zzb(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguq;
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    const-string v1, ", "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x5d

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "null key in entry: null="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgul;->zza()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgua;

    if-nez v1, :cond_5

    .line 12
    instance-of v1, p2, Ljava/util/Set;

    const/4 v2, 0x4

    if-eqz v1, :cond_4

    .line 13
    check-cast p2, Ljava/util/Set;

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 15
    :cond_4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgup;->zzs(I)Lcom/google/android/gms/internal/ads/zzguo;

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgul;->zza()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 19
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgtb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzgua;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgua;

    goto :goto_1

    :cond_6
    :goto_2
    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgus;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgul;->zza:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zza:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zza:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object v0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzguh;

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzguh;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzguo;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzguo;->zzi()Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgup;->zzo(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzguh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguh;

    .line 13
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgus;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzguh;->zzc()Lcom/google/android/gms/internal/ads/zzgui;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgus;-><init>(Lcom/google/android/gms/internal/ads/zzgui;ILjava/util/Comparator;)V

    return-object v0
.end method
