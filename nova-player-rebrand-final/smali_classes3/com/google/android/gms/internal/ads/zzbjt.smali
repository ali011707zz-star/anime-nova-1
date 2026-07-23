.class public abstract Lcom/google/android/gms/internal/ads/zzbjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbio;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbio;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gads:trustless_token_for_decagon:enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjt;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:invalidate_token_at_refresh_start"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gms:expose_token_for_gma:enabled"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:referesh_rate_limit"

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:timeout_for_trustless_token:millis"

    const-wide/16 v2, 0x7d0

    .line 5
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbio;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjt;->zzb:Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:token_anonymization:enabled"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbio;

    const-string v0, "gads:cached_token:ttl_millis"

    const-wide/32 v1, 0xa4cb80

    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbio;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbio;

    return-void
.end method
