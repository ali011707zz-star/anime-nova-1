.class public final Lcom/google/android/gms/internal/ads/zzacs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzacr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzacz;

.field private zzc:Z

.field private zzd:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:Z

.field private zzj:F

.field private zzk:Lcom/google/android/gms/internal/ads/zzdn;

.field private zzl:Z

.field private zzm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzacr;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacs;->zza:Lcom/google/android/gms/internal/ads/zzacr;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzacz;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzacz;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzg:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzh:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzj:F

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdn;->zza:Lcom/google/android/gms/internal/ads/zzdn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzk:Lcom/google/android/gms/internal/ads/zzdn;

    return-void
.end method

.method private final zzo(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzo(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    .line 1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzacz;->zzd()V

    return-void
.end method

.method public final zzb()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzk:Lcom/google/android/gms/internal/ads/zzdn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzf:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacz;->zzb()V

    return-void
.end method

.method public final zzc()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzc:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzh:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacz;->zzh()V

    return-void
.end method

.method public final zzd(Landroid/view/Surface;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacz;->zzc(Landroid/view/Surface;)V

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzo(I)V

    return-void
.end method

.method public final zze(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacz;->zzf(F)V

    return-void
.end method

.method public final zzf()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzk:Lcom/google/android/gms/internal/ads/zzdn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzf:J

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzdn;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzk:Lcom/google/android/gms/internal/ads/zzdn;

    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    :cond_0
    return-void
.end method

.method public final zzi(Z)Z
    .locals 8

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzl:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzm:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzh:J

    return v0

    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzh:J

    cmp-long p1, v3, v1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzk:Lcom/google/android/gms/internal/ads/zzdn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzh:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_3

    return v0

    :cond_3
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzh:J

    return v3
.end method

.method public final zzj(Z)V
    .locals 2

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzi:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzh:J

    return-void
.end method

.method public final zzk(JJJJZZLcom/google/android/gms/internal/ads/zzacq;)I
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v4, p3

    move-object/from16 v10, p11

    .line 1
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzacq;->zzc()V

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzc:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_0

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzacs;->zze:J

    cmp-long v3, v8, v6

    if-nez v3, :cond_0

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzacs;->zze:J

    :cond_0
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzg:J

    cmp-long v3, v8, v1

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    .line 2
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzacz;->zzg(J)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzg:J

    :cond_1
    sub-long v8, v1, v4

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzj:F

    float-to-double v11, v3

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzc:Z

    long-to-double v8, v8

    div-double/2addr v8, v11

    double-to-long v8, v8

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzk:Lcom/google/android/gms/internal/ads/zzdn;

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v11

    sub-long v11, v11, p5

    sub-long/2addr v8, v11

    .line 4
    :cond_2
    invoke-virtual {v10, v8, v9}, Lcom/google/android/gms/internal/ads/zzacq;->zze(J)V

    const/4 v11, 0x3

    if-eqz p9, :cond_4

    if-eqz p10, :cond_3

    goto :goto_0

    :cond_3
    return v11

    :cond_4
    :goto_0
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzl:Z

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x1

    if-nez v3, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzacs;->zza:Lcom/google/android/gms/internal/ads/zzacr;

    .line 5
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzacq;->zzd()J

    move-result-wide v2

    const/4 v9, 0x1

    move-wide/from16 v6, p5

    move/from16 v8, p10

    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzacr;->zzao(JJJZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    return v12

    :cond_5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzc:Z

    if-eqz v1, :cond_6

    .line 6
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzacq;->zzd()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-gez v1, :cond_6

    return v11

    :cond_6
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzm:Z

    return v13

    .line 7
    :cond_7
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzacq;->zzd()J

    move-result-wide v3

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzh:J

    cmp-long v5, v8, v6

    const-wide/16 v15, -0x7530

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v5, :cond_8

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzi:Z

    if-nez v5, :cond_8

    move-wide/from16 v19, v6

    goto :goto_2

    .line 16
    :cond_8
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzd:I

    if-eqz v5, :cond_b

    if-eq v5, v14, :cond_c

    if-eq v5, v8, :cond_a

    if-ne v5, v11, :cond_9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzk:Lcom/google/android/gms/internal/ads/zzdn;

    .line 8
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v17

    move-wide/from16 v19, v6

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzf:J

    sub-long v17, v17, v6

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzc:Z

    if-eqz v5, :cond_d

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzacs;->zze:J

    cmp-long v7, v5, v19

    if-eqz v7, :cond_d

    cmp-long v5, v5, p3

    if-eqz v5, :cond_d

    cmp-long v3, v3, v15

    if-gez v3, :cond_d

    const-wide/32 v3, 0x186a0

    cmp-long v3, v17, v3

    if-lez v3, :cond_d

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a
    move-wide/from16 v19, v6

    cmp-long v3, p3, p7

    if-ltz v3, :cond_d

    goto :goto_1

    :cond_b
    move-wide/from16 v19, v6

    .line 8
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzc:Z

    if-eqz v3, :cond_d

    :cond_c
    :goto_1
    return v9

    .line 7
    :cond_d
    :goto_2
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzc:Z

    if-eqz v3, :cond_14

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzacs;->zze:J

    cmp-long v3, p3, v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_e
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzk:Lcom/google/android/gms/internal/ads/zzdn;

    .line 10
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdn;->zzc()J

    move-result-wide v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    .line 11
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzacq;->zzd()J

    move-result-wide v6

    const-wide/16 v17, 0x3e8

    mul-long v6, v6, v17

    add-long/2addr v6, v3

    .line 12
    invoke-virtual {v5, v6, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzacz;->zzi(JJ)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lcom/google/android/gms/internal/ads/zzacq;->zzg(J)V

    .line 13
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzacq;->zzf()J

    move-result-wide v1

    sub-long/2addr v1, v3

    div-long v1, v1, v17

    invoke-virtual {v10, v1, v2}, Lcom/google/android/gms/internal/ads/zzacq;->zze(J)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzh:J

    cmp-long v1, v1, v19

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzacs;->zzi:Z

    if-nez v1, :cond_f

    move v9, v14

    :cond_f
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzacs;->zza:Lcom/google/android/gms/internal/ads/zzacr;

    .line 14
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzacq;->zzd()J

    move-result-wide v2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v17, v8

    move/from16 v8, p10

    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzacr;->zzao(JJJZZ)Z

    move-result v1

    if-eqz v1, :cond_10

    return v12

    .line 15
    :cond_10
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzacq;->zzd()J

    move-result-wide v1

    cmp-long v1, v1, v15

    if-gez v1, :cond_12

    if-nez p10, :cond_12

    if-eqz v9, :cond_11

    return v11

    :cond_11
    return v17

    .line 16
    :cond_12
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzacq;->zzd()J

    move-result-wide v1

    const-wide/32 v3, 0xc350

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    return v13

    :cond_13
    return v14

    :cond_14
    :goto_3
    return v13
.end method

.method public final zzl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacz;->zzd()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zze:J

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzo(I)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzh:J

    return-void
.end method

.method public final zzm(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacz;->zza(I)V

    return-void
.end method

.method public final zzn(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzj:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzj:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacs;->zzb:Lcom/google/android/gms/internal/ads/zzacz;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacz;->zze(F)V

    return-void
.end method
