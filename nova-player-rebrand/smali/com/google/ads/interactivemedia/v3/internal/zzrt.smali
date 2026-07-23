.class final Lcom/google/ads/interactivemedia/v3/internal/zzrt;
.super Lcom/google/ads/interactivemedia/v3/internal/zzrd;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzrt;


# instance fields
.field final transient zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->$r8$clinit:I

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzrm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzrj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrj;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzqu;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzqu;Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-void
.end method


# virtual methods
.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzv(Ljava/lang/Object;Z)I

    move-result p1

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzri;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzri;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzri;->zza()Ljava/util/Set;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    .line 2
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrz;->zza(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    return v3

    .line 7
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 9
    :goto_0
    :try_start_0
    invoke-interface {v0, v5, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_4

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    return v3

    .line 11
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_4
    if-nez v6, :cond_6

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    .line 13
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_6
    return v3

    .line 3
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzt()Lcom/google/ads/interactivemedia/v3/internal/zzsa;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

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

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    .line 3
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    .line 6
    invoke-static {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrz;->zza(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v1

    .line 9
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    .line 12
    invoke-interface {v5, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    :cond_5
    return v2

    :cond_6
    return v0

    :catch_0
    return v2

    .line 13
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final first()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzu(Ljava/lang/Object;Z)I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzv(Ljava/lang/Object;Z)I

    move-result p1

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzu(Ljava/lang/Object;Z)I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzsa;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v0

    return-object v0
.end method

.method final zzb()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzb()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzc()I

    move-result v0

    return v0
.end method

.method final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzd()I

    move-result v0

    return v0
.end method

.method public final zze()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzf()Z

    move-result v0

    return v0
.end method

.method final zzg([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zzg([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final zzo(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrd;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzu(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzw(II)Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    move-result-object p1

    return-object p1
.end method

.method final zzp(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrd;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzq(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrd;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzo(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrd;

    move-result-object p1

    return-object p1
.end method

.method final zzq(Ljava/lang/Object;Z)Lcom/google/ads/interactivemedia/v3/internal/zzrd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzv(Ljava/lang/Object;Z)I

    move-result p1

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzw(II)Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    move-result-object p1

    return-object p1
.end method

.method final zzs()Lcom/google/ads/interactivemedia/v3/internal/zzrd;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzh(Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    .line 4
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzqu;Ljava/util/Comparator;)V

    return-object v2
.end method

.method public final zzt()Lcom/google/ads/interactivemedia/v3/internal/zzsa;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v0

    return-object v0
.end method

.method final zzu(Ljava/lang/Object;Z)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1

    :cond_1
    not-int p1, p1

    return p1
.end method

.method final zzv(Ljava/lang/Object;Z)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    not-int p1, p1

    return p1
.end method

.method final zzw(II)Lcom/google/ads/interactivemedia/v3/internal/zzrt;
    .locals 3

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    if-ge p1, p2, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrt;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzrt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzqu;Ljava/util/Comparator;)V

    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Ljava/util/Comparator;

    .line 3
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzh(Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/zzrt;

    move-result-object p1

    return-object p1
.end method
