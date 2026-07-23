.class public final Lcom/google/android/gms/ads/internal/util/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static volatile zzc:F = -1.0f

.field private static volatile zzd:J

.field private static final zze:Ljava/lang/Object;


# instance fields
.field private zza:Z

.field private zzb:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzaa;->zze:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zza:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zzb:F

    return-void
.end method

.method public static zze(Landroid/content/Context;)F
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzpD:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzpE:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sget v0, Lcom/google/android/gms/ads/internal/util/zzaa;->zzc:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_0

    sget-wide v7, Lcom/google/android/gms/ads/internal/util/zzaa;->zzd:J

    sub-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zzc:F

    return p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzaa;->zze:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    sget v7, Lcom/google/android/gms/ads/internal/util/zzaa;->zzc:F

    cmpl-float v6, v7, v6

    if-eqz v6, :cond_1

    sget-wide v6, Lcom/google/android/gms/ads/internal/util/zzaa;->zzd:J

    sub-long v6, v2, v6

    cmp-long v4, v6, v4

    if-gez v4, :cond_1

    sget p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zzc:F

    .line 12
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string v4, "audio"

    .line 8
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_2

    sput v1, Lcom/google/android/gms/ads/internal/util/zzaa;->zzc:F

    sput-wide v2, Lcom/google/android/gms/ads/internal/util/zzaa;->zzd:J

    .line 9
    monitor-exit v0

    return v1

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzg(Landroid/media/AudioManager;)F

    move-result p0

    sput p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zzc:F

    sput-wide v2, Lcom/google/android/gms/ads/internal/util/zzaa;->zzd:J

    sget p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zzc:F

    .line 11
    monitor-exit v0

    return p0

    .line 13
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_3
    const-string v0, "audio"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_4

    return v1

    .line 15
    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzg(Landroid/media/AudioManager;)F

    move-result p0

    return p0
.end method

.method private final declared-synchronized zzf()Z
    .locals 2

    .line 0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zzb:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    monitor-exit p0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static zzg(Landroid/media/AudioManager;)F
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p0, p0

    int-to-float v0, v1

    div-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final declared-synchronized zza(F)V
    .locals 0

    .line 0
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zzb:F
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

.method public final declared-synchronized zzb()F
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zzb:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzc(Z)V
    .locals 0

    .line 0
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zza:Z
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

.method public final declared-synchronized zzd()Z
    .locals 1

    .line 0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzaa;->zza:Z
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
