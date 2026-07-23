.class public final Lcom/google/android/gms/internal/ads/zzxu;
.super Lcom/google/android/gms/internal/ads/zzvj;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzxc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzto;

.field private final zzd:I

.field private zze:Z

.field private zzf:J

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzhz;

.field private zzj:Lcom/google/android/gms/internal/ads/zzak;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzaaw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzak;Lcom/google/android/gms/internal/ads/zzha;Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zzaaw;IZILcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzgru;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzj:Lcom/google/android/gms/internal/ads/zzak;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxu;->zza:Lcom/google/android/gms/internal/ads/zzha;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzb:Lcom/google/android/gms/internal/ads/zzxc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzc:Lcom/google/android/gms/internal/ads/zzto;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzk:Lcom/google/android/gms/internal/ads/zzaaw;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxu;->zze:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzf:J

    return-void
.end method

.method private final zzu()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzyg;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzxu;->zzf:J

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzxu;->zzg:Z

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzxu;->zzh:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxu;->zzJ()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v4

    if-eqz v3, :cond_0

    .line 2
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzak;->zzc:Lcom/google/android/gms/internal/ads/zzaf;

    :goto_0
    move-object/from16 v21, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v20, v4

    move-wide v4, v2

    move-wide v6, v2

    move-wide v10, v8

    .line 3
    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzyg;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzak;Lcom/google/android/gms/internal/ads/zzaf;)V

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzxu;->zze:Z

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzxr;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzxr;-><init>(Lcom/google/android/gms/internal/ads/zzxu;Lcom/google/android/gms/internal/ads/zzbf;)V

    move-object v1, v2

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzvj;->zze(Lcom/google/android/gms/internal/ads/zzbf;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzA(Lcom/google/android/gms/internal/ads/zzak;)V
    .locals 0

    .line 0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzj:Lcom/google/android/gms/internal/ads/zzak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzD(Lcom/google/android/gms/internal/ads/zzwi;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzxq;->zza()V

    return-void
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaan;J)Lcom/google/android/gms/internal/ads/zzwi;
    .locals 18

    move-object/from16 v8, p0

    .line 1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzxu;->zza:Lcom/google/android/gms/internal/ads/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzha;->zza()Lcom/google/android/gms/internal/ads/zzhb;

    move-result-object v2

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzxu;->zzi:Lcom/google/android/gms/internal/ads/zzhz;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzhb;->zze(Lcom/google/android/gms/internal/ads/zzhz;)V

    :cond_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzxu;->zzJ()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzag;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzag;->zza:Landroid/net/Uri;

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzxu;->zzb:Lcom/google/android/gms/internal/ads/zzxc;

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzxq;

    .line 5
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzvj;->zzk()Lcom/google/android/gms/internal/ads/zzpq;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzxc;->zza(Lcom/google/android/gms/internal/ads/zzpq;)Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v0

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzxu;->zzc:Lcom/google/android/gms/internal/ads/zzto;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzvj;->zzh(Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zztj;

    move-result-object v5

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzxu;->zzk:Lcom/google/android/gms/internal/ads/zzaaw;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzvj;->zzf(Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwu;

    move-result-object v7

    iget v11, v8, Lcom/google/android/gms/internal/ads/zzxu;->zzd:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v15

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    move-object/from16 v9, p2

    .line 7
    invoke-direct/range {v0 .. v17}, Lcom/google/android/gms/internal/ads/zzxq;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzhb;Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzto;Lcom/google/android/gms/internal/ads/zztj;Lcom/google/android/gms/internal/ads/zzaaw;Lcom/google/android/gms/internal/ads/zzwu;Lcom/google/android/gms/internal/ads/zzxi;Lcom/google/android/gms/internal/ads/zzaan;Ljava/lang/String;IZILcom/google/android/gms/internal/ads/zzv;JLcom/google/android/gms/internal/ads/zzabl;)V

    return-object v0
.end method

.method public final declared-synchronized zzJ()Lcom/google/android/gms/internal/ads/zzak;
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzj:Lcom/google/android/gms/internal/ads/zzak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzi:Lcom/google/android/gms/internal/ads/zzhz;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvj;->zzk()Lcom/google/android/gms/internal/ads/zzpq;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxu;->zzu()V

    return-void
.end method

.method public final zzb(JLcom/google/android/gms/internal/ads/zzafy;Z)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzf:J

    :cond_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzafy;->zzb()Z

    move-result p3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxu;->zze:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzf:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzg:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzh:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzf:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzg:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzxu;->zzh:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxu;->zze:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxu;->zzu()V

    return-void
.end method

.method protected final zzd()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzt()V
    .locals 0

    .line 0
    return-void
.end method
