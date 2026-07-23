.class public final Lcom/google/ads/interactivemedia/v3/internal/zzly;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

.field public static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzlx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gads:always_enable_crash_loop_counter_v2:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:crash_loop_stats_signal_v2:enabled"

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:crash_without_flag_write_count_v2:enabled"

    .line 3
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    .line 4
    const-string v0, "gads:crash_without_write_reset_v2:count"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzb(Ljava/lang/String;J)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzly;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:init_without_flag_write_count_v2:enabled"

    .line 5
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:init_without_write_reset_v2:count"

    .line 6
    invoke-static {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzb(Ljava/lang/String;J)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzly;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:reset_app_settings_v2:enabled"

    .line 7
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:reset_counts_on_failure_service_v2:enabled"

    .line 8
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:reset_counts_on_local_flag_save_v2:enabled"

    .line 9
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:reset_counts_on_successful_service_v2:enabled"

    .line 10
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    return-void
.end method
