.class final Lcom/google/android/gms/internal/ads/zzlo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzwk;

.field public final zzb:J

.field public final zzc:J

.field public final zzd:J

.field public final zze:J

.field public final zzf:Z

.field public final zzg:Z

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzwk;JJJJZZZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p10, 0x0

    const/4 p11, 0x1

    if-eqz p14, :cond_0

    if-eqz p12, :cond_1

    :cond_0
    move v0, p11

    goto :goto_0

    :cond_1
    move v0, p10

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    if-eqz p13, :cond_3

    if-eqz p12, :cond_2

    goto :goto_1

    :cond_2
    move p11, p10

    .line 2
    :cond_3
    :goto_1
    invoke-static {p11}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzd:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzf:Z

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzg:Z

    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzh:Z

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzi:Z

    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzj:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzlo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzlo;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzd:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzd:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzh:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzh:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzi:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzi:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzj:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzj:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    .line 2
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwk;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzd:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v7, v7

    add-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v5, v5

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x745f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzh:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzi:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzlo;->zzj:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/ads/zzlo;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzd:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzh:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzi:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzj:Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzlo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v4, p1

    move/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/zzlo;-><init>(Lcom/google/android/gms/internal/ads/zzwk;JJJJZZZZZ)V

    return-object v2
.end method

.method public final zzb(J)Lcom/google/android/gms/internal/ads/zzlo;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzd:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzh:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzi:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzlo;->zzj:Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzlo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v6, p1

    move/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/zzlo;-><init>(Lcom/google/android/gms/internal/ads/zzwk;JJJJZZZZZ)V

    return-object v2
.end method
