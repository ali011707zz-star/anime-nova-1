.class final Lcom/google/android/gms/internal/ads/zzxh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabb;
.implements Lcom/google/android/gms/internal/ads/zzvz;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzxq;

.field private final zzb:J

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzxd;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaex;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdq;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzafv;

.field private volatile zzi:Z

.field private zzj:Z

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzhf;

.field private zzm:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzxq;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzhb;Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzdq;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzc:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhy;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhy;-><init>(Lcom/google/android/gms/internal/ads/zzhb;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzhy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxh;->zze:Lcom/google/android/gms/internal/ads/zzxd;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzg:Lcom/google/android/gms/internal/ads/zzdq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzj:Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwb;->zza()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    const-wide/16 p1, 0x0

    const/4 p3, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxh;->zzi(JLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzl:Lcom/google/android/gms/internal/ads/zzhf;

    return-void
.end method

.method private final zzi(JLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzhf;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxq;->zzJ()Ljava/util/Map;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "W/"

    .line 2
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzguh;

    .line 3
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzguh;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzguh;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzguh;

    const-string v0, "If-Range"

    .line 5
    invoke-virtual {v1, v0, p3}, Lcom/google/android/gms/internal/ads/zzguh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguh;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzguh;->zzd()Lcom/google/android/gms/internal/ads/zzgui;

    move-result-object v0

    :cond_0
    new-instance p3, Lcom/google/android/gms/internal/ads/zzhe;

    .line 7
    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzhe;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzc:Landroid/net/Uri;

    .line 8
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzhe;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzhe;

    .line 9
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzhe;->zzc(J)Lcom/google/android/gms/internal/ads/zzhe;

    const/4 p1, 0x6

    .line 10
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzhe;->zzd(I)Lcom/google/android/gms/internal/ads/zzhe;

    .line 11
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzb(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzhe;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhe;->zze()Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzer;)V
    .locals 11

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzk:J

    :goto_0
    move-wide v5, v2

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzxq;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxq;->zzI(Z)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzk:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 2
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzm:Lcom/google/android/gms/internal/ads/zzagh;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {v4, p1, v8}, Lcom/google/android/gms/internal/ads/zzagh;->zzc(Lcom/google/android/gms/internal/ads/zzer;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 5
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzagh;->zze(JIIILcom/google/android/gms/internal/ads/zzagg;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzn:Z

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzi:Z

    return-void
.end method

.method public final zzc()V
    .locals 26

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v3, v2

    const/4 v4, 0x0

    :goto_0
    if-nez v3, :cond_16

    .line 1
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzi:Z

    if-nez v3, :cond_16

    const-wide/16 v5, -0x1

    :try_start_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    invoke-direct {v1, v12, v13, v4}, Lcom/google/android/gms/internal/ads/zzxh;->zzi(JLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzl:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzhy;

    .line 2
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzhy;->zzb(Lcom/google/android/gms/internal/ads/zzhf;)J

    move-result-wide v8

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxh;->zze:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxd;->zzd()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxd;->zzd()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzhy;

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhd;->zza(Lcom/google/android/gms/internal/ads/zzhb;)V

    return-void

    .line 3
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzhy;->zzj()Ljava/util/Map;

    move-result-object v4

    const-string v10, "ETag"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    move v3, v2

    move-wide/from16 v17, v5

    goto/16 :goto_e

    :cond_2
    const/4 v4, 0x0

    :goto_1
    cmp-long v10, v8, v5

    if-eqz v10, :cond_3

    add-long/2addr v8, v12

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzxq;

    .line 5
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzxq;->zzH()V

    :cond_3
    move-wide v14, v8

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzxq;

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzhy;->zzj()Ljava/util/Map;

    move-result-object v7

    const-string v9, "icy-br"

    const-string v10, "Invalid bitrate header: "

    const-string v11, "Invalid metadata interval: "

    const-string v0, "Invalid bitrate: "

    .line 7
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v17, v5

    const-string v5, "IcyHeaders"

    if-eqz v9, :cond_5

    .line 8
    :try_start_2
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    mul-int/lit16 v3, v3, 0x3e8

    if-lez v3, :cond_4

    move/from16 v20, v3

    const/4 v0, 0x1

    goto :goto_2

    .line 10
    :cond_4
    :try_start_4
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v6, v16, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    const/4 v0, 0x0

    const/16 v20, -0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_e

    :catch_0
    const/4 v3, -0x1

    .line 11
    :catch_1
    :try_start_5
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v20, v3

    const/4 v0, 0x0

    .line 9
    :goto_2
    const-string v2, "icy-genre"

    .line 12
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    .line 13
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/16 v21, 0x0

    :goto_3
    const-string v2, "icy-name"

    .line 14
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_7

    const/4 v3, 0x0

    .line 15
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/16 v22, 0x0

    :goto_4
    const-string v2, "icy-url"

    .line 16
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    .line 17
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/16 v23, 0x0

    :goto_5
    const-string v2, "icy-pub"

    .line 18
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    const/4 v3, 0x0

    .line 19
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v24, v0

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/16 v24, 0x0

    :goto_6
    const-string v2, "icy-metaint"

    .line 20
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_b

    const/4 v3, 0x0

    .line 21
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 22
    :try_start_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-lez v3, :cond_a

    move/from16 v25, v3

    const/4 v0, 0x1

    goto :goto_7

    .line 23
    :cond_a
    :try_start_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_b
    const/16 v25, -0x1

    goto :goto_7

    :catch_2
    const/4 v3, -0x1

    .line 24
    :catch_3
    :try_start_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v25, v3

    :goto_7
    if-eqz v0, :cond_c

    .line 22
    new-instance v19, Lcom/google/android/gms/internal/ads/zzaic;

    .line 25
    invoke-direct/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v0, v19

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    .line 6
    :goto_8
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzxq;->zzP(Lcom/google/android/gms/internal/ads/zzaic;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzO()Lcom/google/android/gms/internal/ads/zzaic;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzO()Lcom/google/android/gms/internal/ads/zzaic;

    move-result-object v3

    .line 26
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaic;->zzf:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_d

    new-instance v3, Lcom/google/android/gms/internal/ads/zzwa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzO()Lcom/google/android/gms/internal/ads/zzaic;

    move-result-object v5

    .line 27
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzaic;->zzf:I

    invoke-direct {v3, v0, v5, v1}, Lcom/google/android/gms/internal/ads/zzwa;-><init>(Lcom/google/android/gms/internal/ads/zzhb;ILcom/google/android/gms/internal/ads/zzvz;)V

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzx()Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzm:Lcom/google/android/gms/internal/ads/zzagh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxq;->zzK()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v6

    .line 29
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzagh;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    move-object v9, v3

    goto :goto_9

    :cond_d
    move-object v9, v0

    :goto_9
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzxh;->zze:Lcom/google/android/gms/internal/ads/zzxd;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzc:Landroid/net/Uri;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhy;->zzj()Ljava/util/Map;

    move-result-object v11

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzf:Lcom/google/android/gms/internal/ads/zzaex;

    move-object/from16 v16, v3

    .line 31
    invoke-interface/range {v8 .. v16}, Lcom/google/android/gms/internal/ads/zzxd;->zza(Lcom/google/android/gms/internal/ads/zzj;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzaex;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzO()Lcom/google/android/gms/internal/ads/zzaic;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 32
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzxd;->zzc()V

    :cond_e
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzj:Z

    if-eqz v3, :cond_f

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzk:J

    .line 33
    invoke-interface {v8, v12, v13, v5, v6}, Lcom/google/android/gms/internal/ads/zzxd;->zze(JJ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v3, 0x0

    :try_start_9
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzj:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_a
    move v5, v3

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_e

    :cond_f
    const/4 v3, 0x0

    goto :goto_a

    :cond_10
    :goto_b
    if-nez v5, :cond_12

    :try_start_a
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzi:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-nez v6, :cond_11

    :try_start_b
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzg:Lcom/google/android/gms/internal/ads/zzdq;

    .line 34
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdq;->zzc()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    .line 35
    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/ads/zzxd;->zzf(Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v5

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzxd;->zzd()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzL()J

    move-result-wide v14

    add-long/2addr v14, v12

    cmp-long v7, v9, v14

    if-lez v7, :cond_10

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdq;->zzb()Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzN()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzM()Ljava/lang/Runnable;

    move-result-object v7

    .line 37
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v12, v9

    goto :goto_b

    :catchall_3
    move-exception v0

    move v2, v5

    :goto_c
    const/4 v3, 0x1

    goto :goto_f

    .line 39
    :catch_4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_11
    move v5, v3

    :cond_12
    const/4 v2, 0x1

    if-ne v5, v2, :cond_13

    move v5, v3

    goto :goto_d

    .line 38
    :cond_13
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzxd;->zzd()J

    move-result-wide v6

    cmp-long v2, v6, v17

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzxd;->zzd()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    :cond_14
    :goto_d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhd;->zza(Lcom/google/android/gms/internal/ads/zzhb;)V

    move v2, v3

    move v3, v5

    goto/16 :goto_0

    :goto_e
    move v2, v3

    goto :goto_c

    :goto_f
    if-eq v2, v3, :cond_15

    .line 39
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzxh;->zze:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxd;->zzd()J

    move-result-wide v3

    cmp-long v3, v3, v17

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxd;->zzd()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    .line 10
    :cond_15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzhy;

    .line 38
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhd;->zza(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 40
    throw v0

    :cond_16
    return-void
.end method

.method final synthetic zzd(JJ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzh:Lcom/google/android/gms/internal/ads/zzafv;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzafv;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzk:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzj:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzn:Z

    return-void
.end method

.method final synthetic zze()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    return-wide v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzhy;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzd:Lcom/google/android/gms/internal/ads/zzhy;

    return-object v0
.end method

.method final synthetic zzg()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzk:J

    return-wide v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzhf;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzl:Lcom/google/android/gms/internal/ads/zzhf;

    return-object v0
.end method
