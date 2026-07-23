.class final Lcom/google/android/gms/internal/ads/zzgxy;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;
.implements Lj$/util/List;


# instance fields
.field final zza:[I

.field final zzb:I

.field final zzc:I


# direct methods
.method constructor <init>([III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzi([IIII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzgxy;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxy;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v2

    const/4 v5, 0x0

    if-ne v3, v1, :cond_3

    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    add-int v7, v2, v3

    .line 2
    aget v6, v6, v7

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    add-int v8, v4, v3

    aget v7, v7, v8

    if-eq v6, v7, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return v5

    .line 3
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/lang/Iterable$-CC;->$default$forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    sub-int/2addr v0, v1

    const-string v2, "index"

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzm(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    add-int/2addr v1, p1

    .line 2
    aget p1, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzi([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    sub-int/2addr p1, v1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    add-int/2addr v3, v1

    :goto_0
    if-lt v3, v2, :cond_1

    .line 3
    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    if-ltz v3, :cond_2

    sub-int/2addr v3, v2

    return v3

    :cond_2
    return v1
.end method

.method public synthetic parallelStream()Lj$/util/stream/Stream;
    .locals 1

    .line 0
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxy;->parallelStream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic removeIf(Ljava/util/function/Predicate;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/List$-CC;->$default$replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    sub-int/2addr v0, v1

    check-cast p2, Ljava/lang/Integer;

    .line 2
    const-string v2, "index"

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzm(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    add-int/2addr v1, p1

    .line 3
    aget p1, v0, v1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, v1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic sort(Ljava/util/Comparator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/List$-CC;->$default$sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lj$/util/Spliterators;->spliterator([IIII)Lj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxy;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Lj$/util/stream/Stream;
    .locals 1

    .line 0
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxy;->stream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    sub-int/2addr v0, v1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzo(III)V

    if-ne p1, p2, :cond_0

    .line 2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgxy;

    .line 3
    invoke-direct {p2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgxy;-><init>([III)V

    return-object p2
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zzb:I

    sub-int v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:[I

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    const-string v4, ", "

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    .line 4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
