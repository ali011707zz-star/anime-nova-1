.class public final Lcom/google/ads/interactivemedia/v3/internal/zzbz;
.super Landroid/database/ContentObserver;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/media/AudioManager;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzf:Ljava/util/concurrent/ExecutorService;

.field private final zzg:Lcom/google/ads/interactivemedia/v3/internal/zzcl;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzcl;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzf:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzb:Landroid/content/Context;

    const-string p1, "audio"

    .line 5
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzc:Landroid/media/AudioManager;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    return-void
.end method

.method private final zzh()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzby;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzby;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzbz;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzf:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzh()V

    return-void
.end method

.method public final zza()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzh()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzb:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method final synthetic zzc()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzc:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    if-gtz v2, :cond_0

    return v1

    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method final synthetic zzd()Landroid/os/Handler;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zza:Landroid/os/Handler;

    return-object v0
.end method

.method final synthetic zze()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method final synthetic zzf()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/ads/interactivemedia/v3/internal/zzcl;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbz;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzcl;

    return-object v0
.end method
