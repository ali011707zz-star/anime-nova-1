.class public final Lcom/google/ads/interactivemedia/v3/internal/zzhg;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzhj;


# static fields
.field private static zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhg;


# instance fields
.field volatile zza:J

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzof;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzom;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzoo;

.field private final zzg:Lcom/google/ads/interactivemedia/v3/internal/zzip;

.field private final zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

.field private final zzi:Ljava/util/concurrent/Executor;

.field private final zzj:Lcom/google/ads/interactivemedia/v3/internal/zzol;

.field private final zzk:Ljava/util/concurrent/CountDownLatch;

.field private final zzl:Lcom/google/ads/interactivemedia/v3/internal/zzje;

.field private final zzm:Lcom/google/ads/interactivemedia/v3/internal/zziw;

.field private final zzn:Ljava/lang/Object;

.field private volatile zzo:Z

.field private volatile zzp:Z

.field private final zzq:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zznf;Lcom/google/ads/interactivemedia/v3/internal/zzof;Lcom/google/ads/interactivemedia/v3/internal/zzom;Lcom/google/ads/interactivemedia/v3/internal/zzoo;Lcom/google/ads/interactivemedia/v3/internal/zzip;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzna;ILcom/google/ads/interactivemedia/v3/internal/zzje;Lcom/google/ads/interactivemedia/v3/internal/zziw;Lcom/google/ads/interactivemedia/v3/internal/zzin;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zza:J

    new-instance p12, Ljava/lang/Object;

    invoke-direct {p12}, Ljava/lang/Object;-><init>()V

    iput-object p12, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzn:Ljava/lang/Object;

    const/4 p12, 0x0

    iput-boolean p12, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzp:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzof;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzom;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzoo;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzip;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzi:Ljava/util/concurrent/Executor;

    iput p9, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzq:I

    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzje;

    iput-object p11, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zziw;

    iput-boolean p12, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzp:Z

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzk:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzhe;

    .line 2
    invoke-direct {p1, p0, p8}, Lcom/google/ads/interactivemedia/v3/internal/zzhe;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzhg;Lcom/google/ads/interactivemedia/v3/internal/zzna;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzj:Lcom/google/ads/interactivemedia/v3/internal/zzol;

    return-void
.end method

.method public static declared-synchronized zza(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/Executor;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzhg;
    .locals 2

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zznh;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzng;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzng;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzng;

    .line 3
    invoke-virtual {v1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzng;->zzb(Z)Lcom/google/ads/interactivemedia/v3/internal/zzng;

    .line 4
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzng;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zznh;

    move-result-object p0

    .line 5
    invoke-static {p1, p2, p0, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzt(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zznh;Z)Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;Landroid/content/Context;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzhg;
    .locals 2

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 2
    invoke-static {p0, p1, v1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zza(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/Executor;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized zzt(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zznh;Z)Lcom/google/ads/interactivemedia/v3/internal/zzhg;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const-class v13, Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    monitor-enter v13

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    if-nez v0, :cond_4

    move/from16 v0, p3

    invoke-static {v1, v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/ads/interactivemedia/v3/internal/zznf;

    move-result-object v2

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzz:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzhy;->zza(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/zzhy;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    move-object/from16 v19, v3

    :goto_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzA:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 5
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzje;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/ads/interactivemedia/v3/internal/zzje;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_1

    :cond_1
    move-object/from16 v20, v3

    :goto_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 8
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zziw;

    .line 10
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zziw;-><init>()V

    move-object/from16 v21, v0

    goto :goto_2

    :cond_2
    move-object/from16 v21, v3

    :goto_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzu:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 11
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzin;

    .line 13
    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzin;-><init>()V

    :cond_3
    move-object/from16 v15, p2

    move-object v12, v3

    .line 14
    invoke-static {v1, v7, v2, v15}, Lcom/google/ads/interactivemedia/v3/internal/zznt;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zznf;Lcom/google/ads/interactivemedia/v3/internal/zznh;)Lcom/google/ads/interactivemedia/v3/internal/zznt;

    move-result-object v16

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzio;

    .line 15
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzio;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzjc;

    invoke-direct {v3, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzjc;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzio;)V

    new-instance v14, Lcom/google/ads/interactivemedia/v3/internal/zzip;

    move-object/from16 v18, v0

    move-object/from16 v17, v3

    move-object/from16 v22, v12

    invoke-direct/range {v14 .. v22}, Lcom/google/ads/interactivemedia/v3/internal/zzip;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zznh;Lcom/google/ads/interactivemedia/v3/internal/zznt;Lcom/google/ads/interactivemedia/v3/internal/zzjc;Lcom/google/ads/interactivemedia/v3/internal/zzio;Lcom/google/ads/interactivemedia/v3/internal/zzhy;Lcom/google/ads/interactivemedia/v3/internal/zzje;Lcom/google/ads/interactivemedia/v3/internal/zziw;Lcom/google/ads/interactivemedia/v3/internal/zzin;)V

    move-object/from16 v12, v22

    .line 17
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zznu;->zzb(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zznf;)I

    move-result v9

    .line 18
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzna;

    invoke-direct {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzna;-><init>()V

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/zzof;

    .line 19
    invoke-direct {v8, v1, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzof;-><init>(Landroid/content/Context;I)V

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/zzom;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzhd;

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzhd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zznf;)V

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 20
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v10, v1, v9, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzom;-><init>(Landroid/content/Context;ILcom/google/ads/interactivemedia/v3/internal/zznv;Z)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;

    const/4 v5, 0x0

    move-object v3, v2

    move-object v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzoo;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzop;Lcom/google/ads/interactivemedia/v3/internal/zznf;Lcom/google/ads/interactivemedia/v3/internal/zzna;Z)V

    move-object/from16 v1, p0

    move-object v5, v0

    move-object v0, v6

    move-object/from16 v11, v21

    move-object v6, v2

    move-object v2, v3

    move-object v3, v8

    move-object v8, v4

    move-object v4, v10

    move-object/from16 v10, v20

    invoke-direct/range {v0 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zznf;Lcom/google/ads/interactivemedia/v3/internal/zzof;Lcom/google/ads/interactivemedia/v3/internal/zzom;Lcom/google/ads/interactivemedia/v3/internal/zzoo;Lcom/google/ads/interactivemedia/v3/internal/zzip;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzna;ILcom/google/ads/interactivemedia/v3/internal/zzje;Lcom/google/ads/interactivemedia/v3/internal/zziw;Lcom/google/ads/interactivemedia/v3/internal/zzin;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    .line 22
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzd()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    .line 23
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzn()V

    :cond_4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    return-object v0

    :goto_3
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzje;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzje;->zzb()V

    :cond_0
    return-void
.end method

.method private final zzv(I)Lcom/google/ads/interactivemedia/v3/internal/zzoe;
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzq:I

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zznu;->zza(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzom;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzom;->zzc(I)Lcom/google/ads/interactivemedia/v3/internal/zzoe;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzof;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzof;->zzb(I)Lcom/google/ads/interactivemedia/v3/internal/zzoe;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized zzc()Z
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final declared-synchronized zzd()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzv(I)Lcom/google/ads/interactivemedia/v3/internal/zzoe;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzoo;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzoe;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzp:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v0, 0xfad

    .line 6
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzb(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzc()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzk:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzc()Z

    move-result v0

    return v0
.end method

.method public final zzg(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzoo;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzni;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzni;->zzd(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzon; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzon;->zza()I

    move-result v1

    const-wide/16 v2, -0x1

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public final zzh(III)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzF:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzc:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    int-to-float v2, v2

    .line 4
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v2, v3

    move/from16 v4, p2

    int-to-float v4, v4

    mul-float v10, v4, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v3, v4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 5
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 6
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzg(Landroid/view/MotionEvent;)V

    .line 7
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 8
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v2, v4

    mul-float v11, v3, v4

    const/16 v18, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 9
    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 10
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzg(Landroid/view/MotionEvent;)V

    .line 11
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v4, p3

    int-to-long v6, v4

    .line 12
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v2, v1

    mul-float v10, v3, v1

    const/16 v16, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 13
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzg(Landroid/view/MotionEvent;)V

    .line 15
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzi(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzu()V

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zziw;

    .line 4
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zzc()V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzn()V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzoo;

    .line 6
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzni;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 8
    invoke-interface/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zzni;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v14

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v12, v1, v8

    const/4 v15, 0x0

    const/16 v11, 0x1388

    .line 10
    invoke-virtual/range {v10 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzd(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    return-object v14

    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method public final zzj(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzip;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzip;->zza(Landroid/view/View;)V

    return-void
.end method

.method public final zzk(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzu()V

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zziw;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zzb(Landroid/content/Context;Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzn()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzoo;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzni;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, p1, v3, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzni;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long v6, p1, v1

    const/4 v9, 0x0

    const/16 v5, 0x138a

    .line 10
    invoke-virtual/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzd(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    return-object v8

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zzl(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzu()V

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zziw;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zziw;->zza()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzn()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzoo;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzni;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzni;->zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const/4 v9, 0x0

    move-wide v6, v5

    const/16 v5, 0x1389

    .line 10
    invoke-virtual/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzd(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    return-object v8

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zzm(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p1, 0x0

    throw p1
.end method

.method public final zzn()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzo:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzo:Z

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zza:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzoo;

    .line 3
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzoe;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzoe;->zze(J)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzq:I

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zznu;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzi:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzhf;

    .line 5
    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzhg;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    return-void
.end method

.method final synthetic zzo()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzv(I)Lcom/google/ads/interactivemedia/v3/internal/zzoe;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzoe;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzoe;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move-object v8, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v8, v4

    move-object v9, v8

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzc:Landroid/content/Context;

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzq:I

    const-string v10, "1"

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    const/4 v6, 0x1

    .line 3
    invoke-static/range {v5 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/zzno;->zza(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zznf;)Lcom/google/ads/interactivemedia/v3/internal/zzoj;

    move-result-object v3

    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/zzoj;->zzb:[B

    if-eqz v4, :cond_b

    array-length v5, v4
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v6, 0x0

    .line 4
    :try_start_1
    invoke-static {v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzn([BII)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    move-result-object v5

    .line 6
    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzko;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 10
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 11
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzq()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    goto/16 :goto_3

    .line 12
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzv(I)Lcom/google/ads/interactivemedia/v3/internal/zzoe;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzoe;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    move-result-object v5

    .line 13
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zza()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 14
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 12
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzj:Lcom/google/ads/interactivemedia/v3/internal/zzol;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/zzoj;->zzc:I

    .line 17
    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 18
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v6

    .line 17
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzom;

    .line 19
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzom;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzko;)Z

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v6, 0x4

    if-ne v3, v6, :cond_7

    .line 26
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzom;

    .line 20
    invoke-virtual {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzom;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzko;Lcom/google/ads/interactivemedia/v3/internal/zzol;)Z

    move-result v3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzof;

    .line 21
    invoke-virtual {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzof;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzko;Lcom/google/ads/interactivemedia/v3/internal/zzol;)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_8

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/16 v5, 0xfa9

    .line 23
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzb(IJ)Lcom/google/android/gms/tasks/Task;

    goto :goto_6

    .line 24
    :cond_8
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzv(I)Lcom/google/ads/interactivemedia/v3/internal/zzoe;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzoo;

    .line 25
    invoke-virtual {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzoe;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzp:Z

    .line 26
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zza:J

    goto :goto_6

    .line 11
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/16 v5, 0x1392

    .line 16
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzb(IJ)Lcom/google/android/gms/tasks/Task;

    goto :goto_6

    .line 32
    :catch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/16 v5, 0x7ee

    .line 8
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzb(IJ)Lcom/google/android/gms/tasks/Task;

    goto :goto_6

    .line 27
    :cond_b
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/16 v0, 0x1391

    .line 28
    invoke-virtual {v11, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzb(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 14
    :goto_5
    :try_start_3
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const/16 v1, 0xfa2

    .line 30
    invoke-virtual {v3, v1, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 30
    :goto_7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 32
    throw v0
.end method

.method final synthetic zzp()Lcom/google/ads/interactivemedia/v3/internal/zznf;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    return-object v0
.end method

.method final synthetic zzq()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzn:Ljava/lang/Object;

    return-object v0
.end method

.method final synthetic zzr()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzo:Z

    return v0
.end method

.method final synthetic zzs(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;->zzo:Z

    return-void
.end method
