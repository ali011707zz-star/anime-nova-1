.class public final Lcom/google/android/gms/ads/internal/util/client/zzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/client/zzx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/util/client/zzx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/client/zzv;->zza:Lcom/google/android/gms/ads/internal/util/client/zzx;

    return-void
.end method

.method public static zzb(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/util/client/zzv;
    .locals 9

    .line 1
    const-string v0, "ping_strategy"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/zzv;

    if-nez p0, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/internal/util/client/zzn;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/util/client/zzn;-><init>(IIDZ)V

    goto :goto_0

    :cond_0
    const-string v1, "max_attempts"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "initial_backoff_ms"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "backoff_multiplier"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 4
    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v1, "buffer_after_max_attempts"

    .line 5
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    new-instance v3, Lcom/google/android/gms/ads/internal/util/client/zzn;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/util/client/zzn;-><init>(IIDZ)V

    move-object v1, v3

    .line 1
    :goto_0
    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzv;-><init>(Lcom/google/android/gms/ads/internal/util/client/zzx;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/util/client/zzx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/client/zzv;->zza:Lcom/google/android/gms/ads/internal/util/client/zzx;

    return-object v0
.end method
