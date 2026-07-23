.class public final Lcom/google/ads/interactivemedia/v3/internal/zzlz;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

.field public static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

.field public static final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

.field public static final zzd:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

.field public static final zze:Lcom/google/ads/interactivemedia/v3/internal/zzlx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gads:disable_adapter_flag_shared_pref_listener_v2:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlz;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:disable_flag_shared_pref_listener_v2:enabled"

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlz;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:enable_adapter_flags:enabled"

    .line 3
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlz;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:include_package_name_v2:enabled"

    .line 4
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:js_flags:mf"

    .line 5
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:js_flags:update_interval"

    const-wide/32 v2, 0xdbba00

    .line 6
    invoke-static {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zzb(Ljava/lang/String;J)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    .line 7
    const-string v0, "gads:persist_js_flag:ars"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:persist_js_flag:as"

    .line 8
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:persist_js_flag:scar"

    .line 9
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:read_local_flags_v2:enabled"

    .line 10
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlz;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:read_local_flags_cld_v2:enabled"

    .line 11
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzlz;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:write_local_flags_cld_v2:enabled"

    .line 12
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:write_local_flags_client_v2:enabled"

    .line 13
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    const-string v0, "gads:write_local_flags_service_v2:enabled"

    .line 14
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzlx;->zza(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/zzlx;

    return-void
.end method
