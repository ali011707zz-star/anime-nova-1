.class abstract Lcom/google/ads/interactivemedia/v3/internal/zzss;
.super Lcom/google/ads/interactivemedia/v3/internal/zzuo;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/zzuo;",
        "Lcom/google/common/util/concurrent/ListenableFuture;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;

.field static final zze:Ljava/lang/Object;

.field static final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzua;

.field static final zzg:Z


# instance fields
.field volatile listenersField:Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

.field volatile valueField:Ljava/lang/Object;

.field volatile waitersField:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zze:Ljava/lang/Object;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzua;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzsr;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzua;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzua;

    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 2
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzg:Z

    const-string v0, "java.runtime.name"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "Android"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzss$zzb;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zzb;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v6, v1

    move-object v12, v6

    goto :goto_6

    .line 6
    :catch_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzss$zzc;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zzc;-><init>([B)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_2
    :try_start_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzss$zzd;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zzd;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_3
    move-object v2, v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    .line 6
    :goto_4
    :try_start_3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzss$zzb;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zzb;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    move-object v6, v1

    move-object v12, v2

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzss$zzc;

    invoke-direct {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zzc;-><init>([B)V

    move-object v6, v0

    move-object v12, v2

    move-object v0, v3

    .line 5
    :goto_6
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;

    if-eqz v6, :cond_2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzua;

    .line 8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzua;->zza()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "<clinit>"

    const-string v11, "UnsafeAtomicHelper is broken!"

    const-string v9, "com.google.common.util.concurrent.AbstractFutureState"

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzua;->zza()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v4, "<clinit>"

    const-string v5, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    .line 10
    const-string v3, "com.google.common.util.concurrent.AbstractFutureState"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzuo;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->thread:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->waitersField:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    if-eq p1, v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->next:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->next:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    iget-object p1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzss;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method static zzr(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;->zzg(Lcom/google/ads/interactivemedia/v3/internal/zzss;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzv(Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;Ljava/lang/Thread;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;

    invoke-virtual {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method final zzp(Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzss;Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;)Z

    move-result p1

    return p1
.end method

.method final zzq(Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;)Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;

    invoke-virtual {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;->zzf(Lcom/google/ads/interactivemedia/v3/internal/zzss;Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;)Lcom/google/ads/interactivemedia/v3/internal/zzsr$zzd;

    move-result-object p1

    return-object p1
.end method

.method final zzs()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;

    invoke-virtual {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzss;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->thread:Ljava/lang/Thread;

    .line 2
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->next:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final zzt(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 3
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 4
    :goto_0
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzh(Ljava/lang/Object;)Z

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 5
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->waitersField:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    sget-object v15, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    if-eq v6, v15, :cond_9

    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    .line 7
    invoke-direct {v15}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;-><init>()V

    :cond_3
    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;

    .line 8
    invoke-virtual {v7, v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)V

    .line 9
    invoke-virtual {v7, v0, v6, v15}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzss;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    const-wide v6, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    .line 10
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 14
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzh(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 15
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 12
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 16
    invoke-direct {v0, v15}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)V

    goto :goto_3

    .line 13
    :cond_7
    invoke-direct {v0, v15}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)V

    new-instance v1, Ljava/lang/InterruptedException;

    .line 14
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 18
    :cond_8
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->waitersField:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    if-ne v6, v7, :cond_3

    :cond_9
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    .line 31
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 16
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzh(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 19
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 17
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 17
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    .line 20
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v17, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v12, v15

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Waited "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v8, v11, v9

    if-gez v8, :cond_14

    const-string v8, " (plus "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    invoke-virtual {v3, v4, v5, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 25
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v18

    sub-long v4, v4, v18

    cmp-long v3, v11, v9

    if-eqz v3, :cond_f

    cmp-long v8, v4, v13

    if-lez v8, :cond_10

    :cond_f
    move/from16 v16, v17

    goto :goto_5

    :cond_10
    const/16 v16, 0x0

    :goto_5
    if-lez v3, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 26
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/2addr v3, v8

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_11
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 27
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xd

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_13
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    :cond_14
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, " but future completed as timeout expired"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 30
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v1, v4

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    .line 3
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method final zzu()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzh(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->waitersField:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    if-eq v0, v3, :cond_7

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    .line 5
    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;-><init>()V

    :cond_2
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;

    .line 6
    invoke-virtual {v4, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)V

    .line 7
    invoke-virtual {v4, p0, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzss$zza;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzss;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzh(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 12
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 10
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzss;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;)V

    new-instance v0, Ljava/lang/InterruptedException;

    .line 11
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->waitersField:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzss$zze;

    if-ne v0, v4, :cond_2

    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzss;->valueField:Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsr;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    .line 2
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method
