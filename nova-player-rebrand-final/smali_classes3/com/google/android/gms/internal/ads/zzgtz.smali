.class abstract Lcom/google/android/gms/internal/ads/zzgtz;
.super Lcom/google/android/gms/internal/ads/zzgua;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgua;-><init>()V

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgtb;->zzb(ILjava/lang/String;)I

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    return-void
.end method

.method private final zzf(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgua;->zze(II)I

    move-result p1

    if-gt p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzc:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    .line 2
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtz;
    .locals 3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgtz;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    .line 2
    aput-object p1, v0, v1

    return-object p0
.end method

.method final zzb([Ljava/lang/Object;I)V
    .locals 3

    const/4 p2, 0x2

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgvy;->zza([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgtz;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    return-void
.end method

.method public final zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgua;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgtz;->zzf(I)V

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgub;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgub;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgub;->zzg([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    return-object p0

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgua;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgua;

    goto :goto_1

    :cond_2
    return-object p0
.end method
