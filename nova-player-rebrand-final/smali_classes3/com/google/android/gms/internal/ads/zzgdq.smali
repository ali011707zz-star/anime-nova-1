.class public final Lcom/google/android/gms/internal/ads/zzgdq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdh;
.implements Lcom/google/android/gms/internal/ads/zzgdd;
.implements Lcom/google/android/gms/internal/ads/zzgdw;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzifd;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgcl;

.field private final zzd:Ljava/util/concurrent/ExecutorService;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgce;

.field private final zzf:Z

.field private final zzg:Ljava/lang/String;

.field private final zzh:J

.field private final zzi:J

.field private final zzj:D

.field private final zzk:Ljava/lang/String;

.field private final zzl:J

.field private final zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzn:Ljava/lang/Object;

.field private final zzo:Ljava/lang/Object;

.field private final zzp:Ljava/lang/Object;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzavj;

.field private final zzr:Ljava/util/List;

.field private zzs:Z

.field private final zzt:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzifd;->zzc()Lcom/google/android/gms/internal/ads/zzifc;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzifc;->zza(I)Lcom/google/android/gms/internal/ads/zzifc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzifd;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgdq;->zza:Lcom/google/android/gms/internal/ads/zzifd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgcl;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgce;Ljava/util/Random;Ljava/lang/String;JJDLjava/lang/String;J)V
    .locals 4

    move-wide v0, p11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzn:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzo:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzp:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavk;->zza()Lcom/google/android/gms/internal/ads/zzavj;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzq:Lcom/google/android/gms/internal/ads/zzavj;

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzr:Ljava/util/List;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzs:Z

    new-instance v2, Ljava/util/HashMap;

    .line 4
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzt:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzc:Lcom/google/android/gms/internal/ads/zzgcl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzd:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zze:Lcom/google/android/gms/internal/ads/zzgce;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzg:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzh:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzj:D

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzk:Ljava/lang/String;

    move-wide/from16 p1, p14

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzl:J

    .line 5
    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide p1

    cmpg-double p1, p1, v0

    if-gez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzf:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgdo;-><init>(Lcom/google/android/gms/internal/ads/zzgdq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzd:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zze(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(IJLjava/lang/Throwable;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzf:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzr:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgdn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzp:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    .line 2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    .line 6
    :try_start_2
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzgdn;-><init>(IJLjava/lang/Throwable;Ljava/lang/String;J)V

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzs:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzs:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzc:Lcom/google/android/gms/internal/ads/zzgcl;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgdp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzgdp;-><init>(Lcom/google/android/gms/internal/ads/zzgdq;)V

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzi:J

    .line 8
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgcl;->zza(Ljava/lang/Runnable;J)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 9
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 5
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 9
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgdv;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzq:Lcom/google/android/gms/internal/ads/zzavj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgdv;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzavj;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavj;

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final zzd()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzq:Lcom/google/android/gms/internal/ads/zzavj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbk()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzavj;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzo:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzr:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzguf;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v3

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzs:Z

    .line 5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    move v4, v0

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 6
    check-cast v6, Lcom/google/android/gms/internal/ads/zzgdn;

    int-to-long v7, v5

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzh:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzavk;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzgdq;->zze(Lcom/google/android/gms/internal/ads/zzavk;)V

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavj;->zzb()Lcom/google/android/gms/internal/ads/zzavj;

    move v5, v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawc;->zza()Lcom/google/android/gms/internal/ads/zzawb;

    move-result-object v7

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzgdn;->zza:I

    int-to-long v8, v8

    .line 10
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzawb;->zza(J)Lcom/google/android/gms/internal/ads/zzawb;

    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/zzgdn;->zzb:J

    .line 11
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzawb;->zzb(J)Lcom/google/android/gms/internal/ads/zzawb;

    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/zzgdn;->zze:J

    .line 12
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzawb;->zze(J)Lcom/google/android/gms/internal/ads/zzawb;

    .line 13
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzgdn;->zzd:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 14
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzawb;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawb;

    .line 15
    :cond_1
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzgdn;->zzc:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    const/4 v8, 0x3

    .line 16
    :goto_1
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzawb;->zzg(I)Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 17
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzawb;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawb;

    :try_start_2
    new-instance v8, Ljava/io/StringWriter;

    .line 18
    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v9, Ljava/io/PrintWriter;

    .line 19
    invoke-direct {v9, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :try_start_4
    invoke-virtual {v6, v9}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 21
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 22
    :try_start_5
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v6

    .line 18
    :try_start_7
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v9

    :try_start_8
    invoke-virtual {v6, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    :try_start_9
    invoke-virtual {v8}, Ljava/io/StringWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v8

    :try_start_a
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 5
    :catch_0
    const-string v6, ""

    .line 23
    :goto_5
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzawb;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawb;

    .line 24
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzawc;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzavj;->zza(Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/zzavj;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    if-lez v5, :cond_5

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgdq;->zze(Lcom/google/android/gms/internal/ads/zzavk;)V

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavj;->zzb()Lcom/google/android/gms/internal/ads/zzavj;

    :cond_5
    return-void

    :catchall_4
    move-exception v0

    .line 5
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :catchall_5
    move-exception v1

    .line 2
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v1
.end method

.method protected final zze(Lcom/google/android/gms/internal/ads/zzavk;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdm;->zza()Lcom/google/android/gms/internal/ads/zzgdl;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgdq;->zza:Lcom/google/android/gms/internal/ads/zzifd;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdl;->zzb(Lcom/google/android/gms/internal/ads/zzifd;)Lcom/google/android/gms/internal/ads/zzgdl;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdk;->zza()Lcom/google/android/gms/internal/ads/zzgdj;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgdj;->zza(Lcom/google/android/gms/internal/ads/zzavk;)Lcom/google/android/gms/internal/ads/zzgdj;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdk;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Lcom/google/android/gms/internal/ads/zzgdk;)Lcom/google/android/gms/internal/ads/zzgdl;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zze:Lcom/google/android/gms/internal/ads/zzgce;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzg:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object p1

    const-string v2, "application/x-protobuf"

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzgce;->zzb(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method final synthetic zzf()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzf:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzb:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzk:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzj:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzl:J

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavk;->zza()Lcom/google/android/gms/internal/ads/zzavj;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v8, v8

    .line 4
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzavj;->zzc(J)Lcom/google/android/gms/internal/ads/zzavj;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzavj;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavj;

    .line 6
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzavj;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavj;

    .line 7
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzavj;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavj;

    .line 8
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzavj;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavj;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzavj;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavj;

    .line 10
    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/ads/zzavj;->zzl(J)Lcom/google/android/gms/internal/ads/zzavj;

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    double-to-int v1, v4

    int-to-long v1, v1

    .line 11
    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzavj;->zzk(J)Lcom/google/android/gms/internal/ads/zzavj;

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 14
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v2, v2

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzavj;->zzh(J)Lcom/google/android/gms/internal/ads/zzavj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v2, "android.hardware.type.automotive"

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 23
    :cond_2
    const-string v2, "android.hardware.type.watch"

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v2, "android.hardware.type.pc"

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    const-string v1, "uimode"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    if-ne v0, v3, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    move v0, v1

    .line 20
    :goto_0
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzavj;->zzm(I)Lcom/google/android/gms/internal/ads/zzavj;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    :catch_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdq;->zzq:Lcom/google/android/gms/internal/ads/zzavj;

    .line 22
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbo(Lcom/google/android/gms/internal/ads/zzibr;)Lcom/google/android/gms/internal/ads/zzibl;

    .line 23
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    :goto_1
    return-void
.end method
