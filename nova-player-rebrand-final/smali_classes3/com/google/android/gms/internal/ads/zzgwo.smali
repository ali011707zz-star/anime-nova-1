.class public abstract Lcom/google/android/gms/internal/ads/zzgwo;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method static zzd(Ljava/util/Set;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgwo;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgwo;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwo;->zzc()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ljava/util/Set;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwo;->zzd(Ljava/util/Set;)I

    move-result v1

    if-gez v1, :cond_2

    return v2

    :cond_2
    instance-of v3, p1, Lcom/google/android/gms/internal/ads/zzgwo;

    if-eqz v3, :cond_3

    .line 4
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgwo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgwo;->zzb()I

    move v3, v2

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwo;->zzc()I

    move-result v4

    if-ge v4, v3, :cond_4

    return v2

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwo;->zza()Lcom/google/android/gms/internal/ads/zzgwt;

    move-result-object v4

    move v5, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 7
    :try_start_0
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    :cond_5
    return v2

    :cond_6
    if-ne v5, v1, :cond_7

    return v0

    :cond_7
    if-ge v5, v3, :cond_8

    return v2

    .line 8
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v2

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/2addr v1, v0

    if-le v1, v5, :cond_9

    return v2

    :cond_a
    return v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract zza()Lcom/google/android/gms/internal/ads/zzgwt;
.end method

.method abstract zzb()I
.end method

.method abstract zzc()I
.end method
