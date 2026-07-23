.class public final Lcom/google/ads/interactivemedia/v3/internal/zzoo;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Ljava/util/HashMap;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzop;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/internal/zznf;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzna;

.field private zzf:Lcom/google/ads/interactivemedia/v3/internal/zzod;

.field private final zzg:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zza:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzop;Lcom/google/ads/interactivemedia/v3/internal/zznf;Lcom/google/ads/interactivemedia/v3/internal/zzna;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzg:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzop;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzna;

    return-void
.end method

.method private final declared-synchronized zzd(Lcom/google/ads/interactivemedia/v3/internal/zzoe;)Ljava/lang/Class;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzoe;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zza()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zza:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    const/16 v2, 0x7ea

    :try_start_1
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzna;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzoe;->zzb()Ljava/io/File;

    move-result-object v4

    .line 2
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzna;->zza(Ljava/io/File;)Z

    move-result v3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 3
    :try_start_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzoe;->zzc()Ljava/io/File;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzoe;->zzb()Ljava/io/File;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzb:Landroid/content/Context;

    .line 10
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p1, v2, v5, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string p1, "com.google.ccc.abuse.droidguard.DroidGuard"

    .line 11
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 11
    :goto_1
    :try_start_4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzon;

    const/16 v1, 0x7d8

    .line 12
    invoke-direct {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzon;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2
    :cond_2
    :try_start_5
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzon;

    const-string v0, "VM did not pass signature verification"

    .line 3
    invoke-direct {p1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzon;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    move-exception p1

    .line 12
    :try_start_6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzon;

    .line 4
    invoke-direct {v0, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzon;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzoe;)Z
    .locals 22

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "ci: "

    .line 2
    invoke-direct/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzoe;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzon; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x6

    :try_start_1
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, [B

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const-class v8, Ljava/lang/Object;

    const/4 v11, 0x3

    aput-object v8, v7, v11

    const-class v8, Landroid/os/Bundle;

    const/4 v12, 0x4

    aput-object v8, v7, v12

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x5

    aput-object v8, v7, v13

    .line 3
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzb:Landroid/content/Context;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zzoe;->zzd()[B

    move-result-object v8

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v4

    const-string v7, "msa-r"

    aput-object v7, v6, v9

    aput-object v8, v6, v10

    const/4 v7, 0x0

    aput-object v7, v6, v11

    aput-object v14, v6, v12

    aput-object v15, v6, v13

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    new-instance v16, Lcom/google/ads/interactivemedia/v3/internal/zzod;

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzop;

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    const/16 v21, 0x0

    move-object/from16 v18, p1

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v21}, Lcom/google/ads/interactivemedia/v3/internal/zzod;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzoe;Lcom/google/ads/interactivemedia/v3/internal/zzop;Lcom/google/ads/interactivemedia/v3/internal/zznf;Z)V

    move-object/from16 v5, v16

    .line 8
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzod;->zzf()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/zzod;->zzh()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzg:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzon; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzod;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    .line 11
    :try_start_4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzod;->zzg()V
    :try_end_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzon; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    :try_start_5
    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzon;->zza()I

    move-result v8

    const-wide/16 v10, -0x1

    .line 12
    invoke-virtual {v7, v8, v10, v11, v0}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 11
    :cond_0
    :goto_0
    iput-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzod;

    .line 13
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const/16 v7, 0xbb8

    .line 15
    invoke-virtual {v0, v7, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzb(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_6
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzon; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return v9

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    .line 13
    :goto_1
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 7
    :cond_1
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzon;

    .line 16
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xfa1

    invoke-direct {v5, v6, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzon;-><init>(ILjava/lang/String;)V

    throw v5

    .line 8
    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzon;

    const-string v5, "init failed"

    const/16 v6, 0xfa0

    .line 9
    invoke-direct {v0, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzon;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    .line 18
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzon;

    const/16 v6, 0x7d4

    .line 7
    invoke-direct {v5, v6, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzon;-><init>(ILjava/lang/Throwable;)V

    throw v5
    :try_end_8
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzon; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 20
    :goto_2
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const/16 v2, 0xfaa

    .line 18
    invoke-virtual {v5, v2, v6, v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    goto :goto_4

    .line 15
    :goto_3
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zznf;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzon;->zza()I

    move-result v6

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    .line 20
    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/zznf;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :goto_4
    return v4
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzni;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzod;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzoe;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzoo;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzod;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzod;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzoe;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
