.class public final Lcom/google/android/gms/internal/ads/zzguo;
.super Lcom/google/android/gms/internal/ads/zzgtz;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field zzd:[Ljava/lang/Object;

.field private zze:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgtz;-><init>(I)V

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtz;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgup;->zzn(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgua;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzguo;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguo;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguo;
    .locals 5

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgup;->zzn(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    array-length v2, v1

    if-gt v0, v2, :cond_2

    .line 4
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgty;->zza(I)I

    move-result v2

    :goto_0
    and-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    .line 7
    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 9
    aput-object p1, v3, v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzguo;->zze:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzguo;->zze:I

    .line 10
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtz;

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtz;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgtz;

    return-object p0
.end method

.method public final varargs zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguo;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzguo;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguo;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgtz;->zzb([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public final zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzguo;
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzguo;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguo;

    goto :goto_0

    :cond_0
    return-object p0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgtz;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgua;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzgup;
    .locals 9

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgup;->zzn(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    .line 7
    array-length v3, v2

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzgup;->zzu(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :cond_0
    move-object v4, v2

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgwg;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzguo;->zze:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    array-length v0, v6

    add-int/lit8 v7, v0, -0x1

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgwg;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzgup;->zzt(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:I

    .line 8
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zzc:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzguo;->zzd:[Ljava/lang/Object;

    return-object v3

    .line 1
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgtz;->zza:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwq;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgwq;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwg;->zza:Lcom/google/android/gms/internal/ads/zzgwg;

    return-object v0
.end method
