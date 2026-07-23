.class public final Lcom/google/android/gms/internal/ads/zzchu;
.super Lcom/google/android/gms/internal/ads/zzchr;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zze:Ljava/util/Set;

.field private static final zzf:Ljava/text/DecimalFormat;


# instance fields
.field private zzg:Ljava/io/File;

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzchu;->zze:Ljava/util/Set;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    .line 2
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzchu;->zzf:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcge;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzchr;-><init>(Lcom/google/android/gms/internal/ads/zzcge;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Context.getCacheDir() returned null"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxl;->zza()Lcom/google/android/gms/internal/ads/zzfxm;

    move-result-object v1

    const-string v2, "admobVideoStreams"

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzfxm;->zza(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Could not create preload cache directory at "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    return-void

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    .line 8
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v1, "Could not set cache file permissions at "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    return-void
.end method

.method private final zza(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxl;->zza()Lcom/google/android/gms/internal/ads/zzfxm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ".done"

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfxm;->zza(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zze(Ljava/lang/String;)Z
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3
    const-string v7, " sec"

    const-string v8, "Timeout exceeded. Limit: "

    const-string v0, " at "

    const-string v3, "HTTP status code "

    const-string v4, "HTTP request failed. Code: "

    const-string v9, "Preloaded "

    const-string v5, " exceeds limit at "

    const-string v6, "Content length "

    const-string v10, "Stream cache aborted, missing content-length header at "

    const-string v11, "Stream cache already in progress at "

    const-string v12, " bytes from "

    const-string v13, "Caching "

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    const/16 v16, 0x0

    if-eqz v14, :cond_1c

    :goto_0
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    if-nez v14, :cond_0

    move/from16 v14, v16

    goto :goto_2

    .line 1
    :cond_0
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    array-length v15, v14

    move-object/from16 v17, v14

    move/from16 v14, v16

    move/from16 v18, v14

    :goto_1
    if-ge v14, v15, :cond_2

    aget-object v19, v17, v14

    move/from16 v20, v14

    .line 2
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move/from16 v19, v15

    const-string v15, ".done"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    add-int/lit8 v14, v20, 0x1

    move/from16 v15, v19

    goto :goto_1

    :cond_2
    move/from16 v14, v18

    .line 3
    :goto_2
    sget-object v15, Lcom/google/android/gms/internal/ads/zzbhe;->zzu:Lcom/google/android/gms/internal/ads/zzbgv;

    move-object/from16 v17, v9

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v9

    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v9

    .line 3
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v14, v9, :cond_9

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    if-nez v9, :cond_3

    goto :goto_5

    .line 5
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v14, v9

    const-wide v18, 0x7fffffffffffffffL

    move/from16 v15, v16

    move-wide/from16 v19, v18

    move-object/from16 v18, v9

    const/4 v9, 0x0

    :goto_3
    if-ge v15, v14, :cond_5

    aget-object v21, v18, v15

    move/from16 v22, v14

    .line 6
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move/from16 v23, v15

    const-string v15, ".done"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 7
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    cmp-long v24, v14, v19

    if-gez v24, :cond_4

    move-wide/from16 v19, v14

    move-object/from16 v9, v21

    :cond_4
    add-int/lit8 v15, v23, 0x1

    move/from16 v14, v22

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_6

    .line 8
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v14

    .line 9
    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzchu;->zza(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 10
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 11
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    and-int/2addr v9, v14

    move v14, v9

    goto :goto_4

    :cond_6
    move/from16 v14, v16

    :cond_7
    :goto_4
    if-nez v14, :cond_8

    .line 96
    :goto_5
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Unable to expire stream cache"

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const-string v0, "expireFailed"

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v1, v2, v3, v0, v3}, Lcom/google/android/gms/internal/ads/zzchr;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v16

    :cond_8
    move-object/from16 v9, v17

    goto/16 :goto_0

    .line 12
    :cond_9
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/io/File;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxl;->zza()Lcom/google/android/gms/internal/ads/zzfxm;

    move-result-object v15

    move-object/from16 v18, v7

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    invoke-interface {v15, v7, v9}, Lcom/google/android/gms/internal/ads/zzfxm;->zza(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/zzchu;->zza(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 15
    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v9

    const/4 v15, 0x1

    if-eqz v9, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_6

    .line 92
    :cond_a
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    .line 93
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v4, "Stream cache hit at "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzchr;->zzo(Ljava/lang/String;Ljava/lang/String;I)V

    return v15

    .line 15
    :cond_b
    :goto_6
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzchu;->zzg:Ljava/io/File;

    .line 16
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v7

    sget-object v7, Lcom/google/android/gms/internal/ads/zzchu;->zze:Ljava/util/Set;

    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 17
    monitor-enter v7

    .line 18
    :try_start_0
    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 88
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "inProgress"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzchr;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    monitor-exit v7

    return v16

    :catchall_0
    move-exception v0

    goto/16 :goto_19

    .line 19
    :cond_c
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "error"

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxx;->zza()Lcom/google/android/gms/internal/ads/zzfyj;

    move-result-object v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_11

    move-object/from16 v21, v11

    :try_start_2
    new-instance v11, Lcom/google/android/gms/internal/ads/zzcht;

    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/zzcht;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_f

    move-object/from16 v22, v8

    const/16 v8, 0x109

    move-object/from16 v23, v14

    const/4 v14, -0x1

    .line 21
    :try_start_3
    invoke-virtual {v15, v11, v8, v14}, Lcom/google/android/gms/internal/ads/zzfyj;->zzh(Lcom/google/android/gms/internal/ads/zzfxz;II)Ljava/net/HttpURLConnection;

    move-result-object v8

    .line 22
    invoke-static {v8}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 23
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v14, 0x190

    if-ge v11, v14, :cond_d

    goto :goto_c

    :cond_d
    const-string v5, "badUrl"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 74
    :try_start_4
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    new-instance v6, Ljava/io/IOException;

    .line 75
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_7
    move-object v11, v5

    move-object/from16 v13, v23

    :goto_8
    const/4 v15, 0x0

    goto/16 :goto_17

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    :goto_9
    move-object v11, v5

    move-object/from16 v13, v23

    :goto_a
    const/4 v4, 0x0

    goto :goto_8

    :catch_4
    move-exception v0

    :goto_b
    move-object/from16 v13, v23

    goto/16 :goto_16

    :catch_5
    move-exception v0

    goto :goto_b

    .line 24
    :cond_e
    :goto_c
    :try_start_6
    invoke-virtual {v8}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    if-gez v0, :cond_f

    .line 25
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "contentLengthMissing"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzchr;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-interface {v7, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v16

    :cond_f
    sget-object v10, Lcom/google/android/gms/internal/ads/zzchu;->zzf:Ljava/text/DecimalFormat;

    int-to-long v3, v0

    .line 29
    invoke-virtual {v10, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzv:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    const-string v14, "File too big for full file cache. Size: "

    if-le v0, v11, :cond_10

    .line 69
    :try_start_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 71
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sizeExceeded"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzchr;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v7, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v16

    .line 32
    :cond_10
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 33
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 35
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v7

    new-instance v8, Ljava/io/FileOutputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    move-object/from16 v13, v23

    .line 36
    :try_start_8
    invoke-direct {v8, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_d

    .line 37
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    const/high16 v3, 0x100000

    .line 38
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v23

    .line 40
    invoke-interface/range {v23 .. v23}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v24

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzai:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Lcom/google/android/gms/ads/internal/util/zzbu;

    invoke-direct {v6, v4, v5}, Lcom/google/android/gms/ads/internal/util/zzbu;-><init>(J)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzah:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move/from16 v4, v16

    .line 45
    :goto_d
    invoke-interface {v7, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-ltz v5, :cond_16

    add-int/2addr v4, v5

    if-gt v4, v11, :cond_15

    .line 46
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 47
    :cond_11
    invoke-virtual {v15, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-gtz v5, :cond_11

    .line 48
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 49
    invoke-interface/range {v23 .. v23}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v24

    const-wide/16 v30, 0x3e8

    mul-long v30, v30, v26

    cmp-long v5, v28, v30

    if-gtz v5, :cond_14

    .line 56
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzchu;->zzh:Z

    if-nez v5, :cond_13

    .line 50
    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/zzbu;->zza()Z

    move-result v5

    if-eqz v5, :cond_12

    move-object v5, v3

    .line 51
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v6

    sget-object v6, Lcom/google/android/gms/ads/internal/util/client/zzf;->zza:Landroid/os/Handler;

    move-object/from16 v29, v5

    move v5, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchl;

    move-object/from16 v30, v6

    const/4 v6, 0x0

    move-object/from16 v32, v30

    move-object/from16 v30, v7

    move-object/from16 v7, v32

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzchl;-><init>(Lcom/google/android/gms/internal/ads/zzchr;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :catch_6
    move-exception v0

    goto/16 :goto_13

    :catch_7
    move-exception v0

    goto/16 :goto_13

    :cond_12
    move v5, v0

    move-object/from16 v29, v3

    move-object/from16 v28, v6

    move-object/from16 v30, v7

    :goto_e
    move v0, v5

    move-object/from16 v6, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v30

    goto :goto_d

    .line 56
    :cond_13
    const-string v11, "externalAbort"
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6

    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v3, "abort requested"

    .line 57
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    :goto_f
    move-object v15, v8

    :goto_10
    const/4 v4, 0x0

    goto/16 :goto_17

    .line 49
    :cond_14
    :try_start_b
    const-string v11, "downloadTimeout"
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    .line 55
    :try_start_c
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v3, v22

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_8

    :try_start_d
    new-instance v0, Ljava/io/IOException;

    const-string v3, "stream cache time limit exceeded"

    .line 56
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_a

    :catch_a
    move-exception v0

    goto :goto_11

    :catch_b
    move-exception v0

    :goto_11
    move-object v4, v15

    move-object v15, v8

    goto/16 :goto_17

    .line 45
    :cond_15
    :try_start_e
    const-string v11, "sizeExceeded"
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6

    .line 53
    :try_start_f
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_8

    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v3, "stream cache file size limit exceeded"

    .line 54
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_a

    .line 58
    :cond_16
    :try_start_11
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x3

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzm(I)Z

    move-result v0

    if-eqz v0, :cond_17

    int-to-long v5, v4

    .line 60
    invoke-virtual {v10, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v3, v17

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    :cond_17
    move/from16 v3, v16

    const/4 v0, 0x1

    .line 63
    invoke-virtual {v13, v0, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 64
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_12

    :cond_18
    move-object/from16 v0, v20

    .line 66
    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_6

    .line 67
    :catch_c
    :goto_12
    :try_start_13
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzchr;->zzo(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzchu;->zze:Ljava/util/Set;

    .line 68
    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_6

    const/16 v19, 0x1

    return v19

    :goto_13
    move-object v15, v8

    move-object/from16 v11, v21

    goto/16 :goto_10

    :catch_d
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v0

    goto :goto_16

    :catch_f
    move-exception v0

    :goto_14
    move-object v13, v14

    goto :goto_16

    :catch_10
    move-exception v0

    goto :goto_14

    :catch_11
    move-exception v0

    :goto_15
    move-object/from16 v21, v11

    goto :goto_14

    :catch_12
    move-exception v0

    goto :goto_15

    :goto_16
    move-object/from16 v11, v21

    goto/16 :goto_a

    .line 76
    :goto_17
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_19

    const-string v3, "VideoStreamFullFileCache.preload"

    .line 77
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 78
    :cond_19
    :try_start_14
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_13

    :catch_13
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzchu;->zzh:Z

    const-string v5, "\""

    if-eqz v3, :cond_1a

    .line 79
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1a

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Preload aborted for URL \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    goto :goto_18

    .line 81
    :cond_1a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x19

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Preload failed for URL \""

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 82
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :goto_18
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 84
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Could not delete partial cache file at "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 86
    :cond_1b
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v11, v4}, Lcom/google/android/gms/internal/ads/zzchr;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzchu;->zze:Ljava/util/Set;

    .line 87
    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/16 v16, 0x0

    return v16

    .line 20
    :goto_19
    :try_start_15
    monitor-exit v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    throw v0

    .line 2
    :cond_1c
    const-string v0, "noCacheDir"

    const/4 v4, 0x0

    .line 99
    invoke-virtual {v1, v2, v4, v0, v4}, Lcom/google/android/gms/internal/ads/zzchr;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    return v16
.end method

.method public final zzl()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchu;->zzh:Z

    return-void
.end method
