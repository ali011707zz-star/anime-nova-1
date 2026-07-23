.class final Lcom/google/android/gms/internal/ads/zzzq;
.super Lcom/google/android/gms/internal/ads/zzzs;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:Z

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:I

.field private final zzn:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbg;ILcom/google/android/gms/internal/ads/zzzl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(ILcom/google/android/gms/internal/ads/zzbg;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzmn$-CC;->zzaa(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzf:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzv;->zze:I

    iget p3, p4, Lcom/google/android/gms/internal/ads/zzbl;->zzC:I

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzg:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzh:Z

    if-eqz p7, :cond_2

    .line 3
    invoke-static {p7}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p2

    goto :goto_2

    .line 4
    :cond_2
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzbl;->zzy:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ""

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p2

    goto :goto_2

    .line 6
    :cond_3
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzbl;->zzy:Lcom/google/android/gms/internal/ads/zzguf;

    :goto_2
    move p3, p1

    .line 7
    :goto_3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge p3, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 8
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-static {v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzaaa;->zzj(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    move v1, p1

    move p3, v2

    :goto_4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzi:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzj:I

    const/16 p2, 0x440

    if-eqz p7, :cond_6

    move p3, p2

    goto :goto_5

    :cond_6
    move p3, p1

    :goto_5
    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 11
    iget p7, p7, Lcom/google/android/gms/internal/ads/zzv;->zzf:I

    invoke-static {p7, p3}, Lcom/google/android/gms/internal/ads/zzaaa;->zzm(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzk:I

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 12
    iget v3, p7, Lcom/google/android/gms/internal/ads/zzv;->zzf:I

    and-int/2addr p2, v3

    if-eqz p2, :cond_7

    move p2, v0

    goto :goto_6

    :cond_7
    move p2, p1

    :goto_6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzn:Z

    .line 13
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzbl;->zzz:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-static {p7, p2}, Lcom/google/android/gms/internal/ads/zzaaa;->zzn(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzguf;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzl:I

    .line 14
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzaaa;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    if-nez p7, :cond_8

    move p7, v0

    goto :goto_7

    :cond_8
    move p7, p1

    :goto_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzzs;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 15
    invoke-static {v3, p6, p7}, Lcom/google/android/gms/internal/ads/zzaaa;->zzj(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/String;Z)I

    move-result p6

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzm:I

    if-gtz v1, :cond_9

    .line 16
    iget-object p7, p4, Lcom/google/android/gms/internal/ads/zzbl;->zzy:Lcom/google/android/gms/internal/ads/zzguf;

    .line 17
    invoke-virtual {p7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_a

    if-gtz p3, :cond_9

    goto :goto_8

    :cond_9
    move p2, v0

    goto :goto_9

    :cond_a
    :goto_8
    iget-object p3, p4, Lcom/google/android/gms/internal/ads/zzbl;->zzy:Lcom/google/android/gms/internal/ads/zzguf;

    .line 18
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_b

    if-ne p2, v2, :cond_9

    :cond_b
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzg:Z

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzh:Z

    if-eqz p2, :cond_c

    if-gtz p6, :cond_9

    :cond_c
    move p2, p1

    .line 19
    :goto_9
    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzzl;->zzV:Z

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzmn$-CC;->zzaa(IZ)Z

    move-result p3

    if-eqz p3, :cond_d

    if-eqz p2, :cond_d

    move p1, v0

    :cond_d
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzq;->zze:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzzq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzzq;->zzb(Lcom/google/android/gms/internal/ads/zzzq;)I

    move-result p1

    return p1
.end method

.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzq;->zze:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzzq;)I
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgts;->zzg()Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzf:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzzq;->zzf:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgts;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzi:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzzq;->zzi:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvz;->zzb()Lcom/google/android/gms/internal/ads/zzgvz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgvz;->zza()Lcom/google/android/gms/internal/ads/zzgvz;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgts;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzj:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzzq;->zzj:I

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgts;->zzb(II)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzk:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzzq;->zzk:I

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgts;->zzb(II)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzl:I

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzzq;->zzl:I

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvz;->zzb()Lcom/google/android/gms/internal/ads/zzgvz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgvz;->zza()Lcom/google/android/gms/internal/ads/zzgvz;

    move-result-object v5

    .line 10
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgts;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzg:Z

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzzq;->zzg:Z

    .line 11
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzgts;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzh:Z

    .line 12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzzq;->zzh:Z

    .line 13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvz;->zzb()Lcom/google/android/gms/internal/ads/zzgvz;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvz;->zzb()Lcom/google/android/gms/internal/ads/zzgvz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgvz;->zza()Lcom/google/android/gms/internal/ads/zzgvz;

    move-result-object v1

    .line 14
    :goto_0
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzgts;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzm:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzzq;->zzm:I

    .line 15
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzgts;->zzb(II)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    if-nez v2, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzq;->zzn:Z

    .line 16
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzzq;->zzn:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgts;->zzc(ZZ)Lcom/google/android/gms/internal/ads/zzgts;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgts;->zze()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzzs;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzzq;

    const/4 p1, 0x0

    return p1
.end method
