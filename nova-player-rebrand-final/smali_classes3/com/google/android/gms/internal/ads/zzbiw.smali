.class public abstract Lcom/google/android/gms/internal/ads/zzbiw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzg:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzh:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzi:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzj:Lcom/google/android/gms/internal/ads/zzbio;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gads:always_enable_crash_loop_counter_v3:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiw;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:crash_loop_stats_signal_v3:enabled"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiw;->zzb:Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:crash_without_flag_write_count_v3:enabled"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiw;->zzc:Lcom/google/android/gms/internal/ads/zzbio;

    .line 4
    const-string v0, "gads:crash_without_write_reset_v3:count"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbio;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiw;->zzd:Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:init_without_flag_write_count_v3:enabled"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiw;->zze:Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:init_without_write_reset_v3:count"

    .line 6
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbio;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiw;->zzf:Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:reset_app_settings_v3:enabled"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiw;->zzg:Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:reset_counts_on_failure_service_v3:enabled"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiw;->zzh:Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:reset_counts_on_local_flag_save_v3:enabled"

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiw;->zzi:Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:reset_counts_on_successful_service_v3:enabled"

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbiw;->zzj:Lcom/google/android/gms/internal/ads/zzbio;

    return-void
.end method
