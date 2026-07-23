.class public final Lcom/google/android/gms/internal/ads/zzgam;
.super Lcom/google/android/gms/internal/ads/zzgak;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static zzd:Lcom/google/android/gms/internal/ads/zzgam;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "paidv2_creation_time"

    const-string v1, "PaidV2LifecycleImpl"

    const-string v2, "paidv2_id"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgak;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgam;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgam;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgam;->zzd:Lcom/google/android/gms/internal/ads/zzgam;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgam;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgam;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgam;->zzd:Lcom/google/android/gms/internal/ads/zzgam;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgam;->zzd:Lcom/google/android/gms/internal/ads/zzgam;

    .line 2
    monitor-exit v0

    return-object p0

    .line 3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzi(JZ)Lcom/google/android/gms/internal/ads/zzgah;
    .locals 8

    .line 1
    const-class v1, Lcom/google/android/gms/internal/ads/zzgam;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgak;->zzc:Lcom/google/android/gms/internal/ads/zzgai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgai;->zzc()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgah;-><init>()V

    .line 2
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgak;->zza(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzgah;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 4
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzj()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgam;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgak;->zzg(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgak;->zzc(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
