.class abstract Lcom/google/android/gms/internal/ads/zzalt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaln;

.field private zzb:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzc:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzd:Lcom/google/android/gms/internal/ads/zzalp;

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:I

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzalr;

.field private zzk:J

.field private zzl:Z

.field private zzm:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaln;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalt;->zza:Lcom/google/android/gms/internal/ads/zzaln;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzj:Lcom/google/android/gms/internal/ads/zzalr;

    return-void
.end method


# virtual methods
.method protected zza(Z)V
    .locals 4

    .line 0
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzalr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzj:Lcom/google/android/gms/internal/ads/zzalr;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzf:J

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzh:I

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzalt;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzg:J

    return-void
.end method

.method protected abstract zzb(Lcom/google/android/gms/internal/ads/zzer;)J
.end method

.method protected abstract zzc(Lcom/google/android/gms/internal/ads/zzer;JLcom/google/android/gms/internal/ads/zzalr;)Z
.end method

.method final zze(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzagh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzc:Lcom/google/android/gms/internal/ads/zzaex;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzalt;->zza(Z)V

    return-void
.end method

.method final zzf(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalt;->zza:Lcom/google/android/gms/internal/ads/zzaln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaln;->zza()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzl:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzalt;->zza(Z)V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzh:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzalt;->zzi(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzalt;->zze:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    .line 3
    sget-object p4, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzalp;->zzb(J)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzh:I

    :cond_1
    return-void
.end method

.method final zzg(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzh:I

    const/4 v3, 0x3

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_8

    if-eq v2, v7, :cond_7

    if-eq v2, v11, :cond_0

    return v6

    .line 7
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    .line 9
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzalp;->zza(Lcom/google/android/gms/internal/ads/zzaev;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-ltz v2, :cond_1

    move-object/from16 v2, p2

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    return v7

    :cond_1
    cmp-long v2, v8, v4

    if-gez v2, :cond_2

    const-wide/16 v13, 0x2

    add-long/2addr v8, v13

    neg-long v8, v8

    .line 10
    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzalt;->zzj(J)V

    :cond_2
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzl:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    .line 11
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzalp;->zzc()Lcom/google/android/gms/internal/ads/zzafy;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzc:Lcom/google/android/gms/internal/ads/zzaex;

    .line 12
    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    .line 13
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzafy;->zza()J

    move-result-wide v13

    invoke-interface {v8, v13, v14}, Lcom/google/android/gms/internal/ads/zzagh;->zzN(J)V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzl:Z

    :cond_3
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzk:J

    cmp-long v2, v7, v10

    if-gtz v2, :cond_5

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzalt;->zza:Lcom/google/android/gms/internal/ads/zzaln;

    .line 14
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzh:I

    return v6

    .line 14
    :cond_5
    :goto_0
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzk:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzalt;->zza:Lcom/google/android/gms/internal/ads/zzaln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaln;->zzd()Lcom/google/android/gms/internal/ads/zzer;

    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzalt;->zzb(Lcom/google/android/gms/internal/ads/zzer;)J

    move-result-wide v2

    cmp-long v6, v2, v10

    if-ltz v6, :cond_6

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzg:J

    add-long v8, v6, v2

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzalt;->zze:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    .line 16
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzalt;->zzh(J)J

    move-result-wide v14

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v7

    .line 17
    invoke-interface {v6, v0, v7}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x1

    .line 18
    invoke-interface/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzalt;->zze:J

    :cond_6
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzg:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzg:J

    return v12

    .line 21
    :cond_7
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzf:J

    long-to-int v2, v2

    .line 20
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzh:I

    return v12

    .line 1
    :cond_8
    :goto_1
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzalt;->zza:Lcom/google/android/gms/internal/ads/zzaln;

    .line 2
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result v2

    if-nez v2, :cond_9

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzh:I

    return v6

    :cond_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v8

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzf:J

    sub-long/2addr v8, v14

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzk:J

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaln;->zzd()Lcom/google/android/gms/internal/ads/zzer;

    move-result-object v2

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzj:Lcom/google/android/gms/internal/ads/zzalr;

    .line 3
    invoke-virtual {v1, v2, v14, v15, v8}, Lcom/google/android/gms/internal/ads/zzalt;->zzc(Lcom/google/android/gms/internal/ads/zzer;JLcom/google/android/gms/internal/ads/zzalr;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzf:J

    goto :goto_1

    :cond_a
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzj:Lcom/google/android/gms/internal/ads/zzalr;

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzalr;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzi:I

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzm:Z

    if-nez v3, :cond_b

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    .line 5
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzm:Z

    :cond_b
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzj:Lcom/google/android/gms/internal/ads/zzalr;

    .line 6
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzalr;->zzb:Lcom/google/android/gms/internal/ads/zzalp;

    if-eqz v2, :cond_c

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    goto :goto_3

    .line 8
    :cond_c
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzals;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzals;-><init>([B)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    goto :goto_3

    :cond_d
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaln;->zzc()Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzalo;->zza:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_e

    move v10, v7

    goto :goto_2

    :cond_e
    move v10, v12

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzali;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzf:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v5

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzd:I

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzalo;->zze:I

    add-int/2addr v7, v8

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzb:J

    int-to-long v14, v7

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v14

    .line 7
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzali;-><init>(Lcom/google/android/gms/internal/ads/zzalt;JJJJZ)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzd:Lcom/google/android/gms/internal/ads/zzalp;

    .line 6
    :goto_3
    iput v11, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzh:I

    .line 8
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaln;->zze()V

    return v12
.end method

.method protected final zzh(J)J
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzi:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected final zzi(J)J
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzi:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected zzj(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzg:J

    return-void
.end method
