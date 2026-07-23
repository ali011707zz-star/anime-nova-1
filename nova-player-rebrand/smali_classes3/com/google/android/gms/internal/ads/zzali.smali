.class final Lcom/google/android/gms/internal/ads/zzali;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzalo;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:Lcom/google/android/gms/internal/ads/zzalt;

.field private zze:I

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J

.field private zzl:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalt;JJJJZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzd:Lcom/google/android/gms/internal/ads/zzalt;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzb:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzali;->zzc:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzali;->zze:I

    goto :goto_2

    .line 1
    :cond_2
    :goto_1
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzali;->zzf:J

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zze:I

    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzalo;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)J
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 8
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzali;->zze:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_b

    if-eq v2, v4, :cond_c

    const/4 v4, 0x2

    const/4 v10, 0x3

    if-eq v2, v4, :cond_1

    if-eq v2, v10, :cond_0

    return-wide v6

    :cond_0
    move-wide/from16 v20, v6

    const-wide/16 v15, 0x2

    goto/16 :goto_4

    .line 19
    :cond_1
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzali;->zzi:J

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzali;->zzj:J

    cmp-long v2, v11, v13

    if-nez v2, :cond_2

    move-wide v13, v6

    move-wide/from16 v20, v13

    :goto_0
    const-wide/16 v15, 0x2

    goto/16 :goto_3

    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v11

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzali;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    .line 1
    invoke-virtual {v2, v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzalo;->zzb(Lcom/google/android/gms/internal/ads/zzaev;J)Z

    move-result v4

    if-nez v4, :cond_4

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzali;->zzi:J

    cmp-long v2, v13, v11

    if-eqz v2, :cond_3

    move-wide/from16 v20, v6

    goto :goto_0

    .line 7
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    .line 2
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_4
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzalo;->zzc(Lcom/google/android/gms/internal/ads/zzaev;Z)Z

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzali;->zzh:J

    const-wide/16 v15, 0x2

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzb:J

    sub-long/2addr v13, v8

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzalo;->zze:I

    add-int/2addr v4, v2

    const-wide/16 v17, 0x0

    cmp-long v2, v13, v17

    if-ltz v2, :cond_5

    const-wide/32 v17, 0x11940

    cmp-long v17, v13, v17

    if-gez v17, :cond_5

    move-wide v13, v6

    move-wide/from16 v20, v13

    goto :goto_3

    :cond_5
    if-gez v2, :cond_6

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzali;->zzj:J

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzali;->zzl:J

    goto :goto_1

    :cond_6
    int-to-long v11, v4

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v17

    add-long v11, v17, v11

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzali;->zzi:J

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzali;->zzk:J

    .line 4
    :goto_1
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzali;->zzj:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzali;->zzi:J

    sub-long v17, v8, v11

    const-wide/32 v19, 0x186a0

    cmp-long v19, v17, v19

    if-gez v19, :cond_7

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzali;->zzj:J

    move-wide/from16 v20, v6

    move-wide v13, v11

    goto :goto_3

    :cond_7
    int-to-long v3, v4

    if-gtz v2, :cond_8

    move-wide/from16 v20, v15

    goto :goto_2

    :cond_8
    const-wide/16 v20, 0x1

    :goto_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v22

    mul-long v3, v3, v20

    sub-long v22, v22, v3

    mul-long v13, v13, v17

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzali;->zzl:J

    move-wide/from16 v20, v6

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzali;->zzk:J

    sub-long/2addr v2, v5

    .line 5
    div-long/2addr v13, v2

    add-long v2, v22, v13

    add-long v8, v8, v20

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    :goto_3
    cmp-long v2, v13, v20

    if-eqz v2, :cond_9

    return-wide v13

    .line 19
    :cond_9
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzali;->zze:I

    .line 8
    :goto_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzali;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    move-wide/from16 v3, v20

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzalo;->zzb(Lcom/google/android/gms/internal/ads/zzaev;J)Z

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzalo;->zzc(Lcom/google/android/gms/internal/ads/zzaev;Z)Z

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzb:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzali;->zzh:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_a

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzali;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzali;->zzk:J

    add-long/2addr v1, v15

    neg-long v1, v1

    return-wide v1

    :cond_a
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzd:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzalo;->zze:I

    add-int/2addr v3, v4

    .line 10
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzali;->zzi:J

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzb:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzali;->zzk:J

    const-wide/16 v20, -0x1

    goto :goto_4

    .line 7
    :cond_b
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzali;->zzg:J

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzali;->zze:I

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzali;->zzc:J

    const-wide/32 v7, -0xff1b

    add-long/2addr v5, v7

    cmp-long v2, v5, v2

    if-lez v2, :cond_c

    return-wide v5

    .line 10
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzali;->zza:Lcom/google/android/gms/internal/ads/zzalo;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzalo;->zza()V

    const-wide/16 v5, -0x1

    .line 13
    invoke-virtual {v2, v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzalo;->zzb(Lcom/google/android/gms/internal/ads/zzaev;J)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzalo;->zzc(Lcom/google/android/gms/internal/ads/zzaev;Z)Z

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzd:I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzalo;->zze:I

    add-int/2addr v3, v5

    .line 16
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzb:J

    :goto_5
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzalo;->zza:I

    const/4 v7, 0x4

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_e

    const-wide/16 v7, -0x1

    .line 17
    invoke-virtual {v2, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzalo;->zzb(Lcom/google/android/gms/internal/ads/zzaev;J)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzali;->zzc:J

    cmp-long v3, v9, v11

    if-gez v3, :cond_e

    .line 18
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzalo;->zzc(Lcom/google/android/gms/internal/ads/zzaev;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzd:I

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzalo;->zze:I

    add-int/2addr v3, v9

    .line 19
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzaey;->zzd(Lcom/google/android/gms/internal/ads/zzaev;I)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzb:J

    goto :goto_5

    :cond_e
    :goto_6
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzali;->zzf:J

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzali;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzali;->zzg:J

    return-wide v1

    .line 14
    :cond_f
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final zzb(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzf:J

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 2
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzh:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zze:I

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzb:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzi:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzk:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzl:J

    return-void
.end method

.method public final bridge synthetic zzc()Lcom/google/android/gms/internal/ads/zzafy;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzf:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalh;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzalh;-><init>(Lcom/google/android/gms/internal/ads/zzali;[B)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method final synthetic zzd()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzb:J

    return-wide v0
.end method

.method final synthetic zze()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzc:J

    return-wide v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzalt;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzd:Lcom/google/android/gms/internal/ads/zzalt;

    return-object v0
.end method

.method final synthetic zzg()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzf:J

    return-wide v0
.end method
