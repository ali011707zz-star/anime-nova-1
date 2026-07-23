.class final Lcom/google/android/gms/internal/ads/zzgwk;
.super Lcom/google/android/gms/internal/ads/zzgwo;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Ljava/util/Set;

.field final synthetic zzb:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzb:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwo;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzb:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzb:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzb:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwk;->zza()Lcom/google/android/gms/internal/ads/zzgwt;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzb:Ljava/util/Set;

    .line 2
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzgwt;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzb:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgwj;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgwj;-><init>(Lcom/google/android/gms/internal/ads/zzgwk;Ljava/util/Set;Ljava/util/Set;)V

    return-object v2
.end method

.method final zzb()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zzb:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwk;->zza:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgwo;->zzd(Ljava/util/Set;)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwo;->zzd(Ljava/util/Set;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
