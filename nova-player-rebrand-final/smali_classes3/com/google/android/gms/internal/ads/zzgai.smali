.class public final Lcom/google/android/gms/internal/ads/zzgai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static zzb:Lcom/google/android/gms/internal/ads/zzgai;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgaj;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgaj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgaj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zza:Lcom/google/android/gms/internal/ads/zzgaj;

    return-void
.end method

.method public static final zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgai;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgai;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgai;->zzb:Lcom/google/android/gms/internal/ads/zzgai;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgai;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgai;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgai;->zzb:Lcom/google/android/gms/internal/ads/zzgai;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgai;->zzb:Lcom/google/android/gms/internal/ads/zzgai;

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
.method public final zzb(Z)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgai;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zza:Lcom/google/android/gms/internal/ads/zzgaj;

    const-string v2, "paidv2_publisher_option"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgaj;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string p1, "paidv2_creation_time"

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzf(Ljava/lang/String;)V

    const-string p1, "paidv2_id"

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzf(Ljava/lang/String;)V

    const-string p1, "vendor_scoped_gpid_v2_id"

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzf(Ljava/lang/String;)V

    const-string p1, "vendor_scoped_gpid_v2_creation_time"

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzf(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc()Z
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgai;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zza:Lcom/google/android/gms/internal/ads/zzgaj;

    const-string v2, "paidv2_publisher_option"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgaj;->zze(Ljava/lang/String;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzd(Z)V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgai;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zza:Lcom/google/android/gms/internal/ads/zzgaj;

    const-string v2, "paidv2_user_option"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

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

.method public final zze()Z
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgai;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgai;->zza:Lcom/google/android/gms/internal/ads/zzgaj;

    const-string v2, "paidv2_user_option"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgaj;->zze(Ljava/lang/String;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
