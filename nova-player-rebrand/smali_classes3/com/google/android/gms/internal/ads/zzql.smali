.class public final Lcom/google/android/gms/internal/ads/zzql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:I

.field public final zzd:Z

.field public final zze:I

.field public final zzf:Lcom/google/android/gms/internal/ads/zzd;

.field public final zzg:I

.field public final zzh:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqk;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzi()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzj()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzk()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzd:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzl()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzm()Lcom/google/android/gms/internal/ads/zzd;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzf:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzn()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzo()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzh:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzql;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzql;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzh:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzql;->zzh:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzf:Lcom/google/android/gms/internal/ads/zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzql;->zzf:Lcom/google/android/gms/internal/ads/zzd;

    .line 2
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzd;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzql;->zzf:Lcom/google/android/gms/internal/ads/zzd;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzql;->zzh:I

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x3

    aput-object v0, v7, v1

    const/4 v1, 0x4

    aput-object v0, v7, v1

    const/4 v1, 0x5

    aput-object v3, v7, v1

    const/4 v1, 0x6

    aput-object v4, v7, v1

    const/4 v1, 0x7

    aput-object v5, v7, v1

    const/16 v1, 0x8

    aput-object v6, v7, v1

    const/16 v1, 0x9

    aput-object v0, v7, v1

    const/16 v1, 0xa

    aput-object v0, v7, v1

    .line 9
    invoke-static {v7}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
