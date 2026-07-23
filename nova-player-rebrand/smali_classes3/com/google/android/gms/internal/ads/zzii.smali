.class public abstract Lcom/google/android/gms/internal/ads/zzii;
.super Lcom/google/android/gms/internal/ads/zzbf;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzyf;


# direct methods
.method public constructor <init>(ZLcom/google/android/gms/internal/ads/zzyf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbf;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzii;->zzc:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzyf;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzb:I

    return-void
.end method

.method private final zzw(IZ)I
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzii;->zzc:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzyf;->zzb(I)I

    move-result p1

    return p1

    :cond_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzii;->zzb:I

    const/4 v0, -0x1

    add-int/2addr p2, v0

    if-lt p1, p2, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final zzx(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzii;->zzc:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzyf;->zzc(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p2, -0x1

    if-gtz p1, :cond_1

    return p2

    :cond_1
    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzq(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzu(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzt(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 5
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzv(I)Ljava/lang/Object;

    move-result-object p1

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbe;->zza:Ljava/lang/Object;

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzb:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 8
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzb:Ljava/lang/Object;

    .line 9
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 8
    :cond_0
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzb:Ljava/lang/Object;

    .line 10
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzn:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzn:I

    .line 11
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzo:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzo:I

    return-object p2
.end method

.method public final zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzp(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzu(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzt(I)I

    move-result v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v3

    sub-int/2addr p1, v2

    .line 5
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    .line 6
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzv(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    .line 9
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 7
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzr(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzp(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzt(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbf;->zzf(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzv(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(IIZ)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzq(I)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzu(I)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v2

    sub-int/2addr p1, v1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p2

    .line 4
    :goto_0
    invoke-virtual {v2, p1, v4, p3}, Lcom/google/android/gms/internal/ads/zzbf;->zzh(IIZ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    add-int/2addr v1, p1

    return v1

    .line 5
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzii;->zzw(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v2, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzii;->zzw(IZ)I

    move-result p1

    goto :goto_1

    :cond_2
    if-eq p1, v2, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzu(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbf;->zzk(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_3
    if-ne p2, v3, :cond_4

    .line 10
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbf;->zzk(Z)I

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public final zzi(IIZ)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzq(I)I

    move-result p2

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzii;->zzu(I)I

    move-result p3

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v0

    sub-int/2addr p1, p3

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzbf;->zzi(IIZ)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/2addr p3, p1

    return p3

    .line 5
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzii;->zzx(IZ)I

    move-result p1

    :goto_0
    if-eq p1, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzii;->zzx(IZ)I

    move-result p1

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzu(I)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbf;->zzj(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_2
    return v0
.end method

.method public final zzj(Z)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzb:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzc:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyf;->zzd()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzx(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    .line 4
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzu(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbf;->zzj(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final zzk(Z)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzb:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzc:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyf;->zze()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzw(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    .line 4
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzu(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbf;->zzk(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzii;->zzr(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzii;->zzu(I)I

    move-result v2

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzii;->zzs(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    .line 6
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    add-int/2addr v0, v2

    iput v0, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    .line 7
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    return-object p2
.end method

.method protected abstract zzp(I)I
.end method

.method protected abstract zzq(I)I
.end method

.method protected abstract zzr(Ljava/lang/Object;)I
.end method

.method protected abstract zzs(I)Lcom/google/android/gms/internal/ads/zzbf;
.end method

.method protected abstract zzt(I)I
.end method

.method protected abstract zzu(I)I
.end method

.method protected abstract zzv(I)Ljava/lang/Object;
.end method
