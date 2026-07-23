.class final Lcom/google/android/gms/internal/ads/zzpe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzpf;

.field private final zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/ads/zzwk;

.field private zzf:Z

.field private zzg:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzpf;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzwk;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zza:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:I

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    iget-wide p1, p4, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzd:J

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzpe;->zze:Lcom/google/android/gms/internal/ads/zzwk;

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzbf;)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbf;->zza()I

    move-result p1

    if-ge v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zza:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpf;->zzj()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 3
    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpf;->zzj()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbe;->zzn:I

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpf;->zzj()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbe;->zzo:I

    if-gt v0, v4, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzf(I)Ljava/lang/Object;

    move-result-object v4

    .line 5
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpf;->zzk()Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object p1

    .line 6
    invoke-virtual {p2, v4, p1, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object p1

    .line 7
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:I

    if-ne v0, v3, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zze:Lcom/google/android/gms/internal/ads/zzwk;

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v3, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzwk;)Z
    .locals 6

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zze:Lcom/google/android/gms/internal/ads/zzwk;

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result p1

    if-nez p1, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzd:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    if-ne v2, v3, :cond_3

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzwk;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzwk;->zzc:I

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:I

    if-ne p1, p2, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final zzc(ILcom/google/android/gms/internal/ads/zzwk;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzd:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zza:Lcom/google/android/gms/internal/ads/zzpf;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzi()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzd:J

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzmy;)Z
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzc:I

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzd:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpe;->zze:Lcom/google/android/gms/internal/ads/zzwk;

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmy;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpe;->zze:Lcom/google/android/gms/internal/ads/zzwk;

    .line 2
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpe;->zze:Lcom/google/android/gms/internal/ads/zzwk;

    .line 3
    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_c

    if-ge v3, p1, :cond_5

    goto :goto_1

    :cond_5
    if-le v3, p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzc:I

    .line 4
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    if-gt p1, v3, :cond_8

    if-ne p1, v3, :cond_7

    iget p1, v4, Lcom/google/android/gms/internal/ads/zzwk;->zzc:I

    if-le v0, p1, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    return v1

    :cond_9
    iget p1, v0, Lcom/google/android/gms/internal/ads/zzwk;->zze:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    .line 5
    iget v0, v4, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    if-le p1, v0, :cond_a

    goto :goto_0

    :cond_a
    return v2

    :cond_b
    :goto_0
    return v1

    :cond_c
    :goto_1
    return v2
.end method

.method final synthetic zze()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zzf()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:I

    return v0
.end method

.method final synthetic zzg()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzd:J

    return-wide v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zze:Lcom/google/android/gms/internal/ads/zzwk;

    return-object v0
.end method

.method final synthetic zzi()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzf:Z

    return v0
.end method

.method final synthetic zzj(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzf:Z

    return-void
.end method

.method final synthetic zzk()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzg:Z

    return v0
.end method

.method final synthetic zzl(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzg:Z

    return-void
.end method
