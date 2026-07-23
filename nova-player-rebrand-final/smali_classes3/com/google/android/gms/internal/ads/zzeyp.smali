.class final synthetic Lcom/google/android/gms/internal/ads/zzeyp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzeyp;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeyp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeyp;->zza:Lcom/google/android/gms/internal/ads/zzeyp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    const-string v4, "runtime_free"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-string v4, "runtime_max"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    const-string v4, "runtime_total"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdu;->zzl()I

    move-result v2

    const-string v3, "web_view_count"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzpO:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdu;->zzw()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastU()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeyp$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v3

    const-string v5, "a_ad_mem"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 12
    :cond_0
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-string v5, "a_total"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 13
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-string v5, "a_avai"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 14
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    const-string v5, "a_threshold"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-boolean v2, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    const-string v3, "a_is_low_mem"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "runtime_avai_processors"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeyr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeyr;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method
