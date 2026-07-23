.class final Lcom/google/android/gms/internal/ads/zzaza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzazb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazb;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaza;->zza:Lcom/google/android/gms/internal/ads/zzazb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaza;->zza:Lcom/google/android/gms/internal/ads/zzazb;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzazb;->zzb:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazb;->zzc()Landroid/os/ConditionVariable;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzazb;->zzb:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 3
    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzdl:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaza;->zza:Lcom/google/android/gms/internal/ads/zzazb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzazb;->zzb()Lcom/google/android/gms/internal/ads/zzbak;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbak;->zza:Landroid/content/Context;

    const-string v4, "ADSHIELD"

    const/4 v5, 0x0

    .line 4
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfxd;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfxd;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzazb;->zza:Lcom/google/android/gms/internal/ads/zzfxd;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v0, v2

    :catchall_1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaza;->zza:Lcom/google/android/gms/internal/ads/zzazb;

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzazb;->zzb:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazb;->zzc()Landroid/os/ConditionVariable;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 7
    monitor-exit v1

    :goto_1
    return-void

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
