.class public final Lcom/google/ads/interactivemedia/v3/internal/zzjj;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkj;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zzh:Lcom/google/ads/interactivemedia/v3/internal/zzkk;


# instance fields
.field private final zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

.field private final zzj:Landroid/content/Context;

.field private final zzk:Lcom/google/ads/interactivemedia/v3/internal/zzgl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzkk;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzkk;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzkk;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;IILandroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzt;Lcom/google/ads/interactivemedia/v3/internal/zzaa;Lcom/google/ads/interactivemedia/v3/internal/zzgl;)V
    .locals 7

    .line 1
    const-string v3, "5ZNtOO3srzHnbl5PLlxEIuHlg0l+6HDun864hT7P5ko="

    const/16 v6, 0x1b

    const-string/jumbo v2, "yYlfo3JOLIfvdgBq3U3deu0pC6YiXdEdqGnVULE/KCllAkaO/XSsVQU+sKDN/uG0"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzad;II)V

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzj:Landroid/content/Context;

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzgl;

    return-void
.end method

.method private final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzgi;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zzb()I

    move-result v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzj:Landroid/content/Context;

    const/4 v3, 0x3

    .line 6
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v2, ""

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzgi;

    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzgi;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzgl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzgl;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzgl;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-interface {v1, v3, v4, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const-string v0, "E"

    :goto_1
    iput-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zza:Ljava/lang/String;

    return-object v2
.end method

.method private final zzd()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzm()Ljava/util/concurrent/Future;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzm()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzl()Lcom/google/ads/interactivemedia/v3/internal/zzba;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzba;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzba;->zzb()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final zza()V
    .locals 11

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzkk;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzj:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzkk;->zza(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzgi;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zza:Ljava/lang/String;

    .line 4
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zziy;->zzc(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zza:Ljava/lang/String;

    const-string v4, "E"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zza:Ljava/lang/String;

    const-string v3, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 7
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zziy;->zzc(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    .line 26
    :cond_1
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zziy;->zzc(Ljava/lang/String;)Z

    move v3, v4

    .line 7
    :goto_1
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzgl;

    if-eqz v5, :cond_2

    .line 27
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzgi;

    move-result-object v1

    goto/16 :goto_5

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_3

    .line 37
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzaa;

    .line 11
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/zzaa;->zza()Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v6

    .line 12
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 13
    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 14
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v8

    .line 13
    check-cast v8, Ljava/lang/Boolean;

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 15
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v9

    .line 16
    check-cast v9, Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzb()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    move-object v9, v2

    .line 19
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    .line 20
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzi()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/zziy;->zzc(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 21
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzd()Ljava/lang/String;

    move-result-object v9

    :cond_5
    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zze:Ljava/lang/reflect/Method;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v1, v10, v6

    aput-object v7, v10, v5

    const/4 v1, 0x2

    aput-object v9, v10, v1

    .line 22
    invoke-virtual {v8, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 23
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzgi;

    invoke-direct {v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzgi;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziy;->zzc(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "E"

    .line 24
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    add-int/lit8 v3, v3, -0x1

    if-eq v3, v4, :cond_8

    const/4 v1, 0x4

    if-eq v3, v1, :cond_7

    goto :goto_4

    .line 25
    :cond_7
    throw v2

    .line 26
    :cond_8
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zziy;->zzc(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v1, v5, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zza:Ljava/lang/String;

    :cond_9
    :goto_4
    move-object v1, v5

    .line 28
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 29
    :cond_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzgi;

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzad;

    .line 31
    monitor-enter v2

    if-eqz v1, :cond_b

    :try_start_1
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zza:Ljava/lang/String;

    .line 32
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzo(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-wide v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zzb:J

    .line 33
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzu(J)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zzc:Ljava/lang/String;

    .line 34
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzt(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zzd:Ljava/lang/String;

    .line 35
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzD(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzgi;->zze:Ljava/lang/String;

    .line 36
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzad;->zzE(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzad;

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 37
    :cond_b
    :goto_6
    monitor-exit v2

    return-void

    :goto_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 30
    :goto_8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected final zzb()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zziy;->zzb(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 5
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zziy;->zzb(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 9
    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzj:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zziv;

    .line 11
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzd()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 12
    invoke-static {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzkm;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/Executor;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
